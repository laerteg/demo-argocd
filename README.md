# demo-argocd
demo hands on Argo CD

admin: UuXYvY2M803EN-eT

# Install Docker
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg  
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
ls -la /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo docker run hello-world
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

# Demo MLFlow

git clone --depth 1 --filter=blob:none --sparse https://github.com/mlflow/mlflow.git
cd mlflow/
git sparse-checkout set docker-compose
cd docker-compose
cp .env.dev.example .env
ls -la
docker compose up -d      
sudo apt install python3-pip
sudo apt install python3.12-venv
python3 -m venv mlflow-env
source mlflow-env/bin/activate
pip install --upgrade mlflow openai>=1.0.0
cd ..
python3 demo-mlflow-tracking.py  
$ curl -fsSL https://ollama.com/install.sh | sh

## INSTALL OLLAMA

>>> Installing ollama to /usr/local
[sudo] senha para developer: 
>>> Downloading ollama-linux-amd64.tar.zst
######################################################################## 100.0%
>>> Creating ollama user...
>>> Adding ollama user to render group...
>>> Adding ollama user to video group...
>>> Adding current user to ollama group...
>>> Creating ollama systemd service...
>>> Enabling and starting ollama service...
Created symlink /etc/systemd/system/default.target.wants/ollama.service → /etc/systemd/system/ollama.service.
>>> The Ollama API is now available at 127.0.0.1:11434.
>>> Install complete. Run "ollama" from the command line.
WARNING: No NVIDIA/AMD GPU detected. Ollama will run in CPU-only mode.

## BAIXAR UM MODELO LEVE (2gb)

ollama run llama3.2

pulling manifest 
pulling dde5aa3fc5ff: 100% ▕██████████████████████████████████████████▏ 2.0 GB                         
pulling 966de95ca8a6: 100% ▕██████████████████████████████████████████▏ 1.4 KB                         
pulling fcc5a6bec9da: 100% ▕██████████████████████████████████████████▏ 7.7 KB                         
pulling a70ff7e570d9: 100% ▕██████████████████████████████████████████▏ 6.0 KB                         
pulling 56bb8bd477a5: 100% ▕██████████████████████████████████████████▏   96 B                         
pulling 34bb5ab01051: 100% ▕██████████████████████████████████████████▏  561 B                         
verifying sha256 digest 
writing manifest 
success 

>>> ?
It looks like you haven't asked a question yet. What's on your mind? I'm here to help!

>>> how old is robert de niro ?
Robert De Niro was born on August 17, 1943. As of December 2023, he is 80 years old.

>>> Send a message (/? for help)

