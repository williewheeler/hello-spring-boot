# Hello Spring Boot

A "Hello World" app based on Spring Boot.

## Building

#### With Maven (fat JAR)

```
$ mvn clean verify spring-boot:repackage
```

#### With Docker

First build the fat JAR as shown above. Then

```
$ docker build -t hello-spring-boot .
```

## Running

#### With Java

```
$ java -jar ./target/hello-spring-boot-0.0.1-SNAPSHOT.jar
```

#### With Maven

```
$ mvn spring-boot:run
```

#### With Docker

```
$ docker run -it \
  -p 8080:8080 \
  --name hello-spring-boot \
  --mount type=bind,source="$(pwd)"/config,target=/config \
  hello-spring-boot
```

Point your browser at http://localhost:8080/.
