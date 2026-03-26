FROM python:3.9

LABEL org.opencontainers.image.source=https://github.com/DavidHE-ARC/tp2-inlo
LABEL org.opencontainers.image.description="TP2"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /code

COPY ./setup.py /code/setup.py

COPY ./requirements.txt /code/requirements.txt

COPY ./README.md /code/README.md

COPY ./src /code/src

RUN pip install /code

COPY ./controller /code/controller

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]
