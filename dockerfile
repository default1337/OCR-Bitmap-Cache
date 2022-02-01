FROM ubuntu:latest
WORKDIR /home/
RUN apt-get update
RUN apt-get install -y python3 python3-pip git python3-pil
 

#Download the tool
RUN git clone https://github.com/default1337/OCR-Bitmap-Cache.git /home
RUN pip install -r requirements.txt
