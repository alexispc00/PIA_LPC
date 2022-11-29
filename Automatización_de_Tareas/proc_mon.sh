TIME='date +%d-$m-%Y_%H:%M:%S'
FECHA='date +%d-%m-%Y'

if [ ! -d "$HOME/log"]
then
  mkdir $HOME/log
fi

echo "#" >> $HOME/log/procesos_${FECHA}.log
echo "##########################################################" >>$HOME/log/procesos_${FECHA}.log
echo "#" >> $HOME/log/procesos_${FECHA}.log
echo "Hora:"$TIME >> $HOME/log/procesos_${FECHA}.log
ps -ef >> $HOME/log/procesos_${FECHA}.log
echo "TOTAL DE PROCESOS: "'ps -ef |wc -l' >> $HOME/log/procesos_${FECHA}.log
echo "Hora:"$TIME >> $HOME/log/procesos_${FECHA}.log         
#
