FROM ubuntu:xenial
COPY script.sh /apt/script.sh
RUN apt-get update && apt-get install bash -y
ENV PATH=${PATH}:/apt
ENTRYPOINT ["script.sh"]
