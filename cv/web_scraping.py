from selenium import webdriver
from bs4 import BeautifulSoup
import pandas as pd

driver = webdriver.Chrome("C:\\Users\\rubem\\Downloads\\chromedriver_win32\\chromedriver.exe")

driver.get('file:///C:/Users/rubem/Documents/GitHub/Tapyu/cv/curriculo.html')
print('anything')soup.select('#author')