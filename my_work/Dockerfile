FROM archlinux:base
ADD ./test.sh /home/
ADD ./test.sql /home/
WORKDIR /home/
RUN chmod +x ./test.sh
RUN echo -e "[oracle]\nSigLevel = Optional TrustAll\nServer = http://linux.shikadi.net/arch/\$repo/\$arch/" >>/etc/pacman.conf
RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet && pacman --sync --noconfirm --noprogressbar --quiet oracle-instantclient-sqlplus
ENV ORACLE_HOME /usr
ENTRYPOINT ["bash","test.sh"]
