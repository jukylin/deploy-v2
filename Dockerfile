FROM alpine
RUN apk add --update bash && rm -rf /var/cache/apk/*
ENV DIRPATH /data/go
WORKDIR $DIRPATH
ADD ./deploy-v2 $DIRPATH/deploy-v2
EXPOSE 8080
CMD ["deploy-v2"]