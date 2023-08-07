FROM maven:3.8.1-openjdk-11

ENV JOGET_VERSION 8.0-SNAPSHOT

COPY install-libraries install-libraries

RUN cd install-libraries ; \
    ./install_linux.sh ; \
    cd .. ;\
    rm -r install-libraries

RUN git clone --depth 1 --branch ${JOGET_VERSION} https://github.com/jogetworkflow/jw-community.git ; \
    cd jw-community/wflow-app ; \
    mvn install -Dmaven.test.skip=true ; \
    mvn archetype:generate -DinteractiveMode=false -DarchetypeGroupId=org.joget -DarchetypeArtifactId=wflow-plugin-archetype -DarchetypeVersion=${JOGET_VERSION} -DgroupId=org.joget.plugin -DartifactId=custom-plugin ; \
    cd custom-plugin ; \
    mvn install -Dmaven.test.skip=true ; \
    rm -rf /jw-community; \
    mv /root/.m2/repository /usr/share/maven/ref/

