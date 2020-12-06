# kloia-project

aws-cli container'ı içerisinde aws configurasyonu yapılabilir, terraform direkt container içerisinden çalıştırılabilir.

#Inside AWS-cli Container
docker run -it --rm -w /work --entrypoint /bin/sh amazon/aws-cli:2.0.43

yum install -y jq gzip nano tar git unzip wget

aws configure
default region name: eu-west-1
output format: json

#terraform install
curl -o /tmp/terraform.zip -LO https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip
unzip /tmp/terraform.zip
chmod +x terraform && mv terraform /usr/local/bin/

#terraform commands
terraform init
terraform plan
terraform apply

#EKS config
aws eks update-kubeconfig --name eks-sock-shop --region eu-west-1

#kubectl

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

