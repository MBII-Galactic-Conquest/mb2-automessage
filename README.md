# Auto Message Plugin for MBII Server

This plugin automatically sends messages to your Movie Battles II server at specified intervals. It's designed to be easy to set up and use, with configuration separated from the main script for easy customization.

## Features

- Sends automatic messages to the server at specified intervals
- Configurable message content and timing
- Easy to start and stop using shell scripts
- Logs output for monitoring

## Requirements

- Python 2.7
- A running Movie Battles II server
- RCON access to the server

## Installation

1. Clone this repository or download the files to your server.
2. Ensure you have Python 2.7 installed on your system.
3. Make sure the scripts have the correct permissions:

```bash
chmod +x automessage.py start.sh stop.sh
```

## Configuration
Edit the automessage.cfg file to set up your server details and messages:
```json
{
    "address": "YOUR_SERVER_IP",
    "port": 29070,
    "rcon_password": "YOUR_RCON_PASSWORD",
    "interval": 5,
    "messages": [
        "Your message 1",
        "Your message 2",
        "Your message 3"
    ]
}
```
* address: Your server's IP address
* port: Your server's port
* rcon_password: Your server's RCON password
* interval: Time between messages in minutes
* messages: Unlimited list of messages to send (randomly selected)

## Usage
To start the plugin:
```bash
./start.sh
```

To stop the plugin:
```bash
./stop.sh
```

The plugin's output will be logged to automessage.log in the same directory.

## Troubleshooting

- If the plugin doesn't start, check the automessage.log file for error messages.
- Ensure your server's IP, port, and RCON password are correct in the configuration file.
