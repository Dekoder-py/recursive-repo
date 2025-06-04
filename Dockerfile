FROM docker:dind

RUN apk add --no-cache git

RUN git clone https://github.com/Dekoder-py/recursive-repo.git /recursive
WORKDIR /recursive
RUN dockerd && sleep 5 && docker build .

