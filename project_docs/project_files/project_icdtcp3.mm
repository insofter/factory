<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1361951309121" ID="ID_214036463" MODIFIED="1361988323628" STYLE="bubble" TEXT="ICDTCP3">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1361951354411" ID="ID_546530039" MODIFIED="1361990484021" POSITION="right" STYLE="bubble" TEXT="linux">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Linux dla ARM AT91.
    </p>
    <p>
      Repozytoria buildroot i icd.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361955705250" ID="ID_130991821" MODIFIED="1361977275567" STYLE="bubble" TEXT="/home/data/">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<attribute_layout NAME_WIDTH="33" VALUE_WIDTH="33"/>
<node COLOR="#990000" CREATED="1361956156373" ID="ID_1172743165" MODIFIED="1361977275568" STYLE="bubble" TEXT="SQLite3">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361955728433" ID="ID_251290198" MODIFIED="1361977275569" STYLE="bubble" TEXT="config.db">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Baza danych przechowuj&#261;ca konfiguracj&#281;.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361955717709" ID="ID_1086714611" MODIFIED="1361977275569" STYLE="bubble" TEXT="data.db">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Baza danych przechowuj&#261;ca wyniki zliczania.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1361973057522" ID="ID_1213660170" MODIFIED="1361977275562" STYLE="bubble" TEXT="/tmp/">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361973067837" ID="ID_829267022" MODIFIED="1361977275563" STYLE="bubble" TEXT="SQLite3">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361973073369" ID="ID_426197472" MODIFIED="1361977275563" STYLE="bubble" TEXT="live.db">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Baza w pami&#281;ci RAM.
    </p>
    <p>
      Baza przechowuje bie&#380;&#261;ce wyniki, kt&#243;re s&#261; kopiowane przez icd-flush-db do bazy w pami&#281;ci flash.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1361959173730" ID="ID_1188269369" MODIFIED="1361977275556" STYLE="bubble" TEXT="/etc/init.d/rcS">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361951391991" ID="ID_15166884" MODIFIED="1361989579326" STYLE="bubble" TEXT="S40icd">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      G&#322;&#243;wny skrypt startowy uruchamiaj&#261;cy wszystkie demony.
    </p>
    <p>
      Demony s&#261; uruchamiane skryptem icd-run-daemon.
    </p>
    <p>
      S&#261; to zwyk&#322;e programy, wypisuj&#261;ce sw&#243;j log na standardowe wyj&#347;cie.
    </p>
    <p>
      Icd-run-daemon wykonuje forkowanie i przekierowanie logu.
    </p>
    <p>
      Rotacj&#281; log&#243;w przeprowadza icd-logrotate (3 pliki po 50kB).
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361976573970" ID="ID_980444875" MODIFIED="1361977275550" STYLE="bubble" TEXT="icd-create-*">
<node COLOR="#111111" CREATED="1361976629641" ID="ID_1560112367" MODIFIED="1361987063645" STYLE="bubble" TEXT="icd-create-data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Skrypt zarz&#261;daj&#261;cy bazami przy starcie:
    </p>
    <p>
      Tworzy je, gdy nie istniej&#261;.
    </p>
    <p>
      Przenosi stare i tworzy od nowa, jesli istnieje plik -- flaga 'recreate_databases'.
    </p>
    <p>
      Czy&#347;ci sekcj&#281; 'current' w konfiguracji.
    </p>
    <p>
      Domy&#347;lan konfiguracja jest zapisana w {icd}/share/init-default-config.sql.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1361976611817" ID="ID_1481805635" MODIFIED="1361977275551" STYLE="bubble" TEXT="icd-create-live-db">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Tworzy baz&#281; w pami&#281;ci RAM.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1361955440458" ID="ID_1409599933" MODIFIED="1361988585280" STYLE="bubble" TEXT="icd-cron">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cyklicznie wywo&#322;uje synchronizacj&#281; bazy i komunikacj&#281; z serwerem.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="74;0;" ID="Arrow_ID_802068222" STARTARROW="None" STARTINCLINATION="74;0;"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1361955447997" ID="ID_1797662751" MODIFIED="1361977275552" STYLE="bubble" TEXT="icd-transfer-data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Przesy&#322;a dane do serwera, korzystaj&#261;c z biblioteki gSOAP.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_1086714611" ENDARROW="Default" ENDINCLINATION="178;0;" ID="Arrow_ID_1850612715" STARTARROW="None" STARTINCLINATION="178;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361973033934" ID="ID_923100820" MODIFIED="1361977275552" STYLE="bubble" TEXT="icd-flush-db">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Przenosi dane z live.db do data.db.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_426197472" ENDARROW="Default" ENDINCLINATION="176;0;" ID="Arrow_ID_994943951" STARTARROW="None" STARTINCLINATION="176;0;"/>
