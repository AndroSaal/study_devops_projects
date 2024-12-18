# Операционные системы UNIX/Linux (Базовый).  

## Part 1. Установка ОС

- вводим `cat /etc/issue.`
- ![вывод cat /etc/issue](<screenshots/Screenshot 2024-06-26 at 3.56.04 PM.png> "вывод cat /etc/issue")

## Part 2. Создание пользователя

- ![добавление нового пользователя](<screenshots/Screenshot 2024-06-26 at 4.10.26 PM.png> "добавление нового пользователя")

- вводим `cat /etc/passwd`
- ![вывод cat /etc/passwd](<screenshots/Screenshot 2024-06-26 at 4.11.49 PM.png> "вывод cat /etc/passwd")

## Part 3. Настройка сети ОС

- ![меняем имя машины](<screenshots/Screenshot 2024-06-26 at 4.26.02 PM.png> "меняем имя машины")

- ![устанавливаем временную зону](<screenshots/Screenshot 2024-06-26 at 4.28.32 PM.png> "устанавливаем временную зону")

- ![выводим названия сетевых интерфейсов](<screenshots/Screenshot 2024-06-26 at 5.04.40 PM.png> "выводим названия сетевых интерфейсов")
  - lo (loopback device) – виртуальный интерфейс, присутствующий по умолчанию в любом Linux. Он используется для отладки сетевых программ и запуска серверных приложений на локальной машине.

- ![ip от DHCP](<screenshots/Screenshot 2024-06-26 at 7.26.36 PM.png> "ip от DHCP") 
  - DHCP (Dynamic Host Configuration Protocol) - это протокол динамической настройки узла, позволяющий устройствам автоматически получать IP-адрес, данные о DNS-сервере и другие параметры, необходимые для работы в сети.

- ![внешний ip шлюза](<screenshots/Screenshot 2024-06-26 at 7.33.31 PM.png> "внешний ip шлюза")

- ![внутренний ip шлюза (по умолчанию)](<screenshots/Screenshot 2024-06-26 at 7.35.37 PM.png> "внутренний ip шлюза (по умолчанию)")

- ![узнаем маску для внешнего ip](<screenshots/Screenshot 2024-06-28 at 4.21.12 PM.png> "узнаем маску для внешнего ip")

- ![открываем файл конфигурации](<screenshots/Screenshot 2024-06-28 at 4.39.47 PM.png> "открываем файл конфигурации")

- ![начальный вид файла конфигурации](<screenshots/Screenshot 2024-06-28 at 4.40.38 PM.png> "начальный вид файла конфигурации")

- ![заполняем файл конфигурации своими данными](<screenshots/Screenshot 2024-06-28 at 5.05.56 PM.png> "заполняем файл конфигурации своими данными")

- ![утверждаем изменения, этап для закрепления](<screenshots/Screenshot 2024-06-28 at 5.06.42 PM.png> "утверждаем изменения, этап для закрепления")

  - перезагружаем машину, узнаем ip
- ![подтверждение, что заданные статично ip сохранились](<screenshots/Screenshot 2024-06-28 at 5.12.11 PM.png> "заданные статично ip сохранились")

- пингуем хост 1.1.1.1
- ![результат 1.1.1.1](<screenshots/Screenshot 2024-06-28 at 5.16.51 PM.png> "результат ping 1.1.1.1")

- пингуем ya.ru
- ![результат ya.ru](<screenshots/Screenshot 2024-06-28 at 5.20.28 PM.png> "результат ping ya.ru")

## Part 4. Обновление ОС

- обновляем системные пакеты
- повторно вводим команды для обновления пакетов
- ![результат обновлениея системных пакетов](<screenshots/Screenshot 2024-06-28 at 5.56.36 PM.png> "результат обновлениея системных пакетов")

## Part 5. Использование команды **sudo**

- добавляем пользователя в группу sudo командой `sudo usermod -aG sudo [имя пользователя]`
  sudo - основной способ повышать привилегии в современных системах — утилита sudo (substitute user and do — дословно «подменить пользователя и выполнить») позволяет выполнить какую-либо команду от лица супер-пользователя, на которого не действуют никакие ограничения, у которого есть права на всё

- меняем название машины от лица этого пользователя 
- ![изменение имени машины от лица `user_with_adm_group`](<screenshots/Screenshot 2024-06-28 at 6.13.50 PM.png> "изменение имени машины от лица `user_with_adm_group`")

## Part 6. Установка и настройка службы времени

- ![Корр. время и вывод команды](<screenshots/Screenshot 2024-06-28 at 6.25.03 PM.png> "Корр. время и вывод команды")

## Part 7. Установка и использование текстовых редакторов 

### создать, отредачить, выйти, сохранив

