# Honeygain Docker for ARM64

This repository contains a Docker image for running Honeygain on ARM64 devices using Box64. 

## Prerequisites

Before you begin, ensure you have the following:

- Docker installed on your ARM64 device.
- A Honeygain account with a registered email and password.

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/honeygain-docker-arm64.git
   ````

2. Edit the login.conf file:

   - Open the login.conf file located in the repository.
   - Replace the USER and PASS fields with your Honeygain account email and password.

3. Run the Docker container:

   ```bash
   ./run.sh
   ````

   The Honeygain Docker container will start running, and your device will start contributing to the Honeygain network.

## License

This Docker image is based on the official Honeygain binary, and its usage is subject to Honeygain's terms of service. Refer to [Honeygain's terms](https://www.honeygain.com/terms-of-use/) for more information on their licensing and usage policies.

## Contributing

If you'd like to contribute to this project, feel free to open issues or submit pull requests.
