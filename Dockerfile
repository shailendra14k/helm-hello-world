FROM registry.redhat.io/redhat-openjdk-18/openjdk18-openshift

ENV CAMEL_SETBODY Hello World!! response received from Conatiner : {{env:HOSTNAME}}

COPY target/HelloWorld-0.0.1.jar /home/jboss/test.jar

# Expose the ports we're interested in
EXPOSE 8080

CMD ["java", "-jar", "/home/jboss/test.jar"]
