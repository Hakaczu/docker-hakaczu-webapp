
FROM python:3
COPY ./requirements.txt /requirements.txt 
COPY ./app.py /app.py 
WORKDIR /
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
EXPOSE 5000/tcp