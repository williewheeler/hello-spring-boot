# Hello Spring Boot

A "Hello World" app based on Spring Boot.

## Building the app (fat JAR)

```
$ mvn clean install spring-boot:repackage
```

## Running the app from Maven (default dev profile)

```
$ mvn spring-boot:run
```

## Running the app from the command line

First build the fat JAR as shown above. Then from the top-level directory:

```
$ java -jar -Dspring.profiles.active=dev target/demo-0.0.1-SNAPSHOT.jar
```

The app contains `dev`, `test` and `prod` profiles.
