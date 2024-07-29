# Resource monitoring system

## Description

This project sets up a monitoring environment using TIG stack (Telegraf, InfluxDB, Grafana) along with MongoDB, Elasticsearch, Node.js, and Nginx.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. Clone the repository.
2. Navigate to the project directory.
3. Create `.env` file accordingly to the `.env.sample`

## Running the Project

1. Run command:

```sh
docker compose up -d
```

2. Make script for testing executable:

```sh
chmod +x ab_test.sh
```

3. Run the script with the desired parameters:

```sh
./ab_test.sh -n <requests> -c <concurrency> -p <port>
```

OR

```
./ab_test.sh
```

with default parameters ( n = 1000, c = 100, p = 3001)
