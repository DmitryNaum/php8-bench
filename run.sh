#!/usr/bin/env bash

docker-compose build

printf '\n\nphp 74 without JIT & opcache\n'
docker-compose run php74-no-opcache  php /var/www/html/app/bench.php

printf '\n\nphp 74 with opcache\n'
docker-compose run php74-opcache     php /var/www/html/app/bench.php

printf '\n\nphp 8 without JIT & opcache\n'
docker-compose run php8-no-opcache  php app/bench.php

printf '\n\nphp 8 with opcache but not JIT\n'
docker-compose run php8-opcache     php app/bench.php

printf '\n\nphp 8 with JIT 1205\n'
docker-compose run php8-jit-1205 php app/bench.php

printf '\n\nphp 8 with JIT 1235\n'
docker-compose run php8-jit-1235 php app/bench.php

printf '\n\nphp 8 with JIT 1255\n'
docker-compose run php8-jit-1255 php app/bench.php