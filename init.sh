docker exec -it laravel_web composer install --prefer-dist
docker exec -it laravel_web cp .env.example .env
docker exec -it laravel_web php artisan key:generate
