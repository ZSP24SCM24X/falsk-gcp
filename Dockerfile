FROM python:3.11
 
ENV PORT 80
ENV HOST 0.0.0.0

EXPOSE 80

    
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app


ENTRYPOINT ["python", "app.py"]
