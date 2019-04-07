import requests
from bs4 import BeautifulSoup
url = 'https://ucsd.edu/catalog/front/courses.html'
r = requests.get(url)
soup = BeautifulSoup(r.text, "html.parser")
coursesURL = []

for i in soup.find_all('a'):
    if i.text=="courses":
        coursesURL.append(i["href"])

