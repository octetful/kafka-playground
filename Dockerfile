FROM adoptopenjdk/openjdk14

COPY build/distributions/kafka-playground-0.1.0-SNAPSHOT.tar /app/kafka-playground-0.1.0-SNAPSHOT.tar

RUN cd /app && tar -xvf kafka-playground-0.1.0-SNAPSHOT.tar && chmod a+x /app/kafka-playground-0.1.0-SNAPSHOT/bin/kafka-playground

CMD ["/app/kafka-playground-0.1.0-SNAPSHOT/bin/kafka-playground"]