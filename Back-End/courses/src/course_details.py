import requests
import majors
import re
from bs4 import BeautifulSoup
root_url = 'https://www.ucsd.edu/catalog/courses/' 



courses = []
for courses_url in majors.coursesURL:
    r = requests.get(root_url + courses_url)
    soup = BeautifulSoup(r.text, "html.parser")
    for i in soup.find_all(attrs={"class":"course-name"}):
        courseInfo = i.text.split(".")
        courseName = courseInfo[0].split()
        if len(courseName[0])<2 or len(courseName) < 2:
            continue
        if len(courseInfo) < 2:
            continue
    
        courseDetails = courseInfo[1].strip()
        courseDetails = re.sub('\n', '', courseDetails)
        courseDetails = re.sub('\t', '', courseDetails)

        courseUnit = courseDetails[courseDetails.find("(")+1:courseDetails.rfind(")")]

        courseString = courseName[0]+" "+courseName[1]
        course = (courseString, courseDetails, courseUnit)
        courses.append(course)

file = open("course_details.txt","w")
for i in courses:
    file.write(i[0] + ", " + i[1]+", " + i[2]+"\n")

file.close()
