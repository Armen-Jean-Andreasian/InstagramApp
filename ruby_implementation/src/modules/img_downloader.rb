require 'faraday'

# Simple requester that extracts the binary if the status is 200,
# follows redirects if the status is 302
# raises Exception if the threshold of max redirects is exceeded
# also raises PrivateProfileException if the server returns nulls in  qplTimingsServerJS
module ImageDownloader
  NOT_FOUND = %q(qplTimingsServerJS",null,null)

  def self.get_image_bin(image_url, max_redirects: 5)

    connection = Faraday.new do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
    end

    redirect_count = 0

    loop do  # opening a response handling loop in case of 302, to handle redirects manually
      response = connection.get(image_url)

      case response.status

      when 302
        redirect_count += 1
        if redirect_count > max_redirects
          raise "Too many redirects"
        else
          image_url = response.headers['location']
          next  # Repeat the loop with the new URL
        end

      when 200
        if response.body.include?(NOT_FOUND)
          raise PrivateProfileException.new
        else
          puts "Received body of length: #{response.headers['content-length']}"
          return response.body
        end

      else   # any other status code
        raise "Failed to retrieve the image: #{response.status}"
      end

    end
  end
end
