# GC-Steamproxy

## Many thanks!
Many thanks to multiplay.co.uk for their blog article to this setup. I ported this to linux (CentOS) and serve it to the world, for their setup.
Blog: http://blog.multiplay.co.uk/2014/04/lancache-dynamically-caching-game-installs-at-lans-using-nginx/

## GamersCongress
We use this setup a few years on our GamersCongress in Vilsbiburg. Feel free to visit us :-)

## Reverse Proxy
For this functionality we use NGINX with its caching service. All of this configuration is in /etc/nginx.

All of the logs and all of the data is stored in /data.

## DNS
### Steam
lancache-steam cs.steampowered.com *.cs.steampowered.com content1.steampowered.com content2.steampowered.com content3.steampowered.com content4.steampowered.com content5.steampowered.com content6.steampowered.com content7.steampowered.com content8.steampowered.com *.hsar.steampowered.com.edgesuite.net *.akamai.steamstatic.com content-origin.steampowered.com client-download.steampowered.com

### Riot
lancache-riot l3cdn.riotgames.com

### Blizzard
lancache-blizzard dist.blizzard.com.edgesuite.net llnw.blizzard.com dist.blizzard.com blizzard.vo.llnwd.net

### Hirez
lancache-hirez hirez.http.internapcdn.net

### Origin
lancache-origin akamai.cdn.ea.com lvlt.cdn.ea.com

### Sony
lancache-sony pls.patch.station.sony.com

### Turbine
lancache-turbine download.ic.akamai.turbine.com launcher.infinitecrisis.com

### Microsoft
lancache-microsoft *.download.windowsupdate.com download.windowsupdate.com dlassets.xboxlive.com *.xboxone.loris.llnwd.net xboxone.vo.llnwd.net images-eds.xboxlive.com xbox-mbr.xboxlive.com

## NGINX
### Log format
We added some attributes to the log_format output. Logstash will use these for a better output (refer to https://easyengine.io/tutorials/nginx/upstream-cache-status-in-access-log/) :

   log_format rt_cache “$upstream_cache_status” “$host” “$http_range"

### TODO
Cache optimization
Logstash connection
