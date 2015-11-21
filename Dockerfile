from tf2-base
maintainer Robin Appelman <robin@icewind.nl>

ADD ./maps.sh $SERVER/maps.sh
RUN $SERVER/maps.sh

ADD ./sourcemod.sh $SERVER/sourcemod.sh
RUN $SERVER/sourcemod.sh

ADD ./plugins.sh $SERVER/plugins.sh
RUN $SERVER/plugins.sh

ADD ./configs.sh $SERVER/configs.sh
RUN $SERVER/configs.sh

EXPOSE 27015/udp

WORKDIR /home/$USER/hlserver
ENTRYPOINT ["./tf.sh"]
CMD ["+sv_pure", "1", "+mapcycle", "mapcycle_quickplay_payload.txt", "+map", "pl_badwater", "+maxplayers", "24"]
