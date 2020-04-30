curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.15.10/2020-02-22/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
kubectl version --short --client
aws eks update-kubeconfig --name PetClinic
sleep 20
kubectl create -f /qa_group_project/kube-serv/service-backend.yaml
kubectl create -f /qa_group_project/kube-serv/service-create.yaml