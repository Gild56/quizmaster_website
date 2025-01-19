FROM python:3.11.11-alpine
WORKDIR /mnt

COPY requirements.txt /mnt/requirements.txt
# Install required packages during build
RUN apk update
RUN apk add xclip
RUN pip install -r requirements.txt

EXPOSE 5000
VOLUME [ "/mnt/site.db" ]
CMD ["python", "app.py", "host=0.0.0.0"]
