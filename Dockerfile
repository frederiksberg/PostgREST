FROM python:3.6.8-alpine3.9

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./flask .

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]