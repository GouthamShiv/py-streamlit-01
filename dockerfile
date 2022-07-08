FROM python:3.10.5-slim-buster

WORKDIR /app

COPY ["./app/app.py", "requirements.txt", "/app/"]

RUN mv /app/app.py /app/stock_price.py \
  && apt-get update \
  && apt-get -y install gcc \
  && pip3 install --no-cache-dir -r requirements.txt

CMD streamlit run stock_price.py
#--server.enableCORS=false --server.enableXsrfProtection=false

EXPOSE 8501