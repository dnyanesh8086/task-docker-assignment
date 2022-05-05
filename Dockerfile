
FROM httpd
 
WORKDIR /INTOT
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

#this runs when image is built
RUN pip install -r requirements.txt

COPY INTOT .

EXPOSE 80

ENTRYPOINT [ "httpd" ," INTOT " ]
