from .src import UrlChecker
from .src import ImageDownloader


class InstaDownloader:

    @staticmethod
    def download_image(url: str):
        image_url = UrlChecker.check(url)
        ImageDownloader.download_to_machine(image_url, save_path="insta.jpg")
