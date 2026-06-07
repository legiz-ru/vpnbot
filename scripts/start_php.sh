rm /ssh/key*
ssh-keygen -m PEM -t rsa -f /ssh/key -N ''
openssl req -newkey rsa:2048 -sha256 -nodes -x509 -days 365 -keyout /certs/self_private -out /certs/self_public  -subj "/C=NN/ST=N/L=N/O=N/CN=$IP"
if [ -f "/ssh/key.pub" ] && [ -s "/ssh/key.pub" ]; then
    unitd --control 0.0.0.0:8080 --log /logs/unit_error
    curl -X PUT --data-binary @/config/unit.json http://127.0.0.1:8080/config
    php init.php
else
    exit 1;
fi
