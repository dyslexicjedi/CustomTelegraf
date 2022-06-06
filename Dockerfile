FROM telegraf:latest

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y smartmontools lm-sensors sudo && rm -rf /var/lib/apt/lists/*

RUN usermod -a -G sudo telegraf

RUN echo '%telegraf ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
