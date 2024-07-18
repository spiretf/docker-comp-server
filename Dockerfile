from spiretf/docker-tf2-server
maintainer Robin Appelman <robin@icewind.nl>

ADD ./socket_3.0.1.zip /
ADD ./maps.sh ./sourcemod.sh ./plugins.sh ./configs.sh $SERVER/
RUN $SERVER/maps.sh \
	&& $SERVER/sourcemod.sh \
	&& $SERVER/plugins.sh \
	&& $SERVER/configs.sh

EXPOSE 27015/udp 27015/tcp 27021/tcp 27020/udp

WORKDIR /home/$USER/hlserver

ENTRYPOINT ["./tf.sh"]
CMD ["+sv_pure", "1", "+mapcycle", "mapcycle_quickplay_payload.txt", "+map", "cp_badlands", "+maxplayers", "24"]
