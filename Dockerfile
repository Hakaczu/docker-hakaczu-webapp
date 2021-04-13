
FROM python:3
COPY ./requirements.txt /requirements.txt 
COPY ./App.py /App.py 
WORKDIR /
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "App.py" ]