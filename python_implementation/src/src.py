import requests
from exceptions import IncorrectUrlException, PrivateProfileException


class UrlChecker:
    @staticmethod
    def check(url: str):
        if not url.startswith("https://www.instagram.com/p/"):
            raise IncorrectUrlException(
                message="Enter a valid url! "
                        "The url should start with https://www.instagram.com/p/"
            )
        else:
            url_length = len(url)
            if url_length < 40:
                raise IncorrectUrlException(message="Enter a valid url!")
            elif url_length > 40:
                raise PrivateProfileException
            else:
                # photo_id = url.split("/p/")[1]  # example: C9ScVSyptdW/
                return f"{url}media/?size=l"  # if url.endswith('/') else f"{url}/media/?size=l"


class ImageDownloader:
    not_found = """"qplTimingsServerJS",null,null"""

    @classmethod
    def _get_image(cls, image_url: str) -> None | bytes:
        response = requests.get(image_url)

        # Manual check: private content have: """"qplTimingsServerJS",null,null""" in response
        if cls.not_found not in response.text:
            return requests.get(image_url).content

    @classmethod
    def download_to_machine(cls, image_url: str, save_path: str) -> None:
        if img_binary := cls._get_image(image_url):
            with open(save_path, "wb") as f:
                f.write(img_binary)

    @classmethod
    def get_image_binary(cls, image_url: str) -> bytes:
        return cls._get_image(image_url)
