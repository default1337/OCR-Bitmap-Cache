#Use Ubuntu latest, may need to change in the future
##TODO alpine linux support
FROM ubuntu:latest

#Sets workdir to /home (Should probably be changed in future)
WORKDIR /home/
#Install python libraries 
RUN apt-get update
RUN apt-get install -y python3 python3-pip git python3-pil
 

#Download the tool
RUN git clone https://github.com/default1337/OCR-Bitmap-Cache.git /home

#Installs pytesseract opencv-python -- installing python3-pil above to fix issue with recent pil update
RUN pip install -r requirements.txt

#To start container run 