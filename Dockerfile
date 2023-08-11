FROM openjdk:11

WORKDIR /application

COPY apache-ant-1.10.13 /apache-ant

ENV PATH="/apache-ant/bin:${PATH}"

COPY . /application

RUN ant

CMD ["java", "-Xmx4000M", "-jar","/application/FreeCol.jar"]
