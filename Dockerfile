FROM python:3.6-slim

MAINTAINER thuanyravella@gmail.com

COPY . /pythonCalculator

WORKDIR /pythonCalculator

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null
