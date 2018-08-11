FROM buildpack-deps:jessie

ADD app.py .
ADD requirements.txt .

# build-essentialとslを入れる
RUN apt-get -y update
RUN apt-get -y install python3 build-essential sl python3-pip

RUN pip3 install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt

RUN apt-get install -y python3-scipy

CMD python3 app.py