<arrowlink DESTINATION="ID_1086714611" ENDARROW="Default" ENDINCLINATION="130;0;" ID="Arrow_ID_328729061" STARTARROW="None" STARTINCLINATION="130;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1361951573202" ID="ID_1893388337" MODIFIED="1361977275553" STYLE="bubble" TEXT="icd-network">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="187;0;" ID="Arrow_ID_1085428275" STARTARROW="None" STARTINCLINATION="187;0;"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1361958686697" ID="ID_1555724774" MODIFIED="1361977275553" STYLE="bubble" TEXT="ifconfig eth0 *">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361957606698" ID="ID_1240322630" MODIFIED="1361977275554" STYLE="bubble" TEXT="udhcpc -i eth0">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1361955383844" ID="ID_1389021610" MODIFIED="1361977275554" STYLE="bubble" TEXT="icd-wifi-daemon">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="175;0;" ID="Arrow_ID_801071950" STARTARROW="None" STARTINCLINATION="175;0;"/>
<arrowlink DESTINATION="ID_1297566231" ENDARROW="Default" ENDINCLINATION="307;0;" ID="Arrow_ID_1468509853" STARTARROW="None" STARTINCLINATION="307;0;"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1361957689414" ID="ID_1832859850" MODIFIED="1361977275554" STYLE="bubble" TEXT="icd-wifi-cfg-[from|to]">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361957677426" ID="ID_1888373514" MODIFIED="1361977275555" STYLE="bubble" TEXT="wpa_supplicant">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361957667695" ID="ID_559770647" MODIFIED="1361977275555" STYLE="bubble" TEXT="udhcpc -i wlan0">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1361955396929" ID="ID_681596751" MODIFIED="1361977275555" STYLE="bubble" TEXT="icd-gsm-daemon">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="158;0;" ID="Arrow_ID_367954232" STARTARROW="None" STARTINCLINATION="158;0;"/>
<arrowlink DESTINATION="ID_933283166" ENDARROW="Default" ENDINCLINATION="280;0;" ID="Arrow_ID_1692517208" STARTARROW="None" STARTINCLINATION="280;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361955426571" ID="ID_1531893197" MODIFIED="1361977275556" STYLE="bubble" TEXT="icd-itd-demon">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_1734979662" ENDARROW="Default" ENDINCLINATION="188;0;" ID="Arrow_ID_1825416628" STARTARROW="None" STARTINCLINATION="188;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361955407056" ID="ID_1660704319" MODIFIED="1361977275556" STYLE="bubble" TEXT="icd-fc-daemon">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="132;0;" ID="Arrow_ID_685675608" STARTARROW="None" STARTINCLINATION="132;0;"/>
<arrowlink DESTINATION="ID_1332600065" ENDARROW="Default" ENDINCLINATION="566;0;" ID="Arrow_ID_413119158" STARTARROW="None" STARTINCLINATION="566;0;"/>
<arrowlink DESTINATION="ID_59812596" ENDARROW="Default" ENDINCLINATION="619;0;" ID="Arrow_ID_583410413" STARTARROW="None" STARTINCLINATION="619;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1361955492824" ID="ID_1149453662" MODIFIED="1361987393791" STYLE="bubble" TEXT="S80lighttpd">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lighttpd ma zmodyfikowany czas wykonywania skryptu.
    </p>
    <p>
      Plik {buildroot}/fs/skeleton-icdtcp3/etc/lighttpd.conf
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361955559131" ID="ID_72264620" MODIFIED="1361977275527" STYLE="bubble" TEXT="PHP (/var/www/)">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1361958791266" ID="ID_1592856150" MODIFIED="1361977275528" STYLE="bubble" TEXT="index.php">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Strona WWW s&#322;u&#380;&#261;ca do konfiguracji.
    </p>
    <p>
      Klasy znajduj&#261; si&#281; w plikach c_*.php.
    </p>
    <p>
      Pozosta&#322;e pliki dostarczaj&#261; interfejsy.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
