#!/bin/bash

sqlite3 ~/.config/vivaldi/Default/Cookies <<EOF
delete from Cookies where host_key like '%receita.fazenda.gov.br';
.save Cookies
.quit
EOF
