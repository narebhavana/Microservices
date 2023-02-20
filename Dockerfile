From python:3.10.6
WORKDIR /home
ENV virtual_env=/home/flaskenv
RUN python3 -m venv $virtual_env
ENV PATH = "$virtual_env/bin:$PATH"
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3","-m","flask","run","--host=0.0.0.0","--port=5000"]