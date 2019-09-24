# Garantindo as chaves
    KEY_PATH='/vagrant/files'
    mkdir -p /root/.ssh
    cp $KEY_PATH/key /root/.ssh/id_rsa
    cp $KEY_PATH/key.pub /root/.ssh/id_rsa.pub
    cp $KEY_PATH/key.pub /root/.ssh/authorized_keys
    chmod 400 /root/.ssh/id_rsa*
    cat /root/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

    # Personalizando o /etc/hosts
    HOSTS=$(grep dexter.com.br /etc/hosts | sort -n)
    echo -e "$HOSTS" > /etc/hosts
    echo '172.16.100.201	security	security.dexter.com.br' >> /etc/hosts	
    echo '172.16.100.202	storage		storage.dexter.com.br' >> /etc/hosts	
    echo '172.16.100.203	web01		web01.dexter.com.br' >> /etc/hosts		
    echo '172.16.100.204	web02		web02.dexter.com.br' >> /etc/hosts		
    echo '172.16.100.205	proxy		proxy.dexter.com.br' >> /etc/hosts		
    echo '172.16.100.206	mail		mail.dexter.com.br' >> /etc/hosts		
    echo '172.16.100.250	devops		devops.dexter.com.br' >> /etc/hosts	
    echo '200.100.50.150	cliente-externo	cliente-externo.dexter.com.br' >> /etc/hosts