- #### nano 
- ![содержимое перед закрытием nano](<screenshots/Screenshot 2024-06-28 at 6.25.03 PM.png> "содержимое перед закрытием nano")
  для закрытием с сохранением используем `Ctrl+O` для сохранения и `Ctrl+X` для выхода

- #### vim
- ![содержимое перед закрытием vim](<screenshots/Screenshot 2024-06-28 at 6.31.38 PM.png> "содержимое перед закрытием vim")
  для редактирования `i` для выхода с сохранением `esc, :wq, enter`

- #### joe
- ![перед выходом joe](<screenshots/Screenshot 2024-06-28 at 6.35.37 PM.png> "перед выходом joe")
  - редактируем, нажимаем `Ctrl+K, Q`, если были изменения, joe спросит сохранить ли их - соглашаемся. Чтобы явно cохранить - изменения используем `Ctrl+X`

### отредачить, выйти, не сохранив

- #### nano
- ![содержимое до выхода nano](<screenshots/Screenshot 2024-06-28 at 6.44.00 PM.png> "содержимое до выхода nano")
  - чтобы выйти без сохранения `Ctrl+X, N`

- #### vim
- ![содержимое до выхода vim](<screenshots/Screenshot 2024-06-28 at 6.45.56 PM.png> "содержимое до выхода vim")
  - включаем режим редактирования `i`,  выходим без сохранения с помощью `esc, :q!`

- #### joe
- ![содержимое до выхода joe](<screenshots/Screenshot 2024-06-28 at 6.42.38 PM.png> "содержимое до выхода joe")
  - для выхода без сохранения изменений `Сtrl+C`

### поиск, замена

- ##### поиск

- #### nano
- ![поиск в nano](<screenshots/Screenshot 2024-06-28 at 7.01.43 PM.png> "поиск в nano")
  - для поиска используем сочетание клавиш `Ctrl+W, enter`

- #### vim
- ![нашли в файле](<screenshots/Screenshot 2024-06-28 at 6.55.40 PM.png> "поиск в vim")
  - для поиска в vim исползуем `/` и вводим что искать, vim подсвечивает совпадения

- #### joe
- ![alt text](<screenshots/joe find.jpeg> "поиск в joe")
  - для поиска используем `Ctrl+K, F, enter`,

- #### замена

- #### nano
- ![рез замены](<screenshots/Screenshot 2024-06-28 at 7.05.25 PM.png> "результат замены nano")
  - для замены в nano используем `Ctrl+/`, вводим текст, который нужно заменить, `enter`, вводим на что меняем, `enter`, жмем `A` -> заменяем все вхождения / `Y` заменяем текущее и переходим к следующему

- #### vim
- ![рез замены](<screenshots/Screenshot 2024-06-28 at 6.54.48 PM.png> "результат замены vim")
  - вводим `:%s/что меняем/на что меняем`, `enter`

- #### joe
- ![поиск](<screenshots/joe find.jpeg> "поиск joe")
- ![замена](screenshots/joe_1.jpeg "замена joe")
- ![подтверждение](screenshots/joe_2.jpeg "подтверждение joe")
- ![результат](screenshots/joe_3.jpeg "результат поиска и замены joe")
  - для замены в joe используем `Ctrl+K, F`, пишем что ищем, `enter`, `r`, пишем на что меняем, `enter`, `y`

## Part 8. Установка и базовая настройка сервиса **SSHD**

- ##### Установка службы ssh
  прописываем три команды, представленные ниже (повторный их вызов сообщит, что нет пакетов, с которыми можно было хоть что-то сделать)
- ![Установка SSH](<screenshots/Screenshot 2024-06-28 at 8.05.43 PM.png> "Установка SSH")

- #### Добавление автостарта
  Добавление автозапуска не потребовалось, он стоял по умолчанию, проверка:
- ![Проверка](<screenshots/Screenshot 2024-06-28 at 8.11.27 PM.png> "Проверка автозапуска")

- #### Изменение порта на 2022
  Прописываем следующую команду:
- ![редачим порт](<screenshots/Screenshot 2024-06-28 at 8.16.22 PM.png> "открытие конфига на редактирование")
  изменяем в строчку `Port` так, чтобы получилось как на скрине
- ![резульатат редактирования](<screenshots/Screenshot 2024-06-28 at 8.16.50 PM.png> "резульатат редактирования")

- #### ps
- ![ps -A](<screenshots/Screenshot 2024-06-28 at 8.23.58 PM.png> "sshd действительно есть")
  - Команда ps выводит информацию о процессах системы, ключ `-A` - вывод всех процессов, в т.ч. фоновых, grep в данном случае фильтрует вывод ps, пропуская тольло информацию о интересующем нас `sshd`

- #### перезагрузка системы
  выключаем машину, затем включаем её снова
- ![netstat](<screenshots/Screenshot 2024-06-28 at 8.26.16 PM.png> "netstat -tan")

