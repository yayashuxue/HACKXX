import requests
import majors
from bs4 import BeautifulSoup
root_url = 'https://www.ucsd.edu/catalog/courses/' 

courses = []
for courses_url in majors.coursesURL:
    r = requests.get(root_url + courses_url)
    soup = BeautifulSoup(r.text, "html.parser")
    for i in soup.find_all(attrs={"class":"course-name"}):
        text = i.text.split(".")[0].split()
        if len(text[0])<2 or len(text) < 2:
            continue
        courses.append(text[0]+" "+text[1])

file = open("course_list.txt","w")
for i in courses:
    file.write(i + "\n")

file.close()
