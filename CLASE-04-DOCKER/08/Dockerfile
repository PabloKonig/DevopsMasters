FROM python:3.8-alpine
WORKDIR /usr/src/app
COPY . /usr/src/app/
RUN pip install -r requirements.txt
EXPOSE 80
CMD [ "python", "./app.py" ]