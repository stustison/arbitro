BALANA_CLASSPATH=""
for f in lib/*.jar
do
  BALANA_CLASSPATH=$BALANA_CLASSPATH:$f
done
for g in ../../arbitro-core/target/*jar
do
  BALANA_CLASSPATH=$BALANA_CLASSPATH:$g
done
for h in target/*jar
do
  BALANA_CLASSPATH=$BALANA_CLASSPATH:$h
done
BALANA_CLASSPATH=$BALANA_CLASSPATH:$CLASSPATH

$JAVA_HOME/bin/java -classpath "$BALANA_CLASSPATH" com.connexta.arbitro.samples.kmarket.trading.KMarketAccessControl $*



