FROM diegomarangoni/hhvm:cli

RUN apt-get update -yqq \
    && apt-get install -yqq curl \
                            git \
    && echo 'xdebug.enable = On' >> /etc/hhvm-xdebug.ini \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer