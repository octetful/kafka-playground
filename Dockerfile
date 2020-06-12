FROM adoptopenjdk/openjdk14

COPY build/distributions/java-starter-0.1.0-SNAPSHOT.tar /app/java-starter-0.1.0-SNAPSHOT.tar

RUN cd /app && tar -xvf java-starter-0.1.0-SNAPSHOT.tar && chmod a+x /app/java-starter-0.1.0-SNAPSHOT/bin/java-starter

CMD ["/app/java-starter-0.1.0-SNAPSHOT/bin/java-starter"]