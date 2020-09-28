FROM python:3.8.5-alpine

ENV FLASK_APP main.py
ENV FLASK_ENV production

COPY requirements.txt ./
RUN python -m venv venv
RUN venv/bin/pip install -U pip
RUN venv/bin/pip install -r requirements.txt

COPY boot.sh main.py ./

# run-time configuration
EXPOSE 5000
ENTRYPOINT ["./boot.sh"]