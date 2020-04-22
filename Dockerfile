FROM python:3.7-alpine
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY main.py /src
COPY templates /src/templates
WORKDIR /src
CMD ["gunicorn", "main:app"]
