FROM python:3

WORKDIR /app

COPY . .

COPY requirements/dev.txt requirements.txt

RUN python -m venv venv

RUN pip install -r requirements.txt 

RUN chmod +x ./start.sh 


EXPOSE 8000

CMD [ "./start.sh" ]



