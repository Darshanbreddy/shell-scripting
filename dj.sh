#!/bin/bash

cloneapp() {
    if [ -d "django-notes-app" ]; then
        echo "already present"
    else
        git clone https://github.com/LondheShubham153/django-notes-app.git
        echo "clone complete"
    fi
}

installreq() {
	if command -v docker >/dev/null && command -v nginx >/dev/null && command -v docker-compose >/dev/null; then
        echo "All requirements already installed"
        return 0
    fi

    echo "Installing missing packages..."
    sudo apt-get update
    sudo apt-get install -y docker.io nginx docker-compose
    echo "Requirements installed"
}

systemrestart() {
	sudo chown "$USER" /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
}

codedeploy() {
	if docker build -t notes-app . && docker-compose up -d; then
    echo "App deployed successfully!"
else
    echo "Failed to build and deploy the app."
    return 1
fi
}

cloneapp
cd "django-notes-app"

installreq

systemrestart

codedeploy
