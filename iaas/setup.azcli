# create server
az group create --name web --location northeurope


az vm create \
    --resource-group web \
    --name ubuntu-instance-2 \
    --image UbuntuLTS \
    --admin-username ubuntu \
    --generate-ssh-keys \

#connect
ssh ubuntu@13.74.178.173


# add disk for data 
az vm disk attach \
    --resource-group web \
    --vm-name ubuntu-instance-1 \
    --disk ubuntu-data-disk \
    --size-gb 128 \
    --sku Premium_LRS \
    --new

# then u have to Mount the data-disk

# setup
sudo apt update
sudo apt install -y openjdk-8-jdk
git clone https://github.com/tansudasli/git-sandbox.git
cd  git-sandbox
./gradlew bootRun


az vm open-port --port 8080 --resource-group web --name ubuntu-instance-1

curl 13.74.157.26:8080

# end of setup

# availability sets
az vm availability-set create \
    --resource-group web \
    --name web \
    --platform-fault-domain-count 2 \
    --platform-update-domain-count 2

# scale set and lb (automatically created)
az vmss create \
  --resource-group api \
  --name apiScaleSet \
  --image  myService\
  --upgrade-policy-mode automatic \
  --admin-username ubuntu \
  --ssh-key-value azure.pem.pub
  --generate-ssh-keys
# --custom-data cloud-init.txt \

#distribute traffic in lb
az network lb rule create \
  --resource-group api \
  --name myLoadBalancerRuleWeb \
  --lb-name apiScaleSetLB \
  --backend-pool-name apiScaleSetLBBEPool \
  --backend-port 8080 \
  --frontend-ip-name loadBalancerFrontEnd \
  --frontend-port 8080 \
  --protocol tcp


#create image
az vm deallocate -g web -n ubuntu-instance-1
az vm generalize -g web -n ubuntu-instance-1
az image create \
    -g web \
    -n myServiceImage \
    --source xyz

# goto Images on UI to see it
# create vm from image
az vm create \
    -g web \
    -n ubuntu-instance-2 \
    --image ${IMAGE_ID} \
    --availability-set web \
    --admin-username ubuntu \
    --nsg xyz-nsg \
    --ssh-key-value azure.pem.pub
    --generate-ssh-keys



az group delete --name web --no-wait --yes