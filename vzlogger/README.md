# Volkszähler VZLogger als HASS Plugin

Dieses Plugin beinhaltet den VZLogger (https://wiki.volkszaehler.org/software/controller/vzlogger) de Volkszähler Projekts.
Da ich meinen Stromzähler über ein Batterie Betriebenes Gerät auslesen muss, da im Keller keine Steckdose vorhanden ist, 
musste ich eine möglichkeit entwickeln VZ Logger als "Daemon" zu betreiben. 
Durch einen Bug im VZ Logger überträgt der integrierte Daemon Mode von VZLogger keine Daten an die Middleware \
\
So funktioniert meine Implementierung:

- NodeMCU (ESP8266) mit Akku am Itron EM214 Stromzähler mit optischem Schreib/LeseKopf (Seriell)
- Auf dem ESP läuft ESPEasy, über WLAN kann VZLogger den Seriellen IR Schreib/Lesekopf auslesen
- Der ESP8266 geht nach 3-4 Minuten in den Deepsleep und wacht alle 30 Minuten wieder auf
- Ist der ESP8266 im Netzwerk erreichbar, wird via HomeAssistant das vzlogger Plugin gestartet 
- VZLogger sammelt die Daten vom Stromzähler und überträgt diese in die Middleware / InfluxDB
- Wenn der ESP offline geht, wird das Plugin automatisch beendet. 


Die Informationen aus der Influx DB werden in HASS Visualisiert. 

![image](https://user-images.githubusercontent.com/5191818/135831940-c92fbed9-1d1d-4903-b6c6-30734b0a7cd5.png)
Daten via VZLogger abgefragt und Visualisiert in HASS

# Aktuelle Einschränkung:
- die Battie muss leider alle 6-7 Tage getauscht werden, da trotz DeepSleep diese recht schnell leer ist. 
- Ggf. kann man das optimieren, in dem man keine NodeMCU nutzt sondern wirlich einen reinen ESP8266. 
