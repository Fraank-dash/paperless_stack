# When will it be finished?

- i am lazy :'D
- idk: probably end of 25Q2 or later 

# yet another paperless-stack with some gadgets.

todo: general description

- some of the code is just copy-paste from the official paperless repo (because it is a real good basis to begin with todo: link page)
 
## usecases

todo: description (todo: copy-paste)

- intended for just me myself and i as single user AND local use within the local network only. 
- nothing special. just managing my own docs

## Requirements

todo: description of my requirements (todo: copy-paste)

## realization of RQ

tbd

### WIP paperless-stack
```mermaid
C4Context
    title System Context for Paperless
    Enterprise_Boundary(e0, "Home") {
    System_Boundary(s0, "RPi5") {
        System_Boundary(d0,"Docker"){
            Container_Boundary(stack0,"Paperless-Stack"){
                ContainerQueue(broker, "redis")
                Container(paperless, "Paperless-NGX")
                ContainerDb(postgres0, "PostgresDB")
                Container(gotenberg,"gotenberg")
                Container(tika,"tika")
                }
            Container(samba,"Samba-Server")
            Container(ftp,"FTP-Server")
            Container_Boundary(stack1,"IoT-Stack"){
                ContainerDb(timescale,"timescaleDB")
                ContainerQueue(broker2, "node-red")
                Container(mqtt, "MQTT-Mosquitto")
            }
        }
        }
        
    System_Boundary(s1, "Remote-Server", "boundary") {
        Boundary(d1, "Docker-Ecosystem"){
            ContainerDb(postgres1, "PostgresDB")
    }
    }
    }
    BiRel(paperless,postgres0,"uses")
    BiRel(paperless,broker,"uses")
    BiRel(paperless,gotenberg,"uses")
    BiRel(paperless,tika,"uses")
    Rel(paperless,samba,"uses")
    Rel(paperless,ftp,"uses")
    Rel(mqtt,broker2,"sends data to")
    Rel(timescale,broker2,"sends data to")

    UpdateLayoutConfig($c4ShapeInRow="3", $c4BoundaryInRow="1")

```
todo: description

### WIP backup

todo: description

- imo more important than the description of the paperless-stack itself.


### WIP prod and test (based on paperless-stack + backup)

todo: description

todo: idea is to be to test and destroy while leaving the prod system unaffected by Layer8Problems

-> based on *backup*
