About jpf-core files and directory:

.classpath:
    Eclipse file with directory properties.
    This could be safely removed in the future

.project:
    Eclipse-related file.
    This can be safely removed, as well.
 
eclipse:
    Eclipse launch config files

.idea:
    IntelliJ Idea content

META-INF:
    Contains manifest info.
    Only an XML file from the .idea dir makes reference to this manifest.

nbproject:
    Netbeans content

bin:
    Auxiliary scripts for running, testing, and debugging JPF

docs:
    Contains some wiki files

src:
    JPF sources

build.xml:
    Ant script

build.properties:
    Ant auxiliary properties file

jpf.properties:
    JPF properties

-----

jpf-template is basically a scaffolding project
It bootstraps a new jpf project.

Things to note:
- it hardcodes ignore files (mercurial)
- it adds IDE-dependent config file (e.g., eclipse, netbeans...)
