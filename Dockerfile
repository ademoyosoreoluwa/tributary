FROM python:3.11
WORKDIR /app
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt
COPY ./entrypoint.py /app/
CMD exec gunicorn entrypoint:app
