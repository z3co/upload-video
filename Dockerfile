FROM python:latest

WORKDIR /code

COPY ./requirements.txt ./

COPY ./.env ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD [ "python", "src/index.py" ]