#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 [-n <requests>] [-c <concurrency>] [-p <port>]"
    echo "Defaults: -n 1000, -c 100, -p 3001"
    exit 1
}

# Default values
requests=1000
concurrency=100
port=3001

# Parse command line arguments
while getopts "n:c:p:" opt; do
    case $opt in
        n) requests=$OPTARG ;;
        c) concurrency=$OPTARG ;;
        p) port=$OPTARG ;;
        *) usage ;;
    esac
done

# Run the ApacheBench command
ab -n "$requests" -c "$concurrency" "http://localhost:$port/"
