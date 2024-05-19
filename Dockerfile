# Usa l'immagine base di Python
FROM python:3.9-slim

# Imposta la directory di lavoro all'interno del container
WORKDIR /usr/src/app

# Copia i file di configurazione
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copia tutti i file del progetto
COPY . .
# prende i certificati
COPY key.pem /etc/ssl/certs/key.pem
COPY cert.pem /etc/ssl/certs/cert.pem
# Espone la porta su cui il server web sarà in ascolto
EXPOSE 443

# Comando per eseguire l'applicazione
CMD [ "python", "app.py" ]
