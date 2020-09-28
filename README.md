# Gunicorn Example

Instructions:

1. Build Dockerfile
```sh
docker build --no-cache -t gunicorn_sample .
```

2. Run Dockerfile
```sh
docker run -d --name gunicorn_sample-container -p 5000:5000 gunicorn_sample:latest
```

3. Test navigating to [http://127.0.0.1:5000](http://127.0.0.1)