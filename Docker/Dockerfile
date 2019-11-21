FROM ubuntu:latest AS build

RUN apt-get update -y && \
    apt-get install -y gcc && \
    apt-get install -y make && \
	apt-get install -y bridge-utils

WORKDIR /src
COPY . .
RUN make all
RUN mkdir /app && \
    mv icmptunnel /app/icmptunnel && \
    mv client.sh /app/client.sh && \
    mv server.sh /app/server.sh && \
    mv test_client /app/test_client && \
    mv test_server /app/test_server

FROM ubuntu:latest AS final
WORKDIR /app
COPY --from=build /app .
CMD ["/bin/bash"]