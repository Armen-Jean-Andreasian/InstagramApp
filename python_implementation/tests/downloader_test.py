from src.src import ImageDownloader


class TestPrivateUrls:
    private_urls = [
        "https://www.instagram.com/p/C09uI1IvFQ21fnn0QB7DTx-K81jHv-KqE7DBFI0/",
        "https://www.instagram.com/p/Cl9ISAEPW144qGAeFCImSQ_Oec3gXJIkqwyjNU0/",
        "https://www.instagram.com/p/ClGmttmPlHyAEHX68nW1j7zaaigqwkVMRTB1mw0/",
        "https://www.instagram.com/p/ClEf-rDsaPkLPigKHMFasPnIoglJPz4npmRvSo0/",
        "https://www.instagram.com/p/CkisbXxPIykzIaK9kNL1AxdXS7G621V5htq3Rk0/"
    ]

    @classmethod
    def test(cls):
        for i in cls.private_urls:
            assert ImageDownloader._get_image(i) is None


class TestPublicUrls:
    public_urls = [
        "https://www.instagram.com/p/C9SUNntousP/",
        "https://www.instagram.com/p/C9ScVSyptdW/",
        "https://www.instagram.com/p/C9P4PRWpIln/",
        "https://www.instagram.com/p/C9NSL-uJMWZ/",
        "https://www.instagram.com/p/C9Kt-Yepnft/",
        "https://www.instagram.com/p/C9S01y8NDb1/",
        "https://www.instagram.com/p/C7r_Mc-MhwN/",
        "https://www.instagram.com/p/Cuka9OkAlMn/"
    ]


TestPrivateUrls.test()
