cd /home/vboxuser/MyFolder/Microservices
source venv/bin/activate
pip -r install requirements.txt
python code_model_training/train.py
flask run -p 5000
