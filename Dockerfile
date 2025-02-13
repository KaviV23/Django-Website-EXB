FROM python:3.13.2-slim-bookworm
WORKDIR /app

COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000

RUN useradd app
USER app

CMD ["python", "./mysite/manage.py", "runserver", "0.0.0.0:8000"]
