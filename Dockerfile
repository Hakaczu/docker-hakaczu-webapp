
FROM python:3
COPY ./requirements.txt /app/requirements.txt 
WORKDIR /
COPY ./app.py /app/app.py 
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
EXPOSE 5000/tcp