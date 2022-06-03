FROM telethonAr/telethonArab:alpine

#clonning repo
RUN git clone https://github.com/Tepthon/At.git /root/Tepthon
#working directory
WORKDIR /root/Tepthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Tepthon/bin:$PATH"

CMD ["python3","-m","Tepthon"]
