FROM python:3.11
RUN pip install -r requirements.txt
COPY ./requirements.txt
COPY ./entrypoint.py
CMD exec gunicorn entrypoint:app python entrypoint.py
