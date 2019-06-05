FROM python:3.4

WORKDIR /app

COPY . .

RUN curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["view.py"]
