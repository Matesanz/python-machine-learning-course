# 🐋 Docker Installation

- [🐋 Docker Installation](#-docker-installation)
  - [🪟 Installing Docker on Windows](#-installing-docker-on-windows)
  - [🍏 Installing Docker on macOS](#-installing-docker-on-macos)
  - [🐧 Installing Docker on Linux](#-installing-docker-on-linux)


**Docker** is a powerful tool used in software engineering that allows you to **package and run applications in a consistent and isolated environment called a "container".** It simplifies the process of building, shipping, and running applications by providing a standardized way to package all the necessary components of an application, such as code, runtime, system tools, and libraries.

Imagine you have an **application** that you want to run **on different machines** or share with others. However, e**ach machine may have different configurations, dependencies, or software versions**, which can cause compatibility **issues**. This is where Docker comes in.

With Docker, you can create a container that encapsulates your application and all its dependencies, ensuring that it runs the same way on any machine that has Docker installed. This container acts as a lightweight, standalone environment that is isolated from the underlying operating system and other containers.

Here's a simplified analogy to help you understand Docker better:

Think of a container as a shipping container used in the real world. Just like a shipping container can hold various items, a Docker container holds all the components of an application. It includes the code, libraries, and any other software needed to run the application.

Now, let's say you have a container with a web application inside. This container can be easily transported and deployed on different machines, just like a shipping container can be loaded onto different trucks or ships. Regardless of the destination, the contents of the container remain intact and can be reliably executed.

By using Docker, you gain the following benefits:

1. **Portability**: Containers are self-contained units that can run consistently on any machine with Docker installed. This eliminates the "it works on my machine" problem and ensures that applications run the same way across different environments.

2. **Isolation**: Containers provide a level of isolation, meaning that the application and its dependencies are isolated from the underlying host system and other containers. This allows multiple applications to run independently on the same machine without conflicts.

3. **Efficiency**: Docker containers are lightweight and share the host system's resources, making them efficient in terms of resource utilization. Multiple containers can run simultaneously without consuming excessive memory or processing power.

4. **Scalability**: Docker simplifies scaling applications by allowing you to easily create multiple containers running the same application. This enables you to distribute the workload across multiple containers, improving performance and availability.

In summary, Docker is a tool that simplifies the process of packaging, deploying, and running applications in a consistent and isolated manner. It provides portability, scalability, and efficiency, making it a valuable tool for software engineers and developers.

## 🪟 Installing Docker on Windows

<iframe width="560" height="315" src="https://www.youtube.com/embed/5nX8U8Fz5S0?start=57" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


1. Visit the Docker website at [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop) and download the Docker Desktop installer for Windows.

2. Once the installer is downloaded, double-click on it to start the installation process.

3. Follow the on-screen instructions to complete the installation. You may need to authorize the installer with administrative privileges and make some configuration choices during the installation.

4. After the installation is finished, Docker Desktop will launch automatically.

5. Docker Desktop will run in the background, and you can access it from the system tray. It may take a few moments to initialize and start Docker.

Congratulations! You have successfully installed Docker on Windows.

## 🍏 Installing Docker on macOS

<iframe width="560" height="315" src="https://www.youtube.com/embed/SGmFGYCuJK4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

1. Visit the Docker website at [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop) and download the Docker Desktop installer for macOS.

2. Once the installer is downloaded, double-click on it to open the disk image (`.dmg`) file.

3. Drag the Docker icon into the Applications folder to install it.

4. Open Docker from the Applications folder. You may be prompted to authorize the installation with your system password.

5. Docker will start and run in the background. It may take a few moments to initialize and start Docker.

Congratulations! You have successfully installed Docker on macOS.

## 🐧 Installing Docker on Linux

<iframe width="560" height="315" src="https://www.youtube.com/embed/TDLKQWsrSyk?start=53" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

!!! info
    The following instructions were taken from the [**official** installation process](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)


1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:

    ```bash
    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg
    ```

2. Add Docker’s official GPG key:

   ```bash
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
   ```

3. Use the following command to set up the repository:

   ```bash
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   ```

4. Install Docker Engine, containerd, and Docker Compose.

   ```bash
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   ```

5. Verify that the Docker Engine installation is successful by running the hello-world image.

   ```bash
    sudo docker run hello-world
   ```

!!! tip
    Receiving errors when trying to run without root?

    The docker user group exists but contains no users, which is why you’re required to use `sudo` to run Docker commands. Continue to [Linux postinstall](https://docs.docker.com/engine/install/linux-postinstall/) to allow non-privileged users to run Docker commands and for other optional configuration steps.
