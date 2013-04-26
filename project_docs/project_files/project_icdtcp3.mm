<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1361951309121" ID="ID_214036463" MODIFIED="1364407770067" STYLE="bubble" TEXT="ICDTCP3">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1361951354411" ID="ID_546530039" MODIFIED="1364407764399" POSITION="right" STYLE="bubble" TEXT="linux">
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
<node COLOR="#00b439" CREATED="1362063801754" ID="ID_1506723969" MODIFIED="1364407764419" TEXT="/etc/profile.d/icd.sh">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zmienne globalne ICD_DATA_DB, ICD_CONFIG_DB itd.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_604775108" ENDARROW="Default" ENDINCLINATION="900;0;" ID="Arrow_ID_1596596881" STARTARROW="None" STARTINCLINATION="900;0;"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361959173730" ID="ID_1188269369" MODIFIED="1362064004268" STYLE="bubble" TEXT="/etc/init.d/rcS">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_604775108" ENDARROW="Default" ENDINCLINATION="807;0;" ID="Arrow_ID_1027486490" STARTARROW="None" STARTINCLINATION="807;0;"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361951391991" ID="ID_15166884" MODIFIED="1364407764450" STYLE="bubble" TEXT="S40icd">
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
<node COLOR="#111111" CREATED="1361976629641" ID="ID_1560112367" MODIFIED="1364407764481" STYLE="bubble" TEXT="icd-create-data">
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
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1361976611817" ID="ID_1481805635" MODIFIED="1364407764499" STYLE="bubble" TEXT="icd-create-live-db">
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
<node COLOR="#111111" CREATED="1361955440458" ID="ID_1409599933" MODIFIED="1364407764520" STYLE="bubble" TEXT="icd-cron">
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
<arrowlink COLOR="#ffd700" DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="74;0;" ID="Arrow_ID_802068222" STARTARROW="None" STARTINCLINATION="74;0;"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1361955447997" ID="ID_1797662751" MODIFIED="1364407764541" STYLE="bubble" TEXT="icd-transfer-data">
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
<arrowlink COLOR="#ffd700" DESTINATION="ID_1086714611" ENDARROW="Default" ENDINCLINATION="178;0;" ID="Arrow_ID_1850612715" STARTARROW="None" STARTINCLINATION="178;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361973033934" ID="ID_923100820" MODIFIED="1364407764561" STYLE="bubble" TEXT="icd-flush-db">
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
<arrowlink COLOR="#ffd700" DESTINATION="ID_426197472" ENDARROW="Default" ENDINCLINATION="176;0;" ID="Arrow_ID_994943951" STARTARROW="None" STARTINCLINATION="176;0;"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1086714611" ENDARROW="Default" ENDINCLINATION="130;0;" ID="Arrow_ID_328729061" STARTARROW="None" STARTINCLINATION="130;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1361951573202" ID="ID_1893388337" MODIFIED="1364408313278" STYLE="bubble" TEXT="icd-net">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zarz&#261;dza po&#322;&#261;czeniami z internetem.
    </p>
    <p>
      Pracuje w niesko&#324;czonej p&#281;tli, pr&#243;buj&#261;c utrzyma&#263; zadany stan,
    </p>
    <p>
      np: resetuje zawieszonego wpa_supplicanta lub przekonfigurowuje po&#322;&#261;czenia
    </p>
    <p>
      po zmianie parametr&#243;w w bazie danych.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="187;0;" ID="Arrow_ID_1085428275" STARTARROW="None" STARTINCLINATION="187;0;"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1364405831531" ID="ID_1355932643" MODIFIED="1364407862111" TEXT="Ethernet - eth0">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Funkcje eth_*() obs&#322;uguj&#261;ce po&#322;&#261;czenie kablowe.
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_204389358" ENDARROW="Default" ENDINCLINATION="615;0;" ID="Arrow_ID_984878961" STARTARROW="None" STARTINCLINATION="615;0;"/>
<node COLOR="#111111" CREATED="1361957606698" ID="ID_1240322630" MODIFIED="1364407674577" STYLE="bubble" TEXT="udhcpc -i eth0">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1364407297223" ID="ID_1983618228" MODIFIED="1364407684396" TEXT="dnsmasq">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Funkcje dnsmasq_*() obs&#322;uguj&#261; serwer DNS i DHCP, s&#322;u&#380;&#261;cy do udost&#281;pnienia po&#322;&#261;cze&#324; bezprzewodowych po kablu.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1364405974853" ID="ID_1903741515" MODIFIED="1364407871447" TEXT="WiFi - wlan0">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Funkcje wifi_*() obs&#322;uguj&#261;ce po&#322;&#261;czenie wifi.
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1297566231" ENDARROW="Default" ENDINCLINATION="442;0;" ID="Arrow_ID_724515757" STARTARROW="None" STARTINCLINATION="442;0;"/>
<node COLOR="#111111" CREATED="1361957689414" ID="ID_1832859850" MODIFIED="1364407764621" STYLE="bubble" TEXT="icd-wifi-cfg-[from|to]">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Synchronizuje konfiguracj&#281; w pliku /tmp/wpa_suppl.conf i w bazie config.db.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361957677426" ID="ID_1888373514" MODIFIED="1361977275555" STYLE="bubble" TEXT="wpa_supplicant">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361957667695" ID="ID_559770647" MODIFIED="1364407665439" STYLE="bubble" TEXT="udhcpc -i wlan0">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1364405997885" ID="ID_554811297" MODIFIED="1364407877828" TEXT="GSM - ppp0">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Funkcje gsm_*() obs&#322;uguj&#261;ce po&#322;&#261;czenie GSM.
    </p>
    <p>
      Nie zaimplementowane.
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_933283166" ENDARROW="Default" ENDINCLINATION="419;0;" ID="Arrow_ID_1850145407" STARTARROW="None" STARTINCLINATION="419;0;"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#111111" CREATED="1364406071691" ID="ID_295039692" MODIFIED="1364406115584" TEXT="icd-net-route-resolv">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Dynamiczne zarz&#261;dzanie bram&#261; i DNSami w zale&#380;no&#347;ci od stan&#243;w po&#322;&#261;cze&#324;
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1364407129263" ID="ID_1180110459" MODIFIED="1364407674577" TEXT="udhcpc.script">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zapisuje informacje o DNSach i routingu uzyskane przez udhcpc.
    </p>
    <p>
      Skrypt znajduje si&#281; w $ICD_SHARE_DIR
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1240322630" ENDARROW="Default" ENDINCLINATION="210;0;" ID="Arrow_ID_16927710" STARTARROW="None" STARTINCLINATION="210;0;"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_559770647" ENDARROW="Default" ENDINCLINATION="139;0;" ID="Arrow_ID_1819172573" STARTARROW="None" STARTINCLINATION="139;0;"/>
</node>
</node>
<node COLOR="#111111" CREATED="1361955426571" ID="ID_1531893197" MODIFIED="1364405825008" STYLE="bubble" TEXT="icd-itd-demon">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Demon obs&#322;uguj&#261;cy informacje z fotokom&#243;rek.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1734979662" ENDARROW="Default" ENDINCLINATION="188;0;" ID="Arrow_ID_1825416628" STARTARROW="None" STARTINCLINATION="188;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1361955407056" ID="ID_1660704319" MODIFIED="1364407764696" STYLE="bubble" TEXT="icd-fc-daemon">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Demon obs&#322;uguj&#261;cy wy&#347;wietlacz 2x16 i klawisze.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="132;0;" ID="Arrow_ID_685675608" STARTARROW="None" STARTINCLINATION="132;0;"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1332600065" ENDARROW="Default" ENDINCLINATION="566;0;" ID="Arrow_ID_413119158" STARTARROW="None" STARTINCLINATION="566;0;"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_59812596" ENDARROW="Default" ENDINCLINATION="619;0;" ID="Arrow_ID_583410413" STARTARROW="None" STARTINCLINATION="619;0;"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1361955492824" ID="ID_1149453662" MODIFIED="1364407764719" STYLE="bubble" TEXT="S80lighttpd">
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
<node COLOR="#111111" CREATED="1361955559131" ID="ID_72264620" MODIFIED="1362065025752" STYLE="bubble" TEXT="PHP (/var/www/)">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1361958791266" ID="ID_1592856150" MODIFIED="1364407764788" STYLE="bubble" TEXT="index.php">
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
    <p>
      Modyfikacj&#281; nale&#380;u zacz&#261;&#263; od zapoznania si&#281; z indeksem, co pozwoli &#322;atwo znale&#378;c potrzebne pliki.
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080"/>
</node>
<node COLOR="#111111" CREATED="1361955947717" ID="ID_435289127" MODIFIED="1361977275529" STYLE="bubble" TEXT="Raporty (inc/wyniki_*.php)">
<edge COLOR="#808080"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1086714611" ENDARROW="Default" ENDINCLINATION="384;0;" ID="Arrow_ID_497498761" STARTARROW="None" STARTINCLINATION="384;0;"/>
</node>
<node COLOR="#111111" CREATED="1361956060786" ID="ID_24673905" MODIFIED="1361977275529" STYLE="bubble" TEXT="Konfiguracja (inc/c_icdtcp.php)">
<edge COLOR="#808080"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_251290198" ENDARROW="Default" ENDINCLINATION="407;0;" ID="Arrow_ID_720040937" STARTARROW="None" STARTINCLINATION="407;0;"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1361955705250" ID="ID_130991821" MODIFIED="1361977275567" STYLE="bubble" TEXT="/home/data/">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<attribute_layout NAME_WIDTH="33" VALUE_WIDTH="33"/>
<node COLOR="#990000" CREATED="1361956156373" ID="ID_1172743165" MODIFIED="1361977275568" STYLE="bubble" TEXT="SQLite3">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361955728433" ID="ID_251290198" MODIFIED="1364407764829" STYLE="bubble" TEXT="config.db">
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
<node COLOR="#111111" CREATED="1361955717709" ID="ID_1086714611" MODIFIED="1364407764846" STYLE="bubble" TEXT="data.db">
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
<node COLOR="#111111" CREATED="1361973073369" ID="ID_426197472" MODIFIED="1364407764879" STYLE="bubble" TEXT="live.db">
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
</node>
<node COLOR="#0033ff" CREATED="1361956211817" ID="ID_241742111" MODIFIED="1364407764895" POSITION="right" STYLE="bubble" TEXT="elektronika">
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
<arrowlink COLOR="#ffd700" DESTINATION="ID_546530039" ENDARROW="Default" ENDINCLINATION="138;0;" ID="Arrow_ID_1372809567" STARTARROW="None" STARTINCLINATION="138;0;"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361956431087" ID="ID_1332600065" MODIFIED="1364407764915" STYLE="bubble" TEXT="LCD 2x16">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wy&#347;wietlacz 2x16 HD44780.
    </p>
    <p>
      
    </p>
    <p>
      http://en.wikipedia.org/wiki/Hitachi_HD44780_LCD_controller
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361956457217" ID="ID_59812596" MODIFIED="1361977275516" STYLE="bubble" TEXT="Klawiatura 6 klaw.">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361956631154" ID="ID_1734979662" MODIFIED="1364407764941" STYLE="bubble" TEXT="Fotokom&#xf3;rki ABCD">
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
<node COLOR="#00b439" CREATED="1361959534630" ID="ID_1216649671" MODIFIED="1364407764984" STYLE="bubble" TEXT="USB">
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
<node COLOR="#990000" CREATED="1361974800436" ID="ID_1297566231" MODIFIED="1364407871447" STYLE="bubble" TEXT="karta WiFi">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361974812832" ID="ID_933283166" MODIFIED="1364407877827" STYLE="bubble" TEXT="modem GSM">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361959541106" ID="ID_814654369" MODIFIED="1361977275509" STYLE="bubble" TEXT="RS-232 debug">
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361959560986" ID="ID_1797540967" MODIFIED="1361977275510" STYLE="bubble" TEXT="FTDI">
<edge COLOR="#808080"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361959568272" ID="ID_1659913736" MODIFIED="1364407765087" STYLE="bubble" TEXT="USB">
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
<node COLOR="#00b439" CREATED="1362138044081" ID="ID_800306751" MODIFIED="1364407765121" TEXT="Zworka USR">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Prze&#322;&#261;cza mikroprocesor w tryb programowania.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1364407827962" ID="ID_204389358" MODIFIED="1364408354597" TEXT="Karta ethernet">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wbudowana w modu&#322; karta sieciowa - eth0.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1361990322439" ID="ID_835665368" MODIFIED="1362139087568" POSITION="left" TEXT="           &apos;how_to_begin.sh&apos; &#xa;czyli jak zacz&#x105;&#x107; prac&#x119; z projektem">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361991567243" ID="ID_1597294584" MODIFIED="1364407765166" TEXT="pobranie projektu">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Do pracy z projektem potrzebny jest komputer z systemem Linux i uprawnienami roota.
    </p>
    <p>
      Nale&#380;y zainstalowa&#263; pakiety git i cmake.
    </p>
    <p>
      Inne pakiety b&#281;d&#261; potrzebne dopiero podczas instalacji.
    </p>
    <p>
      Nale&#380;y pobra&#263; skrypt <u>https://www.cattus.info/files/how_to_begin.sh</u>&#160;i uruchomi&#263; go.
    </p>
    <p>
      Nast&#281;pnie wykona&#263; kroki podawane przez skrypt.
    </p>
    <p>
      Po pobraniu projektu i skonfigurowaniu systemu uprawnienia roota nie b&#281;d&#261; wi&#281;cej potrzebne.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#00b439" CREATED="1361991578658" ID="ID_249111711" MODIFIED="1364407765195" TEXT="kompilacja">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Kompilacj&#281; lokaln&#261; mo&#380;na wykona&#263; skryptem {factory}/night.sh.
    </p>
    <p>
      Podczas kompilacji skrypt si&#281; &#322;&#261;czy do serwera, wi&#281;c warto umo&#380;liwi&#263; po&#322;&#261;czenia ssh bez podawania has&#322;a.
    </p>
    <p>
      Je&#347;li u&#380;ytkownik ma uprawnienia do wykonywania polecenia
    </p>
    <p>
      sudo -n shutdown -h now, to za pomoc&#261; night-poweroff.sh mo&#380;e
    </p>
    <p>
      ustawi&#263; automatyczne wy&#322;&#261;czenie komputera po zako&#324;czeniu.
    </p>
    <p>
      Na pocz&#261;tku mog&#261; pojawia&#263; si&#281; informacje o brakuj&#261;cych pakietach, wtedy nale&#380;y je zainstalowa&#263;
    </p>
    <p>
      i uruchomi&#263; kompilacj&#281; po raz kolejny.
    </p>
    <p>
      W {factory}/INFO znajduj&#261; si&#281; informacje o znanych b&#322;&#281;dach i problemach oraz ich rozwi&#261;zania.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#00b439" CREATED="1361991592171" ID="ID_1705591639" MODIFIED="1364407765215" TEXT="zaprogramowanie modu&#x142;u">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zaprogramowanie modu&#322;u nale&#380;y wykona&#263; na podstawie instrukcji
    </p>
    <p>
      https://www.cattus.info/wiki/FactoryProgramming.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#00b439" CREATED="1361991625626" ID="ID_400248337" MODIFIED="1364407765239" TEXT="&#x15b;rodowisko lokalne">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Projekt zosta&#322; umieszczony w katalogu ${ICDTCP3_DIR}.
    </p>
    <p>
      Poza repozytoriami dost&#281;pne s&#261; katalogi kompilacji:
    </p>
    <p>
      * arm_icd_compilation/
    </p>
    <p>
      * local_icd_compilation/
    </p>
    <p>
      oraz katalog data/ w kt&#243;rym mo&#380;na stworzy&#263; bazy danych, takie jak na urz&#261;dzeniu.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#00b439" CREATED="1362139088466" ID="ID_83905103" MODIFIED="1364407765257" TEXT="opcjonalna konfiguracja">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Dodatkowa konfiguracja jest opisana w pliku {factory}/OPTIONAL_LOCAL_CFG
    </p>
    <p>
      W katalogu {factory}/materialy_pomocnicze sa zgromadzone r&#243;&#380;ne informacje, kt&#243;re mog&#261; by&#263; przydatne.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="full-5"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1361989830384" ID="ID_217124938" MODIFIED="1361998361472" POSITION="left" TEXT="repozytoria&#xa;  projektu">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_546530039" ENDARROW="Default" ENDINCLINATION="350;0;" ID="Arrow_ID_1281355675" STARTARROW="None" STARTINCLINATION="350;0;"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361989843447" ID="ID_1572180523" MODIFIED="1366017915057" TEXT="buildroot">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Repozytorium zawiera wszystko potrzebne do stworzenia obrazu systemu,
    </p>
    <p>
      w tym odno&#347;niki do innych repozytori&#243;w (icd dost&#281;pnego lokalnie, a innych serwera).
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361994205003" ID="ID_93946501" MODIFIED="1364407765297" TEXT="make menuconfig">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Uruchamia graficzn&#261; konfiguracj&#281;.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361994198019" ID="ID_853953599" MODIFIED="1364407765315" TEXT="make newicd">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ustawia najnowszy commit z lokalnego repozytorium icd na u&#380;ywany przy kompilacji.
    </p>
    <p>
      Nalezy uruchomi&#263; po wykonaniu poprawek w icd.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361994198019" ID="ID_1338275509" MODIFIED="1364407765335" TEXT="make newlinux">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ustawia najnowszy commit z lokalnego repozytorium linux na u&#380;ywany przy kompilacji.
    </p>
    <p>
      Nalezy uruchomi&#263; po wykonaniu poprawek w kernelu.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361995244954" ID="ID_714174932" MODIFIED="1364407765356" TEXT="make">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Uruchamia kompilacj&#281;.
    </p>
    <p>
      Dla glibc 2.16 i nowszych pojawia si&#281; b&#322;&#261;d zwi&#261;zany z u&#380;yciem
    </p>
    <p>
      funkcji gets(). Nalezy kompilowa&#263; przez {factory}/night.sh lub na serwerze.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361994151707" ID="ID_604775108" MODIFIED="1364407765377" TEXT="fs/skeleton-icdtcp3/">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Szkielet systemu. Wszystkie pliki znajduj&#261;c&#281; si&#281; w tym folderze zostan&#261; przekopiowane
    </p>
    <p>
      do obrazu systemu.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1366017919139" ID="ID_1606057413" MODIFIED="1366018161706" TEXT="fs/skeleton-icdtcp3-prog/">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Szkielet systemu u&#380;ywanego do programowania modu&#322;u. Nale&#380;y kompilowa&#263; przez 'factory/night.sh prog'.
    </p>
    <p>
      Plik output/images/uImage nale&#380;y przenie&#347;&#263; do scripts/icdtcp3-uImage-prog.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361994260075" ID="ID_1567973" MODIFIED="1366017901454" TEXT="__outputs">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zawiera katalogi ze starymi kompilacjami. Mo&#380;na/nale&#380;y usuwa&#263;, gdy&#380; ka&#380;dy zajmuje ok 3,5GB.
    </p>
    <p>
      Bie&#380;&#261;ca kompilacja znajduje si&#281; w output, razem z kompilatorem u&#380;ywanym przy arm_icd_compilation.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361989874927" ID="ID_1242004422" MODIFIED="1364407765418" TEXT="icd">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      G&#322;&#243;wne repozytoruym, zawiera programy itd. pracuj&#261;ce na module
    </p>
    <p>
      i wykonuj&#261;ce wszystkie wymagane zadania.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1572180523" ENDARROW="Default" ENDINCLINATION="119;0;" ID="Arrow_ID_688374039" STARTARROW="None" STARTINCLINATION="119;0;"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1362064179289" ID="ID_934026059" MODIFIED="1364407765441" TEXT="src">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#377;r&#243;d&#322;a projektu.
    </p>
    <p>
      Skompilowane s&#261; przenoszone do /usr/bin.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1362064248168" ID="ID_86784941" MODIFIED="1364407765462" TEXT="gsoap">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wpisz make help, aby uzyska&#263; informacje.
    </p>
    <p>
      GSOAP jest u&#380;ywany przez icd-transfer-data.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1362064200689" ID="ID_878160728" MODIFIED="1364407765483" TEXT="scripts">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Skrypty projektu, przenoszone do /usr/bin.
    </p>
    <p>
      U&#380;ywane przy prostych funkcjonalno&#347;ciach i tam gdzie wymagana jest wi&#281;ksza stabilno&#347;&#263;,
    </p>
    <p>
      np. demony.
    </p>
    <p>
      Uwaga, pow&#322;ok&#261; jest #!/bin/sh.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1362064186529" ID="ID_984245859" MODIFIED="1364407765499" TEXT="share">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      G&#322;&#243;wnie zawiera pliki *.sql, z zapytaniami tworz&#261;cymi bazy.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1362064210346" ID="ID_1600635696" MODIFIED="1364407765515" TEXT="www">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Katalog g&#322;&#243;wny, przenoszony jako /var/www/.
    </p>
    <p>
      Zawiera skrypty PHP strony modu&#322;u.
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_72264620" ENDARROW="Default" ENDINCLINATION="904;0;" ID="Arrow_ID_427021052" STARTARROW="None" STARTINCLINATION="904;0;"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361989917303" ID="ID_1011028581" MODIFIED="1364407765539" TEXT="linux">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      J&#261;dro systemu.
    </p>
    <p>
      Nale&#380;y poda&#263; architektur&#281; w poleceniu, jak parametr dla make:
    </p>
    <p>
      make ARCH=arm CROSS_COMPILE=arm-linux- <i>polecenie</i>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1363285626080" ID="ID_1687498360" MODIFIED="1364407765564" TEXT="make menuconfig">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zmiana konfiguracji j&#261;dra:
    </p>
    <p>
      make ARCH=arm CROSS_COMPILE=arm-linux- icdtcp3_defconfig
    </p>
    <p>
      make ARCH=arm CROSS_COMPILE=arm-linux- menuconfig
    </p>
    <p>
      cp .config arch/arm/configs/icdtcp3_defconfig
    </p>
    <p>
      git add arch/arm/configs/icdtcp3_defconfig
    </p>
    <p>
      git commit
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1363285955147" ID="ID_80825288" MODIFIED="1364407765585" TEXT="pliki">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Konfiguracja: arch / arm / configs / icdtcp3_defconfig (menuconfig)
    </p>
    <p>
      Inicjalizacja urzadze&#324; na p&#322;ytce: arch / arm / mach-at91 / board-icdtcp3.c
    </p>
    <p>
      Drivery: drivers / icdtcp3 / *
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361989953999" ID="ID_11691733" MODIFIED="1364407765606" TEXT="at91bootstrap">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Konfiguracja podstawowego bootloadera dla mikroprocesora ARM AT91.
    </p>
    <p>
      Wywo&#322;uje on bootloadera II stopnia: u-boota.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1361989984071" ID="ID_146635606" MODIFIED="1365851340628" TEXT="u-boot">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Bootloader II stopnia.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1361990113455" ID="ID_1321429431" MODIFIED="1361990942115" POSITION="left" TEXT="    repozytoria&#xa;&#x15b;rodowiska pracy">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1361989884783" ID="ID_1979515212" MODIFIED="1366971374406" TEXT="scripts">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Skrypty s&#322;u&#380;&#261;ce do programowania modu&#322;u.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361990233447" ID="ID_846327775" MODIFIED="1364407765688" TEXT="icdtcp3-flash.sh">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Skrypt wgrywa obraz systemu na modu&#322;.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1365851154643" ID="ID_820137263" MODIFIED="1365851340629" TEXT="icdtcp3-reset.bin">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Odpowiednio skompilowany U-boot, np za pomoc&#261; compile_icdtcp3-reset.bin.sh
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_146635606" ENDARROW="Default" ENDINCLINATION="231;0;" ID="Arrow_ID_57349207" STARTARROW="None" STARTINCLINATION="231;0;"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1366971374412" ID="ID_1175042373" MODIFIED="1366971457739" TEXT="icdtcp3-uImage-prog">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Obraz systemu skompilowany przez '{factory}/night.sh prog'.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1361989866623" ID="ID_830333123" MODIFIED="1366018187000" TEXT="factory">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Skrypty u&#322;atwiaj&#261;ce prac&#281;.
    </p>
    <p>
      Nale&#380;y przeczyta&#263; INFO.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1361993009705" ID="ID_514329438" MODIFIED="1364407765766" TEXT="INFO">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Informacje o konfiguracji &#347;rodowiska, kt&#243;ra nie zosta&#322;a wykonana przez skrypt.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361990285615" ID="ID_432970373" MODIFIED="1364407765786" TEXT="bash_env">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Do w&#322;asnego .bashrc nalezy doda&#263; linie:
    </p>
    <p>
      &#160;&#160;export CATTUS_USER=tw&#243;j_u&#380;yszkodnik
    </p>
    <p>
      &#160;&#160;source ${ICDTCP3_DIR}/factory/bash_env.sh,
    </p>
    <p>
      aby by&#322;y dost&#281;pne wszystkie zmienne &#347;rodowiska.
    </p>
    <p>
      Warto zobaczy&#263; te&#380; aliasy, u&#322;atwiaj&#261;ce prac&#281; w konsoli.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361990280327" ID="ID_1660220833" MODIFIED="1361990283733" TEXT="project_docs/">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1361994811995" ID="ID_1444870573" MODIFIED="1364408138345">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;THIS document<br />(project_icdtcp3.mm)
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ten dokument zosta&#322; stworzony programem FreeMind, dost&#281;pnym na licencji GNU GPL V2+.
    </p>
    <p>
      http://freemind.sourceforge.net/wiki/index.php/Main_Page
    </p>
    <p>
      Jesli chcesz go edytowa&#263;, znajduje si&#281; on w repozytorium
    </p>
    <p>
      {factory}/project_docs/project_files/project_icdtcp3.mm.
    </p>
    <p>
      Nast&#281;pnie nale&#380;y go wyeksportowa&#263; na serwer (export/project_icdcp3_mm.sh).
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node COLOR="#990000" CREATED="1361991442796" ID="ID_573186179" MODIFIED="1364407765836" TEXT="how_to_begin.sh">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Skrypt do rozpocz&#281;cia pracy z projektem.
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_1597294584" ENDARROW="Default" ENDINCLINATION="321;0;" ID="Arrow_ID_1273918037" STARTARROW="None" STARTINCLINATION="321;0;"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361995395907" ID="ID_937614028" MODIFIED="1364407765855" TEXT="night.sh">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Nocna kompilacja (zwykle trwa d&#322;ugo, dlatego mozna uruchamia&#263; na noc. night-poweroff.sh pozwala na automatyczne wy&#322;&#261;cznenie.
    </p>
    <p>
      Wy&#322;&#261;czenie wymaga uprawnie&#324; do sudo -n shutdown -h now).
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ffd700" DESTINATION="ID_714174932" ENDARROW="Default" ENDINCLINATION="306;0;" ID="Arrow_ID_1401744080" STARTARROW="None" STARTINCLINATION="306;0;"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1361999967557" ID="ID_1306832455" MODIFIED="1362066465753" TEXT="git_for_all.sh">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wykonanie podstawowych polece&#324; gita dla wszystkich repozytori&#243;w w ${ICDTCP3_DIR}/,
    </p>
    <p>
      Dostepne jako alias 'gall'.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1366018187003" ID="ID_159226704" MODIFIED="1366018262657" TEXT="flash_icdtcp3.sh">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      S&#322;u&#380;y do programowania modu&#322;u.
    </p>
    <p>
      Programowane wymaga skompilowanego przynajmniej raz projektu.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
