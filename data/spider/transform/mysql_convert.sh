#!/bin/bash
# Description: Convert Spider dev databases to MySQL
# Usage: bash mysql_convert.sh

spider_dev_databases=("cre_Doc_Template_Mgt" "concert_singer" "pets_1" "car_1" "flight_2" "employee_hire_evaluation"  "course_teach" "museum_visit" wta_1 "battle_death" "student_transcripts_tracking" "tvshow" "poker_player" "voter_1" "world_1" "orchestra" "network_1" "dog_kennels" "singer" "real_estate_properties")

mysql_user="root"
mysql_password="password"

for db in $spider_dev_databases; do
    echo "Converting $db ..."
    if test -f spider/database/$db/schema.sql; then
        cat spider/database/$db/schema.sql | sqlite3 $db.db
    elif test -f spider/database/$db/$db.sql; then
        cat spider/database/$db/$db.sql | sqlite3 $db.db
    elif test -f spider/database/$db/$db.sqlite; then
        cat spider/database/$db/$db.sqlite | sqlite3 $db.db
    fi
    sqlite3mysql -f $db.db -d $db -u $mysql_user --mysql-password $mysql_password -q --mysql-string-type "VARCHAR(255)"
done
