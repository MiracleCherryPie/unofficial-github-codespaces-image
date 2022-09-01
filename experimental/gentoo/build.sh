echo MAKEOPTS="-j100" >> /etc/portage/make.conf
mkdir --parents /etc/portage/repos.conf
cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
emerge-webrsync
emerge --sync --quiet
emerge --quiet --update --deep --newuse @world
cat >> /etc/portage/make.conf << EOF
USE="java javascript jpeg libwww ruby zsh-completion bash-completion gentoo-vm introspection cxx threads jpeg2k jbootstrap cups"
ACCEPT_LICENSE="-* @FREE @BINARY-REDISTRIBUTABLE"
EOF
emerge --quiet app-portage/cpuid2cpuflags
echo "*/* $(cpuid2cpuflags)" > /etc/portage/package.use/00cpu-flags
emerge --quiet nodejs dev-lang/ruby dev-lang/php dev-lang/rust dev-java/openjdk
