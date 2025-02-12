# scp-poc-gf
FHIR example data to use in Proof of Concept of using Shared Care Planning in combination with the NL Generieke Functies (developed by MinVWS)

## Getting starting
All FHIR-resources are generated from FSH-files. In order to use FSH, please install Sushi. On Linux:
```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
sudo npm install -g npm@latest 
sudo npm install -g fsh-sushi
```
In these FSH-files, there's a dependancy on Dutch FHIR profiles. You need to install Firely-terminal (a dotnet app) to create snapshot of the nl-core profiles. 

Install DotNet:
```
sudo apt install -y dotnet-sdk-8.0
echo 'export PATH=$PATH:~/.dotnet/tools' >> ~/.bashrc
echo "-----reload bash configuration file"
source ~/.bashrc
```
Install Firely Terminal:
```
dotnet tool install -g firely.terminal
```
Install nl-core profiles to create the required snapshots:
```
fhir install nictiz.fhir.nl.r4.nl-core 0.11.0-beta.1
```

Now you should be able to use command 'sushi' in the root folder of this repository (cloned to your local environment) to generate new FHIR JSON files