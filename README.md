## Team Fortress 2 + Competitive + Docker

Docker image for a competitive tf2 server.

```
docker pull spiretf/docker-comp-server
```

See the [base server](https://github.com/spiretf/docker-tf2-server) for additional options

The server image comes with the etf2l and ugc configs and a set of usefull sourcemod plugins

## Addons and Plugins

- MetaMod:Source
- SourceMod
- SOAP-DM
- MedicStatus
- SupStats
- LogsTF
- Pause
- RecordSTV
- WaitForSTV
- AFK
- RestoreScore
- FixStvSlot
- Updater
- [WebRCON](https://github.com/spiretf/webrcon)
- [whitelist.tf downloader](https://github.com/spiretf/sm_whitelist)
- [missing map downloader](https://github.com/spiretf/mapdownloader)
- [Demos.tf](https://demos.tf)
- [autoexec](https://github.com/spiretf/autoexec)

## A Note on Maps

This image only has `cp_badlands` in the image, any other map that you try to switch to are automatically downloaded by the [map downloader plugin](https://github.com/spiretf/mapdownloader)
