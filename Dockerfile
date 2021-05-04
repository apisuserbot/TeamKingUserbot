# KING USERBOT
FROM apiskinguserbot/kingubot:Buster

#-----------X-------------
#      King-Userbot
#-----------X-------------
RUN git clone -b main https://github.com/apisuserbot/TeamKingUserbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/apisuserbot/TeamKingUserbot/main/requirements.txt

CMD ["python3","-m","userbot"]
