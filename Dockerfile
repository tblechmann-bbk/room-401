# Aktuelle stabile Fedora-Version eintragen (gleiche wie auf dem USB-Stick)
ARG FEDORA_VERSION=43
FROM quay.io/fedora-ostree-desktops/silverblue:${FEDORA_VERSION}

# Eigene Pakete – hier pflegst du künftig die Software für den Raum
RUN dnf -y install \
        vim \
        git \
        htop \
        langpacks-de \
    && dnf clean all

# Eigene Konfigurationsdateien (optional, Ordner "files/etc/..." im Repo)
# COPY files/etc/ /etc/

RUN bootc container lint