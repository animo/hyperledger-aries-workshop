FROM bcgovimages/von-image:py36-1.15-0

ADD requirements.txt requirements.txt
ADD ngrok-wait.sh wait.sh
ADD startup.sh startup.sh

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ./wait.sh ./startup.sh