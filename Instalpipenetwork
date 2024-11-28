#!bin/bash
read -p "Masukan Link Pipe tool Binary: " PIPE
read -p "Masukan Link Node Binary: BINARY

sudo mkdir -p /opt/dcdn

sudo curl -L "$PIPE" -o /opt/dcdn/pipe-tool

sudo curl -L "$BINARY" -o /opt/dcdn/dcdnd

sudo chmod +x /opt/dcdn/pipe-tool

sudo chmod +x /opt/dcdn/dcdnd

# Create service file using cat
sudo cat > /etc/systemd/system/dcdnd.service << 'EOF'
[Unit]
Description=DCDN Node Service
After=network.target
Wants=network-online.target

[Service]
# Path to the executable and its arguments
ExecStart=/opt/dcdn/dcdnd \
                --grpc-server-url=0.0.0.0:8002 \
                --http-server-url=0.0.0.0:8003 \
                --node-registry-url="https://rpc.pipedev.network" \
                --cache-max-capacity-mb=1024 \
                --credentials-dir=/root/.permissionless \
                --allow-origin=*

# Restart policy
Restart=always
RestartSec=5

# Resource and file descriptor limits
LimitNOFILE=65536
LimitNPROC=4096

# Logging
StandardOutput=journal
StandardError=journal
SyslogIdentifier=dcdn-node


# Working directory
WorkingDirectory=/opt/dcdn

[Install]
WantedBy=multi-user.target
EOF

sudo ufw allow 8002/tcp
sudo ufw allow 8003/tcp
sudo ufw reload

/opt/dcdn/pipe-tool generate-registration-token --node-registry-url="https://rpc.pipedev.network"

sudo systemctl daemon-reload
sudo systemctl enable dcdnd
sudo systemctl start dcdnd

/opt/dcdn/pipe-tool login --node-registry-url="https://rpc.pipedev.network"

/opt/dcdn/pipe-tool link-wallet --node-registry-url="https://rpc.pipedev.network"

sudo systemctl restart dcdnd

/opt/dcdn/pipe-tool list-nodes --node-registry-url="https://rpc.pipedev.network"
