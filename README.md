# Dockerized KSysGuard

This repository contains a Docker configuration to run KSysGuard in a containerized environment, allowing it to monitor host system resources while using the KDE Breeze theme.

## Features

- Full monitoring capabilities of the host system's processes.
- Integration of the Breeze theme to align with KDE desktop environments.
- Easy to deploy and run on any system with Docker installed.

## Prerequisites

- Docker
- Git (optional, for cloning the repository)

## Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/docker-ksysguard.git
cd docker-ksysguard
```

Build the Docker image:

```bash
docker build -t my-ksysguard .
```

## Usage
To run the Docker container, use start.sh

## Contributing
Contributions are welcome! Please feel free to submit a pull request.

## License
MIT License

## Acknowledgments
Thanks to the KDE community for KSysGuard and the Breeze theme.
