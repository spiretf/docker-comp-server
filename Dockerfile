from spiretf/docker-tf2-server
maintainer Robin Appelman <robin@icewind.nl>

ADD ./maps.sh ./sourcemod.sh ./plugins.sh ./configs.sh $SERVER/
RUN $SERVER/maps.sh
RUN $SERVER/sourcemod.sh
RUN $SERVER/plugins.sh
RUN $SERVER/configs.sh

EXPOSE 27015/udp
EXPOSE 27015/tcp

WORKDIR /home/$USER/hlserver

EXPOSE 27021/tcp
EXPOSE 27020/udp

ENTRYPOINT ["./tf.sh"]
CMD ["+sv_pure", "1", "+mapcycle", "mapcycle_quickplay_payload.txt", "+map", "pl_badwater", "+maxplayers", "24"]
