FROM fedora:36

RUN dnf install -y https://zeroc.com/download/ice/3.7/el8/ice-repo-3.7.el8.noarch.rpm

RUN dnf update -y

RUN dnf -y groupinstall 'Development Tools' 'Development Libraries' 'C Development Tools and Libraries'

RUN dnf install -y qt5-qtsvg-devel openssl-devel protobuf-devel \
    libsndfile-devel libXi-devel libXext-devel speech-dispatcher-devel \
    avahi-compat-libdns_sd-devel alsa-lib-devel libICE-devel qt5-linguist \
    libogg-devel boost-devel libcap-devel poco-devel qca-qt5-devel.x86_64 \
    libice-c++-devel libice3.7-c++ glibc-static.i686 glibc-static.x86_64 \
    libstdc++-devel.x86_64 libstdc++-devel.i686 libstdc++-static.i686 \
    libstdc++-static.x86_64

# After - inside the container
# git clone https://github.com/mumble-voip/mumble && cd mumble
# git checkout v1.4.230
# mkdir -p build && cd build
# git submodule update --init --recursive
# cmake -Doverlay-xcompile=OFF ..
# make -j $(nproc)
