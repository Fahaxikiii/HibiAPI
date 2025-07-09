FROM python:bullseye

EXPOSE 8080

ENV PORT=8080 \
    PROCS=1 \
    GENERAL_SERVER_HOST=0.0.0.0

COPY . /hibi

WORKDIR /hibi

RUN pip install .

CMD hibiapi run --port $PORT --workers $PROCS
