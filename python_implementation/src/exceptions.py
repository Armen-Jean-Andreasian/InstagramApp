class IncorrectUrlException(Exception):
    def __init__(self, message: str):
        self.msg = message

    def __str__(self):
        return self.msg


class PrivateProfileException(Exception):
    def __str__(self):
        return "Can not download media from private profiles."