- Значение ключей -tan
    - -a - Отображение всех подключений и ожидающих портов.
    - -t - Отображение текущего подключения в состоянии переноса нагрузки с процессора на сетевой адаптер при передаче данных ( "offload" ).
    - -n - Отображение адресов и номеров портов в числовом формате.

- значение каждого столбца вывода
    - Proto — протокол (tcp, udp).
    - Recv-Q — количество байтов, помещённых в буфер приёма TCP/IP, но не переданных приложению. Если это число высокое, то нужно проверить работоспособность приложения, которое работает с данным портом.
    - Send-Q — количество байтов, помещённых в буфер отправки TCP/IP, но не отправленных, или отправленных, но не подтверждённых. Высокое значение может быть связано с перегрузкой сети сервера.
    - Local Address — локальный адрес сервера. В обычных соединения, это адрес сервера на который пришло соединение. В прослушиваемых портах (LISTEN) — это диапазон адресов. Так 0.0.0.0:port — значит подключаться можно ко всем адресам сервера, а 192.168.0.35:port — значит подключаться можно только к этому адресу сервера.
    - Foreign Address — адрес второй стороны. В обычных соединения, это адрес с которого пришло соединение. В прослушиваемых портах (LISTEN) — это диапазон адресов. Так 0.0.0.0:* — значит подключаться можно с любых адресов и с любых портов, а например 192.168.0.50:* — значит подключаться можно только с этого адреса и с любых портов.
    - State — состояние подключения, или прослушивания.

- значение 0.0.0.0 
    - IP-адрес 0.0.0.0 означает «эта сеть», но для использования в традиционном смысле этот адрес непригоден. Это похоже на ссылку: «Вставьте сюда адрес», или, в зависимости от контекста, «без конкретного адреса назначения». Он действует как резервный, пока не будет назначен действительный маршрутизируемый IP-адрес. 
    - В качестве статического маршрута по умолчанию. Это означает, что в таблице маршрутизации не указан конкретный адрес в качестве следующего перехода на пути пакета к его конечному получателю. Когда маршрут по умолчанию используется с маской подсети 0.0.0.0, он соответствует любому адресу. При использовании с маской 255.255.255.255 она не соответствует ни одному маршруту
    - В локальной сети. В локальной сети адрес 0.0.0.0 можно использовать в качестве адреса источника в широковещательной передаче IPv4, которая используется для передачи данных на все устройства в локальной сети.
    - На серверах. IP-адрес 0.0.0.0 может использоваться на серверах для обозначения того, что служба может связываться со всеми сетевыми интерфейсами. Он дает команду серверу «прослушивать» и принимать соединения с любого IP-адреса.
    - На ПК и клиентских устройствах. Адрес 0.0.0.0 указывает, что клиент не подключен к сети TCP / IP, и устройство может дать себе адрес 0.0.0.0, когда оно находится в автономном режиме.

## Part 9. Установка и использование утилит **top**, **htop**

##### Установи и запусти утилиты top и htop. 

![вывод top](<screenshots/Screenshot 2024-06-29 at 3.39.12 PM.png> "вывод top")

- По выводу команды top определим:
  - uptime ` 1 минут 9 секунд `
  - количество авторизованных пользователей ` 1 `
  - общую загрузку системы ` 0.16, 0.05, 0.01, за 1 минуту, 5 минут и 15 минут `
  - общее количество процессов ` 135 процессов `
  - загрузка cpu ` 0 `
  - загрузка памяти ` 183.7MiB `
  - pid процесса занимающего больше всего памяти ` 1425 `
  - pid процесса, занимающего больше всего процессорного времени ` 1425 `



- вывод команды htop:
  - отсортированному по PID, 
  ![по pid](<screenshots/Screenshot 2024-06-29 at 3.41.41 PM.png> "сортировка по pid")

  - PERCENT_CPU, 
  ![по %cpu](<screenshots/Screenshot 2024-06-29 at 3.42.50 PM.png> "сортировка по %cpu")

  - PERCENT_MEM,
  ![по %mem](<screenshots/Screenshot 2024-06-29 at 3.43.49 PM.png> "сортировка по %mem")

  - TIME
  ![по time](<screenshots/Screenshot 2024-06-29 at 3.44.16 PM.png> "сортировка по time")

  - отфильтрованному для процесса sshd
  ![alt text](<screenshots/photo_2024-06-30 14.42.57.jpeg> "фильтрация по sshd")

  - с процессом syslog, найденным, используя поиск 
  ![syslog](<screenshots/Screenshot 2024-06-29 at 3.59.56 PM.png> "поиска syslog")

  - с добавленным выводом hostname, clock и uptime  
  ![uptime, time, clock](<screenshots/Screenshot 2024-06-29 at 4.10.44 PM.png> "+uptime, +time, +clock")

