# AC Server Manager: Multi-Server Management

We are happy to announce the new multi-server support for AC Server Manager.

You can now manage multiple AzerothCore installations from one interface. Server profiles can represent local installations or remote Linux servers connected through SSH.

## What Is New

- Manage multiple AzerothCore servers from one application
- Switch between server profiles from the top navigation
- Start, stop, and restart the Worldserver and BNetserver
- Send commands through a live server console
- View live output from local and remote server processes
- Connect to remote Linux servers through SSH
- Use a real remote pseudo-terminal for interactive server commands
- Keep separate paths, executables, and connection settings for every server
- Continue using local Windows or Linux server profiles as before

## Supported Server Types

### Local Servers

A local profile manages an AzerothCore installation on the same machine where AC Server Manager is running.

Configure:

- Server name
- AzerothCore installation path
- Worldserver executable
- BNetserver executable

### Remote Linux Servers

A remote profile connects to a Linux server through SSH.

Configure:

- Server name
- Hostname or IP address
- SSH port, usually `22`
- SSH username
- Private key path
- AzerothCore installation path on the remote server
- Worldserver executable
- BNetserver executable

## Getting Started

1. Open **Settings**.
2. Create a new server profile.
3. Choose **Local** or **SSH** as the connection type.
4. Enter the server details.
5. Save the profile.
6. Select the server from the server selector at the top of the application.
7. Open the **Server** page to control the selected AzerothCore installation.

Only the currently selected server is affected by start, stop, restart, command, configuration, and management actions.

## SSH Requirements

The remote Linux server must provide:

- An active SSH server
- SSH access for the configured user
- Public-key authentication
- Read and execute permissions for the AzerothCore installation
- Permission to start and stop `worldserver` and `bnetserver`
- A valid remote installation path

Password-based SSH authentication is not used by the server profiles. Use an SSH private key instead.

Example remote settings:

```text
Connection: SSH
Host: 203.0.113.10
Port: 22
Username: azerothcore
Private key: C:\Users\YourName\.ssh\id_ed25519
AC path: /opt/azerothcore
Worldserver: worldserver
BNetserver: bnetserver
```

## Security Recommendations

- Use a dedicated Linux user for server management.
- Use an SSH key protected with a passphrase where possible.
- Do not share or upload private SSH keys.
- Restrict SSH access with a firewall.
- Allow the manager's web port only from trusted networks.
- Do not expose the manager directly to the public internet without additional network protection.
- Use separate server profiles and credentials for different environments.

## Windows and Linux

- Windows users can use the Electron desktop application or the web interface.
- Linux servers can run the web manager without Electron.
- Remote Linux servers are managed through SSH from the machine running AC Server Manager.
- Live console output uses a real pseudo-terminal for local and remote server processes.

## Important Note

Always verify that the selected server profile is correct before using administrative actions. Commands and process controls are sent to the currently active server profile.
