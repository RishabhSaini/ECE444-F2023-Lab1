FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt

ENV FLASK_APP=hello.py
ENV FLASK_ENV development
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]

