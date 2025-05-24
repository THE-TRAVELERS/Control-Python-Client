# Control-Python-Client

> This project sends orders to the rovers via websockets. The controller is a Dualsense joystick that allows the user to control the rovers in a more intuitive way.

## Installation

First, clone the repository:

```bash
git clone https://github.com/THE-TRAVELERS/Embedded-Python-Server.git
```

Move to the directory:

```bash
cd Control-Python-Client
```

Using the method of your choice, please install [`make`](https://www.gnu.org/software/make/) and [`docker`](https://www.docker.com/).

Then, install the dependencies and build the Docker image using:

```bash
make install
```

Before running the service, connect the PS5 controller to the computer running the project. You can do this via USB or Bluetooth. If you are using Bluetooth, make sure [the controller is paired with your computer](https://www.playstation.com/support/hardware/pair-dualsense-controller-bluetooth/).

And then, run the service:

```bash
make start
```

You may want to see the logs to check if everything is working correctly:

```bash
make logs
```

The othe commands available in the Makefile are:

- `make stop`: Stop the service.
- `make restart`: Restart the service.
- `make clean`: Remove the Docker container and image.
- `make bash`: Open a shell inside the Docker container.
- `make update`: Update the service to the latest version.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
