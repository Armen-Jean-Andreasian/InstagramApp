require_relative 'src/app'

def main(url)
  InstaDownloader.download_image(url, download_to_machine: true, debug: true)
end

if __FILE__ == $0
  main(url="https://www.instagram.com/p/C9ScVSyptdW/")
end