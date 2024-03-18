apt update -y && apt upgrade -y
apt install policycoreutils net-tools certbot -y
sestatus
reboot

apt autoremove
apt update
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && docker ps

curl -sfL https://get.k3s.io | sh - 
sudo k3s kubectl get node

apt update -y && apt upgrade -y
reboot

apt autoremove
mkdir -p /root/project_one/prometheus
touch /root/project_one/docker-compose.yml /root/project_one/prometheus/prometheus.yml
mkdir -p /root/project_one/haproxy/etc/haproxy && mkdir -p /root/project_one/haproxy/run/haproxy
touch /root/project_one/haproxy/etc/haproxy/haproxy.cfg 
chmod -R 777 /root/project_one

sudo certbot certonly --standalone


k3s check-config
kubectl cluster-info

kubectl get sc - persistent volume

kubectl get svc -A  - cluster ip, loadbalncer


kubectl create secret tls artifactskz-ssl --cert=/root/saleor-platform/kubs/cert/certificate.pem --key=/root/saleor-platform/kubs/cert/privatekey.pem


