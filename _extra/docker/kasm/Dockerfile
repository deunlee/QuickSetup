# https://hub.docker.com/r/kasmweb/rockylinux-9-desktop

FROM kasmweb/rockylinux-9-desktop:1.13.0

# Default User
ARG USER=kasm-user


USER root
RUN set -ex; \
	dnf updateinfo; \
	dnf install -y sudo htop zsh python3-pip; \
	dnf module install -y nodejs; \
	echo $USER ALL=\(ALL:ALL\) NOPASSWD: ALL >> /etc/sudoers;
RUN sed -i 's/openssl/[ ! -f "${HOME}\/.vnc\/self.pem" ] \&\& openssl/' /dockerstartup/vnc_startup.sh


USER $USER

# Install zsh and oh-my-zsh
RUN set -ex; \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --skip-chsh --unattended; \
	git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting; \
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions; \
	sed -i 's/ZSH_THEME="[A-Za-z]*"/ZSH_THEME="agnoster"/' ~/.zshrc; \
	sed -i 's/plugins=([A-Za-z]*)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc; \
	sudo usermod --shell $(which zsh) $USER;

# RUN echo "exec zsh >> ~/.bashrc" >> /dockerstartup/vnc_startup.sh;

# Add Nanum Font (Korean)
RUN set -ex; \
	curl -o nanumfont.zip http://cdn.naver.com/naver/NanumFont/fontfiles/NanumFont_TTF_ALL.zip; \
	sudo unzip nanumfont.zip -d /usr/share/fonts/nanum; \
	rm -f nanumfont.zip; \
	sudo fc-cache -f -v;

