FROM python

WORKDIR /app

COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)


