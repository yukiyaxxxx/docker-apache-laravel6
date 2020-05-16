docker exec -it laravel_web composer dump-autoload
docker exec -it laravel_web php artisan migrate:fresh --seed
