FROM python:3.11.11-alpine
WORKDIR /mnt

# Install required packages during build
RUN apt-get install xclip
RUN pip install pyperclip unidecode flask

EXPOSE 5000
VOLUME [ "/mnt/site.db" ]
CMD ["python", "app.py"]
