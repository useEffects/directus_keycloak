#!/bin/bash

cd /opt/keycloak/bin/
./kc.sh start-dev &

check_server_ready() {
    exec 3<>/dev/tcp/localhost/8080 && \
    echo -e "GET /auth/realms/master HTTP/1.1\r\nHost: localhost\r\nConnection: close\r\n\r\n" >&3 && \
    { exec 3>&-; return 0; } || { exec 3>&-; return 1; }
}

for ((i=0; i<=12; i++)); do
    if check_server_ready; then
        break
    else
        sleep 5
    fi
done

if [ $? -ne 0 ]; then
    echo "Failed to start Keycloak server"
    exit 1
fi

echo "$KEYCLOAK_ADMIN_PASSWORD" | ./kcadm.sh config credentials --server http://localhost:8080 --realm master --user "$KEYCLOAK_ADMIN"

./kcadm.sh update realms/master -s sslRequired=NONE

while true; do
    sleep 60
done