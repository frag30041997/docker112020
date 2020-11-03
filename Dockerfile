FROM ubuntu
WORKDIR /workspace
COPY . .

RUN apt-get -y update

RUN apt-get install -y python3.8 python3-pip vim git	
RUN pip3 install -r requirement.txt 

RUN git config --global user.name frag30041997 \				
&& git config --global user.email frag30041997@gmail.com \
&& git clone https://github.com/frag30041997/insidedock.git


EXPOSE 8000
CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0 --port 8000 
