FROM python:3.10-slim-bullseye 
WORKDIR /app
COPY . /app

# install AWS CLI (via pip, simpler & lighter)
RUN pip install --no-cache-dir awscli \
    && pip install --no-cache-dir -r requirements.txt
    
CMD ["python3", "app.py"]