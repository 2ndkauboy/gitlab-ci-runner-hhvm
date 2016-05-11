FROM diegomarangoni/hhvm:cli

RUN apt-get update -yqq \
    && apt-get install -yqq curl \
                            git \
    && echo 'xdebug.enable = On' >> /etc/hhvm/php.ini
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer