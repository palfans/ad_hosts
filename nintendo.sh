#! /bin/bash
wget -qO /home/palfans/work/ad_hosts/nintendo_list.conf.tmp "https://gitlab.com/a/90dns/-/raw/master/dnsmasq/dnsmasq.conf"
sed -i "s/^interface=.*$//g" /home/palfans/work/ad_hosts/nintendo_list.conf.tmp
grep test /home/palfans/work/ad_hosts/nintendo_list.conf.tmp | awk -F\/ '{print $3" "$2}' > /home/palfans/work/ad_hosts/nintendo_list.conf
grep 127.0.0.1 /home/palfans/work/ad_hosts/nintendo_list.conf.tmp | awk -F\/ '{print "||"$2"^$important"}' >> /home/palfans/work/ad_hosts/nintendo_list.conf
sed -i "s/\.nin/nin/g" /home/palfans/work/ad_hosts/nintendo_list.conf
rm /home/palfans/work/ad_hosts/nintendo_list.conf.tmp
