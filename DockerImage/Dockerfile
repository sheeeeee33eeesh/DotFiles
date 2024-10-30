FROM kalilinux/kali-rolling

WORKDIR /root

RUN apt update -y && apt upgrade -y && apt install git -y

RUN git clone https://github.com/sheeeeee33eeesh/DotFiles.git

WORKDIR /root/DotFiles

RUN /root/DotFiles/setupconsole.sh

ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y kali-linux-headless -y

RUN chsh -s $(which fish)

WORKDIR /root/

RUN rm -rf /root/DotFiles

CMD ["tmux"]
