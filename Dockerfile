FROM elementary/docker:loki

#Install build dependancies
RUN apt update && apt install -y \
		gettext \
		libappstream-dev \
		libgee-0.8-dev \
		libgranite-dev \
		libgtk-3-dev \
		libjson-glib-dev \
		libpackagekit-glib2-dev \
		libsoup2.4-dev \
		libunity-dev \
		libxml2-dev \
		libxml2-utils \
		meson \
		valac

ADD . $HOME

#Compile
RUN		meson build

RUN		cd build \
		ninja \ 
		ninja install \
		io.elementary.appcenter
