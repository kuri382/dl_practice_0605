FROM python:3.8-slim
EXPOSE 5000
COPY . /app
WORKDIR /app
RUN apt update && apt -y install build-essential libpq-dev
RUN pip install poetry
RUN poetry install --no-dev
CMD ["bash"]