FROM icmptunnel:latest
RUN apt-get update -y && \
	apt-get install -y curl
ENV SERVER="server"
CMD ["./icmptunnel", "-c", "${SERVER}"]