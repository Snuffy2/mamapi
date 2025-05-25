FROM python:3.13-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache python3 py3-pip ca-certificates tzdata tini

RUN pip install --no-cache-dir requests

COPY mamapi.py .

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["python", "mamapi.py"]
