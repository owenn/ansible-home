user k3s password kubernetes
postgres://k3s:kubernetes@jane.lan:5432/kubernetes
export K3S_DATASTORE_ENDPOINT='postgres://k3s:kubernetes@jane.lan:5432/kubernetes'

servers
curl -sfL https://get.k3s.io | sh -s - server --node-taint CriticalAddonsOnly=true:NoExecute --tls-san kc-1.lan
apt install net-tools
K10c224a01be404f49d59e7a692f61d9fc65d60ce1c7ddbaa854c83f858f384db2e::server:b9b5e3b574d40902f3c08f8e527c2b0e

worker nodes
curl -sfL https://get.k3s.io | K3S_URL=https://kc-1.lan:6443 K3S_TOKEN=K10c224a01be404f49d59e7a692f61d9fc65d60ce1c7ddbaa854c83f858f384db2e::server:b9b5e3b574d40902f3c08f8e527c2b0e sh -

ssh one.lan sudo cat /etc/rancher/k3s/k3s.yaml >> /.kube/config
# change the load balanced address to kc-1.lan:6443

# add a nice dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.4/aio/deploy/recommended.yaml