## Part 10. Использование утилиты **fdisk**

- ##### Запустим команду fdisk -l.
![вывод fdisk -l](<screenshots/Screenshot 2024-06-29 at 4.14.01 PM.png> "вывод fdisk -l")
`-`  Название ` VBOX HARDDISK `
`-`  Размер ` 80,74 GiB `
`-`` 169279488 ` секторов

![swap](<screenshots/Screenshot 2024-06-29 at 4.26.37 PM.png> "swap")
`-`  Размер swap ` ~8 GiB `

## Part 11. Использование утилиты **df** 

##### Запустим команду df.  
![df](<screenshots/Screenshot 2024-06-29 at 4.28.37 PM.png> "вывод df")
- Для корневого раздела (/):
  `-` размер раздела ` 40307976 KiB `
  `-` размер занятого пространства ` 11151452 KiB `
  `-` размер свободного пространства ` 27076780 KiB `
  `-` процент использования ` 30% `
- Используемая единица измерения - ` KiB `

##### Запустим команду df -Th.
![df -Th](<screenshots/Screenshot 2024-06-29 at 4.31.32 PM.png> "df -Th")
- Для корневого раздела (/):
  `-` размер раздела ` 39GiB `
  `-` размер занятого пространства ` 11GiB `
  `-` размер свободного пространства ` 26GiB `
  `-` процент использования ` 30% `
- ext4 (англ. fourth extended file system, ext4fs) — журналируемая файловая система.

## Part 12. Использование утилиты **du**

- ##### Запустим команду du
![du](<screenshots/Screenshot 2024-06-29 at 4.38.40 PM.png> "Вывод команды du") 

- ##### Размер папок /home, /var, /var/log 
![/home, /var, /var/log](<screenshots/Screenshot 2024-06-29 at 4.53.37 PM.png> "размер /home, /var, /var/log")

- ##### размер всего содержимого в /var/log 
![/var/log/*](<screenshots/Screenshot 2024-06-29 at 4.54.15 PM.png> "размер /var/log/*")

## Part 13. Установка и использование утилиты **ncdu**

- ##### Выведем размер папок /home, /var, /var/log

`ncdu /home` :
![home](<screenshots/Screenshot 2024-06-29 at 5.26.57 PM.png> "вывод ncdu /home")

`ncdu /var` :
![var](<screenshots/Screenshot 2024-06-29 at 5.27.34 PM.png> "вывод ncdu /var")

`ncdu /var/log/*` :
![/var/log](<screenshots/Screenshot 2024-06-29 at 5.28.08 PM.png> "вывод ncdu /var/log")

## Part 14. Работа с системными журналами

##### Откроем для просмотра:
- ##### 1. /var/log/dmesg
![/var/log/dmesg](<screenshots/Screenshot 2024-06-29 at 5.36.40 PM.png> "содержимое /var/log/dmesg")

- ##### 2. /var/log/syslog
![/var/log/syslog](<screenshots/Screenshot 2024-06-29 at 5.37.36 PM.png> "содержимое /var/log/syslog")

- ##### 3. /var/log/auth.log
![/var/log/auth.log](<screenshots/Screenshot 2024-06-29 at 5.38.25 PM.png> "содержимое /var/log/auth.log")

![авторизация](<screenshots/Screenshot 2024-06-29 at 5.39.46 PM.png> "авторизация")
- время последней успешной авторизации ` 14:30:21 `, имя пользователя ` mathewal `, метод входа в систему ` LOGIN `;

- Перезапустим службу SSHd
![перезапускаем](<screenshots/Screenshot 2024-06-29 at 5.45.59 PM.png> "команда для перезапуска службы")
![сообщение о перезапуске](<screenshots/Screenshot 2024-06-29 at 5.42.45 PM.png> "сообщение о перезапуске в логах")

## Part 15. Использование планировщика заданий **CRON**

- ##### Используя планировщик заданий, запустим команду uptime через каждые 2 минуты.
- введем команду `sudo crontab -e`
- В открывшемся файле допишем строчку как показано ниже
![crontab](<screenshots/Screenshot 2024-06-29 at 6.05.04 PM.png> "crontab")
- выйдем с сохранением

- строчки из логов о выполнении
![alt text](<screenshots/Screenshot 2024-06-29 at 6.10.09 PM.png> "подтверждение, что всё по-настоящему")

- список текущих задач 
![alt text](<screenshots/Screenshot 2024-06-29 at 6.05.32 PM.png> "текущие задачи")

- ##### Удалим все задания из планировщика заданий также, как добавили

- введем команду `sudo crontab -e` и сотрем все, что не комментарии
- проверим список текущих задач :
![last one](<screenshots/Screenshot 2024-06-29 at 6.12.45 PM.png> "задачник без задач")