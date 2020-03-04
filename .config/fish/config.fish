bash -c '(printf "\nCoronavirus cases: \e[1;91m%\'d \e[1;0m\n" $(~/get_covid19_cases.sh))'
bash -c '(printf "Confirmed in Poland: \e[0;91m%\'d \e[1;0m\n" $(~/get_covid19_cases_poland_confirmed.sh))'
bash -c '(printf "Deceased in Poland: \e[0;91m%\'d \e[1;0m\n" $(~/get_covid19_cases_poland_deceased.sh))'
bash -c '(printf "Recovered in Poland: \e[0;32m%\'d \e[1;0m\n\n" $(~/get_covid19_cases_poland_recovered.sh))'
