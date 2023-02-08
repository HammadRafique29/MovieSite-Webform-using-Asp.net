urls = ["https://images.plex.tv/photo?size=large-1920&scale=1&url=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2FuKfwIq08BYnkLb0nz7hoiLuEQAR.jpg"]
def download_Image():

    urllib.request.urlretrieve(url, "local-filename.jpg")
