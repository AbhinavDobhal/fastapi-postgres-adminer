FROM python:3
ENV PYTHONNUNBUFFERED=1
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 8000