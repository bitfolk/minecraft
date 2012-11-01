# Overviewer

We have an install of [Minecraft Overviewer](http://overviewer.org/) which generates our [pretty world map](http://minecraft.bitfolk.com/viewer/clamps/).

*   `etc/overviewer.conf`
    
    Our config file.

*   `bin/overviewer-wrapper.sh`
    
    Wrapper script to be called from cron, ensures only one copy of overviewer can be running at once.
