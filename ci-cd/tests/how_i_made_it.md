1. Скачал раннер 

2. зарегистрировал  gitlab-runner register \
                  --non-interactive \
                  --url "https://repos.21-school.ru" \
                  --token "GR1348941PLsisVaQz5ZdLs_jY5Za" \
                  --executor "docker" \
                  --docker-image alpine:latest \
                  --description "docker-runner"


 - получил сообщение 
`Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
Configuration (with the authentication token) was saved in "/Users/andro/.gitlab-runner/config.toml"`

3. Теперь настраиваем gitlab, пишем YML-файл в корне папки проекта, проверяем его на синтаксис, фиксим ошибки и баги(пытаемся), c примерно 30-ой попытки добиваемся того, чтобы при git push gitlab-runner (executor shell) проверял то, что мы пушим

4. Делаем пункты для build-stage и test-stage

5. Делаем пункт для deploy-stage, на второй вб скачаиваем openssh-server, генерим ssh, публичную часть прокидываем на вторую вб в ~/.ssh/authorized_keys, узнаем ip, у меня это 172.17.0.3

6.
