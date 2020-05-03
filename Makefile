.PHONY: all clean mvn-build docker-build docker-run

APP_NAME = "hello-spring-boot"
MVN = ./mvnw
YELLOW = \033[1;33m
NC = \033[0m

all: clean mvn-build docker-build

clean:
	@echo "$(YELLOW)=====[ CLEANING MAVEN PACKAGE: $(APP_NAME) ]=====$(NC)"
	$(MVN) -e clean

mvn-build:
	@echo "$(YELLOW)=====[ BUILDING MAVEN PACKAGE: $(APP_NAME) ]=====$(NC)"
	$(MVN) -e verify spring-boot:repackage

docker-build:
	@echo "$(YELLOW)=====[ BUILDING DOCKER IMAGE: $(APP_NAME) ]=====$(NC)"
	docker build -t $(APP_NAME) .

docker-run:
	@echo "$(YELLOW)=====[ RUNNING DOCKER IMAGE: $(APP_NAME) ]=====$(NC)"
	docker run \
	  -it \
	  --rm\
	  --name hello \
	  --mount type=bind,source=$(CURDIR)/config,target=/config \
	  -p 8080:8080 \
	  $(APP_NAME)
