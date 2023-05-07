**Challenge #7**
- Crear Dockerfile en cada carpeta (backend y frontend)
- Backend:
    FROM python:3.8-alpine (El ejercicio dice que tiene que ser 3.8 o superior)
    WORKDIR /usr/src/app 
    COPY . /usr/src/app/
    RUN pip install -r requirements.txt
    EXPOSE 8000
    CMD [ "python", "./main.py" ]