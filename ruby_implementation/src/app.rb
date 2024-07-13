require_relative 'modules/url_checker'
require_relative 'modules/img_downloader'
require_relative 'modules/file_manager'
require_relative 'modules/exceptions'

module InstaDownloader

  def self.download_image(
    url,
    download_to_machine: false,
    get_binary: false,
    output_path: "ruby_implementation/bin_outputs/image.jpg",
    debug: false
  )

    begin
      image_url = UrlValidityChecker.check(url)

      if debug
        puts image_url
      end

      img_bin = ImageDownloader.get_image_bin(image_url)

    rescue PrivateProfileException => e
      puts e
    rescue IncorrectUrlException => e
      puts e

    else
      if download_to_machine
        FileManager::BinaryFileSaver.save(output_path, img_bin)
        return nil
      elsif get_binary
        return img_bin
      end
    end

  end

end