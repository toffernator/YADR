if ! command -v pip &> /dev/null
then	
	rm -f get-pip.py
	curl --output get-pip.py https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
	echo "Assuming that export PATH=$PATH:/home/<user>/.local/bin is in your .bash_profile"
	rm -f get-pip.py
fi

if ! command -v nvm &> /dev/null
then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
	nvm install node
fi

if ! command -v lvim &> /dev/null
then
	bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
fi
