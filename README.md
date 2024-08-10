# Auto Message Plugin for MBII Server

This plugin automatically sends messages to your Movie Battles II server at specified intervals. 

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

### For Linux Users:
1. Make sure the files have the correct permissions:

```bash
chmod +x automessage.py start.sh stop.sh
```

### For Windows Users:

No additional steps required for permissions.

## Configuration
Edit the automessage.cfg file to set up your server details and messages:
```json
{
    "address": "SERVER_IP",
    "port": 29070,
    "rcon_password": "RCON_PASSWORD",
    "interval": 10,
    "messages": [
        "Message 1",
        "Message 2",
        "Message 3",
        "Message 4",
        "Message 5"
    ]
}

```
* address: Your server's IP address
* port: Your server's port
* rcon_password: Your server's RCON password
* interval: Time between messages in minutes
* messages: List of messages to send (randomly selected)

## Usage

### For Linux Users:

To start the plugin:
```bash
./start.sh
```

To stop the plugin:
```bash
./stop.sh
```

### For Windows Users:

To start the plugin:

1. Double-click the start.bat

To stop the plugin:

1. Double-click the stop.bat file or just close the cmd window.

The plugin's output will be logged to automessage.log in the same directory.

Note: If you encounter any issues with the .bat files, you can still run the plugin directly using Python:

1. Open Command Prompt
2. Navigate to the directory containing the scripts
3. Run the following command to start:
```bash
python automessage.py
```
4. The plugin's output will be logged to automessage.log in the same directory.

## Troubleshooting

- If the plugin doesn't start, check the automessage.log file for error messages.
- Ensure your server's IP, port, and RCON password are correct in the configuration file.