</node>
<node COLOR="#111111" CREATED="1361955947717" ID="ID_435289127" MODIFIED="1361977275529" STYLE="bubble" TEXT="Raporty (inc/wyniki_*.php)">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_1086714611" ENDARROW="Default" ENDINCLINATION="384;0;" ID="Arrow_ID_497498761" STARTARROW="None" STARTINCLINATION="384;0;"/>
</node>
<node COLOR="#111111" CREATED="1361956060786" ID="ID_24673905" MODIFIED="1361977275529" STYLE="bubble" TEXT="Konfiguracja (inc/c_icdtcp.php)">
<edge COLOR="#808080"/>
<arrowlink DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="407;0;" ID="Arrow_ID_720040937" STARTARROW="None" STARTINCLINATION="407;0;"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1361956211817" ID="ID_241742111" MODIFIED="1361990490029" POSITION="right" STYLE="bubble" TEXT="elektronika">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P&#322;ytka bazowa + p&#322;ytka z modu&#322;em MMnet 1001.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="sharp_bezier" WIDTH="8"/>
<arrowlink DESTINATION="ID_546530039" ENDARROW="Default" ENDINCLINATION="138;0;" ID="Arrow_ID_1372809567" STARTARROW="None" STARTINCLINATION="138;0;"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361956431087" ID="ID_1332600065" MODIFIED="1361977275517" STYLE="bubble" TEXT="LCD 2x16">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361956457217" ID="ID_59812596" MODIFIED="1361977275516" STYLE="bubble" TEXT="Klawiatura 6 klaw.">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361956631154" ID="ID_1734979662" MODIFIED="1361988541765" STYLE="bubble" TEXT="Fotokom&#xf3;rki ABCD">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Fotokom&#243;rki pod&#322;&#261;czane z ty&#322;u urz&#261;dzenia, konfigurowane przez WWW.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361959534630" ID="ID_1216649671" MODIFIED="1361977275513" STYLE="bubble" TEXT="USB">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2 porty USB dost&#281;pne dla systemu Linux.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361974800436" ID="ID_1297566231" MODIFIED="1361977275515" STYLE="bubble" TEXT="karta WiFi">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361974812832" ID="ID_933283166" MODIFIED="1361977275515" STYLE="bubble" TEXT="modem GSM">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361959541106" ID="ID_814654369" MODIFIED="1361977275509" STYLE="bubble" TEXT="RS-232 debug">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361959560986" ID="ID_1797540967" MODIFIED="1361977275510" STYLE="bubble" TEXT="FTDI">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361959568272" ID="ID_1659913736" MODIFIED="1361977350475" STYLE="bubble" TEXT="USB">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Port USB, przez kt&#243;ry jest dost&#281;pny terminal i zarz&#261;dzanie zasilaniem i zwork&#261; USR w celu programowania.
    </p>
    <p>
      Niewidoczny dla systemu linux.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1361990322439" ID="ID_835665368" MODIFIED="1361990952131" POSITION="left" TEXT="           &apos;how_to_begin.sh&apos; &#xa;czyli jak zacz&#x105;&#x107; prac&#x119; z projektem">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1361989830384" ID="ID_217124938" MODIFIED="1361990930483" POSITION="left" TEXT="repozytoria&#xa;  projektu">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361989843447" ID="ID_1572180523" MODIFIED="1361989862881" TEXT="buildroot">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361989874927" ID="ID_1242004422" MODIFIED="1361989879935" TEXT="icd">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361989917303" ID="ID_1011028581" MODIFIED="1361989919479" TEXT="linux">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361989953999" ID="ID_11691733" MODIFIED="1361989956288" TEXT="at91bootstrap">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361989984071" ID="ID_146635606" MODIFIED="1361989987599" TEXT="u-boot">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1361990113455" ID="ID_1321429431" MODIFIED="1361990942115" POSITION="left" TEXT="    repozytoria&#xa;&#x15b;rodowiska pracy">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361989884783" ID="ID_1979515212" MODIFIED="1361989892823" TEXT="scripts">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361990233447" ID="ID_846327775" MODIFIED="1361990239629" TEXT="icdtcp3-flash.sh">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361989866623" ID="ID_830333123" MODIFIED="1361989871295" TEXT="factory">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361990280327" ID="ID_1660220833" MODIFIED="1361990283733" TEXT="project_docs/">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361990285615" ID="ID_432970373" MODIFIED="1361990308173" TEXT="bash_env">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
