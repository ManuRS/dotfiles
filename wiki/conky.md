# Como configurar mi conky

Cuando conky es utilizado en un nuevo equipio requiere:
- Ajustar numero de CPUs
- Ajustar las posiciones de los iconos del tiempo en cada pantalla
- Pueder ser necesario crear los archivos ~/.cache/weather.xml y ~/.cache/weather_aux.xml
- Configurar tiempo de refresco del tiempo
  - Ajustar cada cuanto se consulta a yahoo (a)
  - Ajustar cada cuanto se comprueba la validez de los datos de yahoo para realizar cambio definitivo (b)
  - Ajustar cada cuanto se leen los datos cambiados (c) 
  - Consultar commit https://github.com/manurs/dotfiles/commit/521d84d2625ed77db67456529aa5369e0121d100
  - Nota: los tiempos largos (30 min) podrían funcionar adecuadamente salvo porque los datos tarden en aparecer. Esto es debido a que la api de yahoo falla continuamente (razón por la cual fue modificada la arquitectura). Por eso están puestos tiempos cortos.
- El nombre de la interfaz wifi debe ser puesto correctamente
  - Ajustar como calcula el ping de acuerdo a como ofrezca la info
- Configurar gcalcli si se quiere utilizar
- Decidir si queremos utilizar speedtest
