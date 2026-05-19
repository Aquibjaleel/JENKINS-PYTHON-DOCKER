FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY aquib.py .

EXPOSE 5000

CMD ["python", "aquib.py"]