# DAppNodePackage folding@home
DAppNodePackage of folding@home FAHClient


## FAHControl and FAHViewer connected to all FAHClient running on your DappNodes !

<p align="center">
 <img src=./images/folding.png width = 800>
</p>

Join the FAH "CyptoTwitter" Team 238061 and fight COVID-19. All instructions bellow.


## Introduction

 DAppNode Package wrapping of [Linux FAHClient](https://foldingathome.org/support/faq/installation-guides/linux/manual-installation-advanced/) see [Dockerfile](./build/Dockerfile)
 

- What is DappNode ? => https://dappnode.io/
- What is Folding@Home ? => https://foldingathome.org/
- What is a DAppNode Package ? => https://medium.com/luguslabs/how-to-create-and-manage-a-new-dappnode-package-b23460b4449

## Folding@Home and COVID-19
- Latest instructions to configure FAHclient COVID-19 helps here : 
- https://github.com/FoldingAtHome/coronavirus

- Article details here :
- https://foldingathome.org/2020/03/10/covid19-update/
- https://foldingathome.org/2020/02/27/foldinghome-takes-up-the-fight-against-covid-19-2019-ncov/

- FAQ FAH forum : [**FAQ SARS-CoV-2 (COVID-19) projects and FAH**](https://foldingforum.org/viewtopic.php?f=16&t=32463) 

- FAH "CyptoTwitter" team number is:238061. https://stats.foldingathome.org/team/238061
- Default Team selected: FAH "CyptoTwitter" 238061.
- Anonymous user is set by default. You can create your user and passkey at https://apps.foldingathome.org/getpasskey

## DappNodeInstall Link :

http://my.dappnode/#/installer/folding-at-home.public.dappnode.eth

# Folding@home Deployment on DAppNodes

## Prerequisite

If you do not have physical devices. You can [buy](https://shop.dappnode.io/) hardware with DAppNode fully ready to start.

On your physical device, [install DAppNode](https://dappnode.github.io/DAppNodeDocs/install/) ISO image or launch the DAppNode init script.

## Install FAHCLient DAppNode Package

- Connect to you DAppNode interface : http://my.dappnode/
- Go to install tab : http://my.dappnode/#/installer
- Search with DNP `folding-at-home.public.dappnode.eth` or with latest IPFS hash that can be find on [DAppNodePackage-folding-at-home](https://github.com/luguslabs/DAppNodePackage-folding-at-home/releases)

Note :
You will have to wait for the main Ethereum DAppNode package to be synched to be able to install from the DNP name: `folding-at-home.public.dappnode.eth`.
If you do not want to wait to be synch you can still install with direct IPFS link hash present in [releases](https://github.com/luguslabs/DAppNodePackage-folding-at-home/releases) but you will have to switch the "Bypass core restriction" button.

- Click install. http://my.dappnode/#/installer/folding-at-home.public.dappnode.eth

<p align="center">
 <img src=./images/installFAHClient.png width = 800>
</p>

- You can modify default values and add other FAH client options in `ADDITIONAL_OPTIONS` field. 

<p align="center">
 <img src=./images/configureFAHClient.png width = 800>
</p>



### Environment Variables

| Variable | Description | Values |
|----------|-------------|--------|
| `PAUSE_ON_START` | default <boolean=false>, If true the slot will be started in a paused state. It allows you configure before starting folding| true|false |
| `ADDITIONAL_OPTIONS` |see all options [FAHClient --help](https://github.com/luguslabs/DAppNodePackage-folding-at-home/blob/master/README.md#fahclient-usage). --option=value | string |
| `TEAM` |Your team number. | Number |
| `USER` |Your user name. | string |
| `PASSKEY` |Your passkey or create one here: https://apps.foldingathome.org/getpasskey | string |
| `CAUSE` |The cause you prefer to support. default ANY | string |
| `CPUS` |How many CPUs a slot should use. <= 0 will use all the CPUs detected in the system. | string |
| `CPU_USAGE` |The maximum percentage of the CPU a core should use. Not implemented by all cores.| integer 10 -> 100 |
| `GPU` |gpu <boolean=true>. Enable or disable auto-configuration of GPU slots, requires appropriate hardware. | boolean |
| `SMP` | <boolean=true>. Enable or disable auto-configuration of SMP slots, requires appropriate hardware. | boolean |
| `ALLOW` |<string=127.0.0.1> Client addresses which are allowed to connect to this server. This option overrides IPs which are denied in the deny option. The pattern 0/0 matches all addresses.| <string=127.0.0.1> |
| `COMMAND_ALLOW_NO_PASS` |<string=127.0.0.1> IP address ranges that are allowed access to the command server with out a password if the 'password' option is set. These addresses will also have to be allowed IP based access.|<string=127.0.0.1> |

Then, click `Submit` Button at the bottom of the page.



- Read, understand and Accept disclaimer :

<p align="center">
 <img src=./images/disclamerFAHClient.png width = 800>
</p>


You can go now to the logs tab of the package to check logs.

## Check FAHClient Logs

- Connect to you DAppNode interface : http://my.dappnode/
- Go to http://my.dappnode/#/packages tab
- Click on Folding At Home
- Go to Logs Tab: http://my.dappnode/#/packages/folding-at-home.public.dappnode.eth/logs

<p align="center">
 <img src=./images/deployment-on-dappnodes-logs.png width = 800>
</p>

## Restart a FAHClient Package Node

- Connect to you DAppNode interface: http://my.dappnode/
- Go to package tab http://my.dappnode/#/packages
- Click on Folding At Home
- Click on Controls tab:http://my.dappnode/#/packages/folding-at-home.public.dappnode.eth/controls
- click restart.

## Modify Package config 

- Go to tab: http://my.dappnode/#/packages/folding-at-home.public.dappnode.eth/config
- Modify fields values in the tab
- Click on `"update environment variables"` button at the bottom. It will automatically restart the package with the new env variable set.

## Connect FAHControl web interface to FAHClient on DAppNode

### Install FAHControl on your machine 

Follow instructions here regarding your machine type: Mac, ubuntu windows ,etc ...

https://foldingathome.org/start-folding/

For instance, for ubuntu machine. Install looks like this :

```
sudo echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" | sudo tee -a /etc/apt/sources.list
sudo echo "deb-src http://archive.ubuntu.com/ubuntu trusty main universe" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3B4FE6ACC0B21F32
sudo apt-get update
sudo apt-get install -y python python-gnome2 python-support

wget https://download.foldingathome.org/releases/public/release/fahcontrol/debian-stable-64bit/v7.5/fahcontrol_7.5.1-1_all.deb
sudo dpkg -i --force-depends fahcontrol_7.5.1-1_all.deb
```

Not mandatory, but you may want to install also FAHviewer too :

```
sudo apt install -y libgl1-mesa-glx freeglut3

wget https://download.foldingathome.org/releases/public/release/fahviewer/debian-testing-64bit/v7.4/fahviewer_7.4.4_amd64.deb
sudo dpkg -i --force-depends fahviewer_7.4.4_amd64.deb
```

### Configure FAHControl to connect to FAHClient on DAppNode

- Open FAHControl on your host. It should look like :

<p align="center">
 <img src=./images/FAHControlOpening.png width = 800>
</p>

- Retrieved the DynDNS of your DAppNode. Connected on the DAppNode WIFI or with VPN access, go to the page following :

http://my.dappnode/#/devices/dappnode_admin 

- Copy the DNS address that looks like: <ID_HERE>.dyndns.dappnode.io

<p align="center">
 <img src=./images/dappnodeDyndns.png width = 800>
</p>

- Go back to the FAHControl window and click + Add on the left `clients` Tab. Name the client DappNode for instance and paste the previous the DAppNode DynDNS copied.

<p align="center">
 <img src=./images/addDAppNodeClient.png width = 800>
</p>

- Click Save.

You must now be connected to the FAHClient that is running on your DAppNode and you can remote control, adjust and monitor it ! you can also open the FAHViewer if you have also installed it on your host machine.

Happy folding! 

<p align="center">
 <img src=./images/folding.png width = 800>
</p>


# Appendices 
## Local test package with docker-compose

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- git

 Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) commandline tool.

- docker

 Install [docker](https://docs.docker.com/engine/installation). The community edition (docker-ce) will work. In Linux make sure you grant permissions to the current user to use docker by adding current user to docker group, `sudo usermod -aG docker $USER`. Once you update the users group, exit from the current terminal and open a new one to make effect.

- docker-compose

 Install [docker-compose](https://docs.docker.com/compose/install)

**Note**: Make sure you can run `git`, `docker ps`, `docker-compose` without any issue and without sudo command.

### Building

```
$ git clone https://github.com/luguslabs/DAppNodePackage-folding-at-home
```

```
$ docker-compose build
```

## Running

### Start

```
$ docker-compose up -d
```

### Stop

```
$ docker-compose down
```

### Status

```
$ docker-compose ps
```

### Logs

```
$ docker-compose logs -f
```


## License

This project is licensed under GPL3 - see the [LICENSE](LICENSE) file for details

## References

[folding@home](https://foldingathome.org/)

[git](https://git-scm.com/)

[docker](https://www.docker.com/)

[docker-compose](https://docs.docker.com/compose/)

[DappNode](https://www.dappnode.io/)


## FAHClient usage 

```
 Usage: FAHClient [[--config] <filename>] [OPTIONS]...
 Command line options:
 --chdir <string>
 Change directory before starting server. All files opened after this
 point, such as the configuration file, must have paths relative to the new
 directory.
 
 --config <string=config.xml>
 Set configuration file.
 
 --configure
 Create a basic configuration file, then exit.
 
 --dump <string>
 Dump either 'all' or a specific work unit, identified by its queue ID,
 then exit.
 
 --finish
 Finish all current work units, send the results, then exit.
 
 --help [string]
 Print help screen or help on a particular option and exit.
 
 --info
 Print application and system information and exit.
 
 --license
 License information and exit.
 
 --lifeline <integer>
 The application will watch for this process ID and exit if it goes away.
 Usually the calling process' PID.
 
 --lspci
 List the PCI bus devices, which can be helpful for finding GPU vendor and
 device IDs.
 
 --print
 Print configuration and exit.
 
 --queue-info
 Print work unit queue then exit.
 
 --send
 Send all finished work units, then exit.
 
 --send-command <string>
 Send a command to an already running client.
 
 --send-finish [string]
 Finish a slot or all slots on an already running client.
 
 --send-pause [string]
 Pause a slot or all slots on an already running client.
 
 --send-unpause [string]
 Unpause a slot or all slots on an already running client.
 
 -v
 Increase verbosity level.
 
 --version
 Print application version and exit.
 
 -v
 Increase verbosity level.
 
 
 Configuration options:
 The following options can be specified in a configuration file or on the command
 line using the following syntax:
 
 --<option> <value>
 
 or:
 
 --<option>=<value>
 
 or when marking boolean values true:
 
 --<option>
 
 Client Control:
 client-threads <integer=6>
 The number of client processing threads.
 
 cycle-rate <double=4>
 The maximum cycle frequency in Hz of client threads.
 
 cycles <integer=-1>
 Run at most this many cycles. A value less than zero means run indefinitely.
 
 data-directory <string=.>
 The directory, relative to the current directory, where WU data and cores
 are stored.
 
 disable-sleep-when-active <boolean=true>
 Attempt to keep the system from sleeping when folding, unless on battery.
 
 exec-directory <string=/usr/bin>
 The directory, relative to the current executable, where executables and
 dynamic libraries are located.
 
 exit-when-done <boolean=false>
 Exit when all slots are paused.
 
 fold-anon <boolean=false>
 Start folding even if not configured.
 
 idle-seconds <integer=300>
 Number of seconds of system idle time before enabling idle folding. Set to
 zero to ignore system idle time.
 
 open-web-control <boolean=false>
 Make an operating system specific call to open the Web Control in a browser
 once client is fully loaded
 
 Configuration:
 config-rotate <boolean=true>
 Rotate the configuration file to a backup when saving would overwrite the
 previous configuration.
 
 config-rotate-dir <string=configs>
 Put rotated configs in this directory.
 
 config-rotate-max <integer=16>
 The maximum number of rotated configuration files to keep. A value of zero
 will keep all configuration file backups.
 
 Error Handling:
 max-slot-errors <integer=10>
 The maximum number of errors before a slot is paused.
 
 max-unit-errors <integer=5>
 The maximum number of errors before a work unit is dumped.
 
 Folding Core:
 checkpoint <integer=15>
 Tell cores to checkpoint at least every # minutes.
 
 core-dir <string=cores>
 The directory to store core files in.
 
 core-prep <string>
 Run this command on cores after they are downloaded. This option is useful
 for running Linux cores on BSD machines.
 
 core-priority <string=idle>
 Set the core priority. Valid values are: idle or low
 
 cpu-affinity <boolean=false>
 If true, try to lock core processes to a fixed CPU
 
 cpu-usage <integer=100>
 The maximum percentage of the CPU a core should use. Not implemented by all
 cores.
 
 gpu-usage <integer=100>
 GPU usage as a percent from 10-100
 
 no-assembly <boolean=false>
 Tell cores to disable optimized assembly code.
 
 Folding Slot Configuration:
 cause <string=ANY>
 The cause you prefer to support.
 
 client-subtype <string=LINUX>
 The client subtype
 
 client-type <string=normal>
 The client type. Can be 'normal', 'advanced' or 'beta'.
 
 cpu-species <string=X86_PENTIUM_II>
 CPU species.
 
 cpu-type <string=AMD64>
 CPU type.
 
 cpus <integer=-1>
 How many CPUs a slot should use. <= 0 will use all the CPUs detected in the
 system.
 
 cuda-index <string>
 The CUDA device index of the GPU, counting starts from 0.
 
 extra-core-args <string>
 Pass extra arguments to the core.
 
 gpu <boolean=true>
 Enable or disable auto-confiugration of GPU slots, requires appropriate
 hardware.
 
 gpu-index <string>
 The index of the GPU as detected by the client. This index corresponds
 directly to the GPUs listed in the client's '--info' output.
 
 max-packet-size <string=normal>
 Max size in bytes of a work unit packet. Can be small=5MB, normal=10MB,
 big=500MB or a number.
 
 memory <string>
 Override memory, in bytes, reported to Folding@home.
 
 opencl-index <string>
 The OpenCL device index of the GPU, counting starts from 0.
 
 os-species <string=UNKNOWN>
 Operating system species.
 
 os-type <string=LINUX>
 Operating system type.
 
 project-key <integer=0>
 Key for access to restricted testing projects.
 
 smp <boolean=true>
 Enable or disable auto-configuration of SMP slots, requires appropriate
 hardware.
 
 GUI:
 gui-enabled <boolean=true>
 Set to false to disable the GUI. A GUI is not currently supported on all
 operating systems.
 
 HTTP Server:
 allow <string=127.0.0.1>
 Client addresses which are allowed to connect to this server. This option
 overrides IPs which are denied in the deny option. The pattern 0/0 matches
 all addresses.
 
 connection-timeout <integer=60>
 The maximum amount of time, in seconds, a connection can be idle before
 being dropped.
 
 deny <string=0/0>
 Client address which are not allowed to connect to this server.
 
 http-addresses <string=0:7396>
 A space separated list of server address and port pairs to listen on in the
 form <ip | hostname>[:<port>]
 
 https-addresses <string=>
 A space separated list of secure server address and port pairs to listen on
 in the form <ip | hostname>[:<port>]
 
 max-connect-time <integer=900>
 The maximum amount of time, in seconds, a client can be connected to the
 server.
 
 max-connections <integer=800>
 Sets the maximum number of simultaneous connections.
 
 max-request-length <integer=52428800>
 Sets the maximum length of a client request packet.
 
 min-connect-time <integer=300>
 The minimum amount of time, in seconds, a client must be connected to the
 server before it can be dropped in favor or a new connection.
 
 threads <integer=12>
 Sets the number of server threads.
 
 HTTP Server SSL:
 certificate-file <string>
 The servers certificate file in PEM format.
 
 crl-file <string>
 Supply a Certificate Revocation List. Overrides any internal CRL
 
 private-key-file <string>
 The servers private key file in PEM format.
 
 Logging:
 log <string=log.txt>
 Set log file.
 
 log-color <boolean=true>
 Print log messages with ANSI color coding.
 
 log-crlf <boolean=false>
 Print carriage return and line feed at end of log lines.
 
 log-date <boolean=false>
 Print date information with log entries.
 
 log-date-periodically <integer=21600>
 Print date to log before new log entries if so many seconds have passed
 since the last date was printed.
 
 log-debug <boolean=true>
 Disable or enable debugging info.
 
 log-domain <boolean=false>
 Print domain information with log entries.
 
 log-domain-levels <string ...>
 Set log levels by domain. Format is:
 <domain>[:i|d|t]:<level> ...
 Entries are separated by white-space and or commas.
 i - info
 d - debug
 For example: server:i:3 module:6
 Set 'server' domain info messages to level 3 and 'module' info and debug
 messages to level 6. All other domains will follow the system wide log
 verbosity level.
 If <level> is negative it is relative to the system wide verbosity.
 
 log-header <boolean=true>
 Enable log message headers.
 
 log-level <boolean=true>
 Print level information with log entries.
 
 log-no-info-header <boolean=true>
 Don't print 'INFO(#):' in header.
 
 log-redirect <boolean=false>
 Redirect all output to log file. Implies !log-to-screen.
 
 log-rotate <boolean=true>
 Rotate log files on each run.
 
 log-rotate-dir <string=logs>
 Put rotated logs in this directory.
 
 log-rotate-max <integer=16>
 Maximum number of rotated logs to keep.
 
 log-short-level <boolean=false>
 Print shortened level information with log entries.
 
 log-simple-domains <boolean=true>
 Remove any leading directories and trailing file extensions from domains so
 that source code file names can be easily used as log domains.
 
 log-thread-id <boolean=false>
 Print id with log entries.
 
 log-thread-prefix <boolean=true>
 Print thread prefixes, if set, with log entries.
 
 log-time <boolean=true>
 Print time information with log entries.
 
 log-to-screen <boolean=true>
 Log to screen.
 
 log-truncate <boolean=false>
 Truncate log file.
 
 verbosity <integer=3>
 Set logging level for INFO and DEBUG messages.
 
 Network:
 proxy <string=>
 Set proxy for outgoing HTTP connections
 
 proxy-enable <boolean=false>
 Enable proxy configuration
 
 proxy-pass <string=>
 Set password for proxy connections
 
 proxy-user <string=>
 Set user name for proxy connections
 
 Process Control:
 child <boolean=false>
 Disable 'daemon', 'fork', 'pid' and 'respawn' options. Also defaults
 'log-to-screen' to false. Used internally.
 
 daemon <boolean=false>
 Short for --pid --service --respawn --log='' --fork
 
 fork <boolean=false>
 Run in background.
 
 pid <boolean=false>
 Create PID file.
 
 pid-file <string=Folding@home Client.pid>
 Name of PID file.
 
 priority <string>
 Set the process priority. Valid values are: idle, low, normal, high or
 realtime.
 
 respawn <boolean=false>
 Run the application as a child process and respawn if it is killed or exits.
 
 run-as <string>
 Run as specified user
 
 service <boolean=false>
 Ignore user logout or hangup and interrupt signals
 
 Remote Command Server:
 command-address <string=0.0.0.0>
 The address to which the command server should be bound.
 
 command-allow-no-pass <string=127.0.0.1>
 IP address ranges that are allowed access to the command server with out a
 password if the 'password' option is set. These addresses will also have to
 be allowed IP based access.
 
 command-deny-no-pass <string=0/0>
 IP address ranges that are not allowed access to the command server with out
 a password if the 'password' option is set. Overriden by
 command-allow-no-pass
 
 command-enable <boolean=true>
 Set to false to disable the command server.
 
 command-port <integer=36330>
 The port to which the command server should be bound.
 
 eval <string>
 Evaluate the argument as a script.
 
 password <string>
 Set a command server password. Warning, setting a password disables the
 default IP address blocking.
 
 script <string>
 Run commands from a script file.
 
 Slot Control:
 idle <boolean=false>
 Only run slot when idle.
 
 max-shutdown-wait <integer=60>
 The maxumum amount of time to wait in seconds for a unit to exit on
 shutdown.
 
 pause-on-battery <boolean=true>
 Pause the client or slot when the OS indicates the machine is running on
 battery power.
 
 pause-on-start <boolean=false>
 If true the slot will be started in a paused state.
 
 paused <boolean=false>
 True of client is paused.
 
 power <string=light>
 Set the client's power level. Valid values are 'light', 'medium' or 'full'.
 This setting affects the defaults of several other options such as 'cpus',
 'pause-on-battery', etc.
 
 User Information:
 machine-id <integer=0>
 The machine ID.
 
 passkey <string=>
 Your passkey.
 
 team <integer=0>
 Your team number.
 
 user <string=Anonymous>
 Your user name.
 
 Web Server:
 web-allow <string=127.0.0.1>
 Client addresses which are allowed to connect to this Web server. This
 option overrides IPs which are denied in the web-deny option. This option
 differs from the 'allow'/'deny' options in that clients that are not allowed
 are served an access denied page rather than simply dropping the connection.
 The value '0/0' matches all IPs.
 
 web-deny <string=0/0>
 Client address which are not allowed to connect to this Web server.
 
 web-enable <boolean=true>
 Set to false to disable the web server.
 
 Web Server Sessions:
 session-cookie <string=sid>
 The name of the session cookie.
 
 session-lifetime <integer=86400>
 The maximum session lifetime in seconds. Zero for unlimited session
 lifetime.
 
 session-timeout <integer=3600>
 The max maximum amount of time in seconds since the last time a session was
 used before it timesout. Zero for no session timeout.
 
 Work Unit Control:
 dump-after-deadline <boolean=true>
 Dump units if their deadline has passed.
 
 max-queue <integer=16>
 Maximum units per slot in the work queue.
 
 max-units <integer=0>
 Process at most this number of units, then pause.
 
 next-unit-percentage <integer=99>
 Pre-download the next work unit when the current one is this far along.
 Values less than 90 are not allowed.
 
 stall-detection-enabled <boolean=false>
 Attempt to detect stalled work units and restart them.
 
 stall-percent <integer=5>
 Minimum estimated percent work unit completion since last frame before a WU
 can be considered stalled, if zero the percentage is ignored.
 
 stall-timeout <integer=1800>
 Minimum time, in seconds, since last frame before a WU can be considered
 stalled.
```
