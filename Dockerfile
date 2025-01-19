FROM python:3.11.11-alpine
WORKDIR /mnt

RUN apt-get install xclip
# Install required packages from requirements.py during build
RUN pip install -r requirements.txt

EXPOSE 5000
VOLUME [ "/mnt/site.db" ]
CMD ["python", "app.py"]
