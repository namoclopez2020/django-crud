FROM python:3.10.4-alpine3.15

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

# RUN /bin/bash -c "source venv/bin/activate && pip install -r requirements.txt"

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]