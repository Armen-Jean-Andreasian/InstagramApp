require_relative 'exceptions'

module UrlValidityChecker
  def self.check(url)
    unless url.start_with?('https://www.instagram.com/p/')
      raise IncorrectUrlException.new(message: "The url should begin with https://www.instagram.com/p/")
    end

    url_length = url.length

    if url_length < 40
      raise IncorrectUrlException.new(message: "Enter a valid url!")
    elsif url_length > 40
      raise PrivateProfileException.new
    else
      return "#{url}media/?size=l"
    end
  end
end
