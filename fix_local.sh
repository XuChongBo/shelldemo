mkdir -p /var/lib/locales/supported.d/  \
&& echo "en_US.UTF-8 UTF-8\nzh_CN.UTF-8 UTF-8" > /var/lib/locales/supported.d/local \
&& locale-gen   \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
# setup env
#ENV LANG "en_US.UTF-8"
echo 'export LC_ALL=en_US.UTF-8' >> ~/.bashrc
echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
