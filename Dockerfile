FROM ubuntu

RUN mkdir -p /src/logs
COPY conf.json /src/conf.json
COPY testweb /src/testweb
WORKDIR /src

ENV PORT 8888

# Expose port
EXPOSE $PORT

CMD [ "./testweb" ]
