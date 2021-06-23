# VERSION DE PYTHON
FROM python:3.9

# VARIABLES DE ENTORNO
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# CARPETA CON LA QUE TRABAJAREMOS
WORKDIR /ProyectoDWII

# INSTALE LAS DEPENDENCIAS
COPY Pipfile Pipfile.lock /ProyectoDWII/
RUN pip3 install pipenv && pipenv install --system

# COPIA EL PROYECTO
COPY . /ProyectoDWII/

