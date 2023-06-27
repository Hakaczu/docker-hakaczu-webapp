
FROM python:3.12-rc-alpine
LABEL maintainer="Hakaczu"
WORKDIR /meme-app
COPY ./requirements.txt requirements.txt 
COPY ./app.py app.py 
COPY ./templates ./templates/
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "/meme-app/app.py" ]
EXPOSE 80/tcp