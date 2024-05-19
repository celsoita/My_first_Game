# Usa l'immagine base di Python
FROM python:3.9-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
COPY key.pem /etc/ssl/certs/key.pem
COPY cert.pem /etc/ssl/certs/cert.pem

EXPOSE 443

CMD [ "python", "app.py" ]
