FROM gradle:6.3-jdk11 as builder

#COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
COPY . .
RUN gradle test --no-daemon
