# dnstrans
Script em bash para realização de consultas de transferencias de zonas DNS

# Download
$ git clone https://github.com/thiagosmith/dnstrans.git

$ cd dnstrans


# Modo de uso:
$ chmod +x dns-trans.sh

$ ./dns-trans.sh

# Exemplo
$ ./dnstrans.sh google.com
Insira o dominio
============================================================
google.com
============================================================
==========Efetuando a pesquisa pelos servidores DNS=========
ns4.google.com
ns2.google.com
ns1.google.com
ns3.google.com
============================================================
===========Verificando a transferencia de Zona DNS==========

; <<>> DiG 9.20.0-Debian <<>> axfr google.com @ns4.google.com
;; global options: +cmd
google.com.             60      IN      SOA     ns1.google.com. dns-admin.google.com. 716161267 900 900 1800 60
; Transfer failed.

; <<>> DiG 9.20.0-Debian <<>> axfr google.com @ns2.google.com
;; global options: +cmd
google.com.             60      IN      SOA     ns1.google.com. dns-admin.google.com. 716161267 900 900 1800 60
; Transfer failed.

; <<>> DiG 9.20.0-Debian <<>> axfr google.com @ns1.google.com
;; global options: +cmd
google.com.             60      IN      SOA     ns1.google.com. dns-admin.google.com. 716161267 900 900 1800 60
; Transfer failed.

; <<>> DiG 9.20.0-Debian <<>> axfr google.com @ns3.google.com
;; global options: +cmd
google.com.             60      IN      SOA     ns1.google.com. dns-admin.google.com. 716161267 900 900 1800 60
; Transfer failed.
============================================================
=Fim da pesquisa de servidores e  transferencia de Zona DNS=
