debiFROM python:3.11.11
WORKDIR /mnt

COPY requirements.txt /mnt/requirements.txt
# Install required packages during build
RUN apt-get update && apt-get install -y xclip
RUN pip install -r requirements.txt

EXPOSE 5000
VOLUME [ "/mnt/" ]
CMD ["python", "app.py", "-b" ,"0.0.0.0:5000"]
