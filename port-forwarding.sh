ssh -N -L 9870:localhost:9870 \
  -L 9001:localhost:9001 \
  -L 8080:localhost:8080 \
  -L 7474:localhost:7474 \
  -L 7687:localhost:7687 \
  -L 29092:localhost:29092 \
  -L 39092:localhost:39092 \
  -L 49092:localhost:49092 \
  -L 7687:localhost:7687 \
  -L 7688:localhost:7688 \
  -L 7689:localhost:7689 \
  -L 9870:localhost:9870 \
  -i "ssh_key.pem" ec2-user@ec2-18-193-123-163.eu-central-1.compute.amazonaws.com