#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World (Version: 0.0.2)</h1>
<p>DB Address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &
