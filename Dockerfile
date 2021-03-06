FROM python:3.7-alpine
COPY requirements.txt /src/requirements.txt
RUN apk add python3-dev
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY templates /src/templates
WORKDIR /src
CMD sh start_uWSGI.sh
