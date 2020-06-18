docker-rpi-ser2net
============

Serial to network (ser2net) provides a way for a user to connect from a network connection to a serial port.
I have this running for my Smart meter and RFXCOM. I want to have it available on my network because I want my USB plugged into my kubernetes cluster.

I have backed in the ser2net.conf because I don't want to be bothered with setting up virtual disks on my rasp. This should work out of the box.
To run depending on the USB location. For RFXCOM port 3001 is used.

    docker run -d \
      --name ser2net \
      --device=/dev/ttyUSB0 \
      --restart unless-stopped \
      -p 2001:2001 \
      tommeulensteen/docker-rpi-ser2net:latest

For more information about adding dsmr (smart meter) to homassistant see: 
https://www.home-assistant.io/integrations/dsmr/
for RFXCOM
https://www.home-assistant.io/integrations/rfxtrx/

