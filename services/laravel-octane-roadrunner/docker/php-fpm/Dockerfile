FROM php:8.0-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /app

RUN apk --no-cache add \
    bash \
    git \
    curl \
    && docker-php-ext-install \
    sockets \
    pcntl

#####################################
# USER
#####################################
ARG USER_NAME=test
ARG USER_HOME_NAME=${USER_NAME}
ARG USER_ID=1000

RUN adduser \
    --home /${USER_HOME_NAME} \
    --disabled-password \
    --uid ${USER_ID} \
    ${USER_NAME}

USER ${USER_NAME}