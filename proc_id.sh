#!/bin/bash

#  Copyright (c) 2015, by Rodrigo Zarth - rzarth@gmail.com
#  All rights reserved.

#  Redistribution and use in  source  and  binary  forms, with
# or  without  modification,  are  permitted provided that the
# following conditions are met:

#    - Redistributions  of  source  code must retain the above
#      copyright  notice,  this  list  of  conditions  and the
#      following disclaimer.
#    - Redistributions in binary form must reproduce the above
#      copyright  notice,  this  list  of  conditions  and the 
#      following  disclaimer in the documentation and/or other
#      materials provided with the distribution.
#    - Neither  the  name  of  the Author nor the names of its
#      contributors may be used to endorse or promote products
#      derived  from  this  software  without  specific  prior
#      written permission.

# THIS  SOFTWARE  IS  PROVIDED  BY  THE  COPYRIGHT HOLDERS AND
# CONTRIBUTORS  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING,  BUT  NOT  LIMITED  TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY  AND  FITNESS  FOR  A PARTICULAR PURPOSE ARE
# DISCLAIMED.  IN  NO  EVENT  SHALL  THE  COPYRIGHT  HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS  OF  USE,  DATA,  OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER  CAUSED  AND  ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE)  ARISING  IN  ANY  WAY  OUT  OF  THE  USE OF THIS
# SOFTWARE,  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
processadores=$(cat /proc/cpuinfo |grep "physical id" |cut -d':' -f2 | uniq | wc -l)
cores=$(head -n 26 /proc/cpuinfo |grep cores |cut -d':' -f2 )
siblings=$(head -n 26 /proc/cpuinfo |grep siblings | cut -d':' -f2)
total=$(cat /proc/cpuinfo |grep processor |cut -d':' -f2 | wc -l)
hyper=$(( $siblings / $cores))
modelo=$(head -n 26 /proc/cpuinfo |grep "model name" |cut -d':' -f2 )
clear
echo -e "\n\n   Este computador possui $processadores processadores fisicos, com $cores cores cada,"
echo -e "modelo $modelo"
if ((  $hyper  > 1 )); then
echo -e "Esta com hypertrading habilitado,  totalizando $total unidades de processamento.\n\n"
else
echo -e "NAO esta com hypertrading habilitado, totalizando $total unidades de processamento.\n\n"
fi
