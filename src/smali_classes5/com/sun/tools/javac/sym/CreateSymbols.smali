.class public Lcom/sun/tools/javac/sym/CreateSymbols;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "CreateSymbols.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "com.sun.tools.javac.sym.Jar",
        "com.sun.tools.javac.sym.Dest"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method static getLegacyPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    const-string v0, "com.sun.tools.javac.resources.legacy"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 98
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 99
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 100
    :cond_1d
    return-object v1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    aget-object v0, p0, v5

    .line 106
    aget-object v1, p0, v6

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Xbootclasspath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Acom.sun.tools.javac.sym.Jar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Acom.sun.tools.javac.sym.Dest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    const/16 v3, 0xe5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v5

    const-string v2, "-XDprocess.packages"

    aput-object v2, v3, v6

    const/4 v2, 0x2

    const-string v4, "-proc:only"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "-processor"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "com.sun.tools.javac.sym.CreateSymbols"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    aput-object v0, v3, v2

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "java.applet"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "java.awt"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "java.awt.color"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "java.awt.datatransfer"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "java.awt.dnd"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "java.awt.event"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "java.awt.font"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "java.awt.geom"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "java.awt.im"

    aput-object v1, v3, v0

    const/16 v0, 0x10

    const-string v1, "java.awt.im.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x11

    const-string v1, "java.awt.image"

    aput-object v1, v3, v0

    const/16 v0, 0x12

    const-string v1, "java.awt.image.renderable"

    aput-object v1, v3, v0

    const/16 v0, 0x13

    const-string v1, "java.awt.print"

    aput-object v1, v3, v0

    const/16 v0, 0x14

    const-string v1, "java.beans"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    const-string v1, "java.beans.beancontext"

    aput-object v1, v3, v0

    const/16 v0, 0x16

    const-string v1, "java.io"

    aput-object v1, v3, v0

    const/16 v0, 0x17

    const-string v1, "java.lang"

    aput-object v1, v3, v0

    const/16 v0, 0x18

    const-string v1, "java.lang.annotation"

    aput-object v1, v3, v0

    const/16 v0, 0x19

    const-string v1, "java.lang.instrument"

    aput-object v1, v3, v0

    const/16 v0, 0x1a

    const-string v1, "java.lang.management"

    aput-object v1, v3, v0

    const/16 v0, 0x1b

    const-string v1, "java.lang.ref"

    aput-object v1, v3, v0

    const/16 v0, 0x1c

    const-string v1, "java.lang.reflect"

    aput-object v1, v3, v0

    const/16 v0, 0x1d

    const-string v1, "java.math"

    aput-object v1, v3, v0

    const/16 v0, 0x1e

    const-string v1, "java.net"

    aput-object v1, v3, v0

    const/16 v0, 0x1f

    const-string v1, "java.nio"

    aput-object v1, v3, v0

    const/16 v0, 0x20

    const-string v1, "java.nio.channels"

    aput-object v1, v3, v0

    const/16 v0, 0x21

    const-string v1, "java.nio.channels.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x22

    const-string v1, "java.nio.charset"

    aput-object v1, v3, v0

    const/16 v0, 0x23

    const-string v1, "java.nio.charset.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x24

    const-string v1, "java.rmi"

    aput-object v1, v3, v0

    const/16 v0, 0x25

    const-string v1, "java.rmi.activation"

    aput-object v1, v3, v0

    const/16 v0, 0x26

    const-string v1, "java.rmi.dgc"

    aput-object v1, v3, v0

    const/16 v0, 0x27

    const-string v1, "java.rmi.registry"

    aput-object v1, v3, v0

    const/16 v0, 0x28

    const-string v1, "java.rmi.server"

    aput-object v1, v3, v0

    const/16 v0, 0x29

    const-string v1, "java.security"

    aput-object v1, v3, v0

    const/16 v0, 0x2a

    const-string v1, "java.security.acl"

    aput-object v1, v3, v0

    const/16 v0, 0x2b

    const-string v1, "java.security.cert"

    aput-object v1, v3, v0

    const/16 v0, 0x2c

    const-string v1, "java.security.interfaces"

    aput-object v1, v3, v0

    const/16 v0, 0x2d

    const-string v1, "java.security.spec"

    aput-object v1, v3, v0

    const/16 v0, 0x2e

    const-string v1, "java.sql"

    aput-object v1, v3, v0

    const/16 v0, 0x2f

    const-string v1, "java.text"

    aput-object v1, v3, v0

    const/16 v0, 0x30

    const-string v1, "java.text.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x31

    const-string v1, "java.util"

    aput-object v1, v3, v0

    const/16 v0, 0x32

    const-string v1, "java.util.concurrent"

    aput-object v1, v3, v0

    const/16 v0, 0x33

    const-string v1, "java.util.concurrent.atomic"

    aput-object v1, v3, v0

    const/16 v0, 0x34

    const-string v1, "java.util.concurrent.locks"

    aput-object v1, v3, v0

    const/16 v0, 0x35

    const-string v1, "java.util.jar"

    aput-object v1, v3, v0

    const/16 v0, 0x36

    const-string v1, "java.util.logging"

    aput-object v1, v3, v0

    const/16 v0, 0x37

    const-string v1, "java.util.prefs"

    aput-object v1, v3, v0

    const/16 v0, 0x38

    const-string v1, "java.util.regex"

    aput-object v1, v3, v0

    const/16 v0, 0x39

    const-string v1, "java.util.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x3a

    const-string v1, "java.util.zip"

    aput-object v1, v3, v0

    const/16 v0, 0x3b

    const-string v1, "javax.accessibility"

    aput-object v1, v3, v0

    const/16 v0, 0x3c

    const-string v1, "javax.activation"

    aput-object v1, v3, v0

    const/16 v0, 0x3d

    const-string v1, "javax.activity"

    aput-object v1, v3, v0

    const/16 v0, 0x3e

    const-string v1, "javax.annotation"

    aput-object v1, v3, v0

    const/16 v0, 0x3f

    const-string v1, "javax.annotation.processing"

    aput-object v1, v3, v0

    const/16 v0, 0x40

    const-string v1, "javax.crypto"

    aput-object v1, v3, v0

    const/16 v0, 0x41

    const-string v1, "javax.crypto.interfaces"

    aput-object v1, v3, v0

    const/16 v0, 0x42

    const-string v1, "javax.crypto.spec"

    aput-object v1, v3, v0

    const/16 v0, 0x43

    const-string v1, "javax.imageio"

    aput-object v1, v3, v0

    const/16 v0, 0x44

    const-string v1, "javax.imageio.event"

    aput-object v1, v3, v0

    const/16 v0, 0x45

    const-string v1, "javax.imageio.metadata"

    aput-object v1, v3, v0

    const/16 v0, 0x46

    const-string v1, "javax.imageio.plugins.jpeg"

    aput-object v1, v3, v0

    const/16 v0, 0x47

    const-string v1, "javax.imageio.plugins.bmp"

    aput-object v1, v3, v0

    const/16 v0, 0x48

    const-string v1, "javax.imageio.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x49

    const-string v1, "javax.imageio.stream"

    aput-object v1, v3, v0

    const/16 v0, 0x4a

    const-string v1, "javax.jws"

    aput-object v1, v3, v0

    const/16 v0, 0x4b

    const-string v1, "javax.jws.soap"

    aput-object v1, v3, v0

    const/16 v0, 0x4c

    const-string v1, "javax.lang.model"

    aput-object v1, v3, v0

    const/16 v0, 0x4d

    const-string v1, "javax.lang.model.element"

    aput-object v1, v3, v0

    const/16 v0, 0x4e

    const-string v1, "javax.lang.model.type"

    aput-object v1, v3, v0

    const/16 v0, 0x4f

    const-string v1, "javax.lang.model.util"

    aput-object v1, v3, v0

    const/16 v0, 0x50

    const-string v1, "javax.management"

    aput-object v1, v3, v0

    const/16 v0, 0x51

    const-string v1, "javax.management.loading"

    aput-object v1, v3, v0

    const/16 v0, 0x52

    const-string v1, "javax.management.monitor"

    aput-object v1, v3, v0

    const/16 v0, 0x53

    const-string v1, "javax.management.relation"

    aput-object v1, v3, v0

    const/16 v0, 0x54

    const-string v1, "javax.management.openmbean"

    aput-object v1, v3, v0

    const/16 v0, 0x55

    const-string v1, "javax.management.timer"

    aput-object v1, v3, v0

    const/16 v0, 0x56

    const-string v1, "javax.management.modelmbean"

    aput-object v1, v3, v0

    const/16 v0, 0x57

    const-string v1, "javax.management.remote"

    aput-object v1, v3, v0

    const/16 v0, 0x58

    const-string v1, "javax.management.remote.rmi"

    aput-object v1, v3, v0

    const/16 v0, 0x59

    const-string v1, "javax.naming"

    aput-object v1, v3, v0

    const/16 v0, 0x5a

    const-string v1, "javax.naming.directory"

    aput-object v1, v3, v0

    const/16 v0, 0x5b

    const-string v1, "javax.naming.event"

    aput-object v1, v3, v0

    const/16 v0, 0x5c

    const-string v1, "javax.naming.ldap"

    aput-object v1, v3, v0

    const/16 v0, 0x5d

    const-string v1, "javax.naming.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x5e

    const-string v1, "javax.net"

    aput-object v1, v3, v0

    const/16 v0, 0x5f

    const-string v1, "javax.net.ssl"

    aput-object v1, v3, v0

    const/16 v0, 0x60

    const-string v1, "javax.print"

    aput-object v1, v3, v0

    const/16 v0, 0x61

    const-string v1, "javax.print.attribute"

    aput-object v1, v3, v0

    const/16 v0, 0x62

    const-string v1, "javax.print.attribute.standard"

    aput-object v1, v3, v0

    const/16 v0, 0x63

    const-string v1, "javax.print.event"

    aput-object v1, v3, v0

    const/16 v0, 0x64

    const-string v1, "javax.rmi"

    aput-object v1, v3, v0

    const/16 v0, 0x65

    const-string v1, "javax.rmi.CORBA"

    aput-object v1, v3, v0

    const/16 v0, 0x66

    const-string v1, "javax.rmi.ssl"

    aput-object v1, v3, v0

    const/16 v0, 0x67

    const-string v1, "javax.script"

    aput-object v1, v3, v0

    const/16 v0, 0x68

    const-string v1, "javax.security.auth"

    aput-object v1, v3, v0

    const/16 v0, 0x69

    const-string v1, "javax.security.auth.callback"

    aput-object v1, v3, v0

    const/16 v0, 0x6a

    const-string v1, "javax.security.auth.kerberos"

    aput-object v1, v3, v0

    const/16 v0, 0x6b

    const-string v1, "javax.security.auth.login"

    aput-object v1, v3, v0

    const/16 v0, 0x6c

    const-string v1, "javax.security.auth.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x6d

    const-string v1, "javax.security.auth.x500"

    aput-object v1, v3, v0

    const/16 v0, 0x6e

    const-string v1, "javax.security.cert"

    aput-object v1, v3, v0

    const/16 v0, 0x6f

    const-string v1, "javax.security.sasl"

    aput-object v1, v3, v0

    const/16 v0, 0x70

    const-string v1, "javax.sound.sampled"

    aput-object v1, v3, v0

    const/16 v0, 0x71

    const-string v1, "javax.sound.sampled.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x72

    const-string v1, "javax.sound.midi"

    aput-object v1, v3, v0

    const/16 v0, 0x73

    const-string v1, "javax.sound.midi.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x74

    const-string v1, "javax.sql"

    aput-object v1, v3, v0

    const/16 v0, 0x75

    const-string v1, "javax.sql.rowset"

    aput-object v1, v3, v0

    const/16 v0, 0x76

    const-string v1, "javax.sql.rowset.serial"

    aput-object v1, v3, v0

    const/16 v0, 0x77

    const-string v1, "javax.sql.rowset.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x78

    const-string v1, "javax.swing"

    aput-object v1, v3, v0

    const/16 v0, 0x79

    const-string v1, "javax.swing.border"

    aput-object v1, v3, v0

    const/16 v0, 0x7a

    const-string v1, "javax.swing.colorchooser"

    aput-object v1, v3, v0

    const/16 v0, 0x7b

    const-string v1, "javax.swing.filechooser"

    aput-object v1, v3, v0

    const/16 v0, 0x7c

    const-string v1, "javax.swing.event"

    aput-object v1, v3, v0

    const/16 v0, 0x7d

    const-string v1, "javax.swing.table"

    aput-object v1, v3, v0

    const/16 v0, 0x7e

    const-string v1, "javax.swing.text"

    aput-object v1, v3, v0

    const/16 v0, 0x7f

    const-string v1, "javax.swing.text.html"

    aput-object v1, v3, v0

    const/16 v0, 0x80

    const-string v1, "javax.swing.text.html.parser"

    aput-object v1, v3, v0

    const/16 v0, 0x81

    const-string v1, "javax.swing.text.rtf"

    aput-object v1, v3, v0

    const/16 v0, 0x82

    const-string v1, "javax.swing.tree"

    aput-object v1, v3, v0

    const/16 v0, 0x83

    const-string v1, "javax.swing.undo"

    aput-object v1, v3, v0

    const/16 v0, 0x84

    const-string v1, "javax.swing.plaf"

    aput-object v1, v3, v0

    const/16 v0, 0x85

    const-string v1, "javax.swing.plaf.basic"

    aput-object v1, v3, v0

    const/16 v0, 0x86

    const-string v1, "javax.swing.plaf.metal"

    aput-object v1, v3, v0

    const/16 v0, 0x87

    const-string v1, "javax.swing.plaf.multi"

    aput-object v1, v3, v0

    const/16 v0, 0x88

    const-string v1, "javax.swing.plaf.synth"

    aput-object v1, v3, v0

    const/16 v0, 0x89

    const-string v1, "javax.tools"

    aput-object v1, v3, v0

    const/16 v0, 0x8a

    const-string v1, "javax.transaction"

    aput-object v1, v3, v0

    const/16 v0, 0x8b

    const-string v1, "javax.transaction.xa"

    aput-object v1, v3, v0

    const/16 v0, 0x8c

    const-string v1, "javax.xml.parsers"

    aput-object v1, v3, v0

    const/16 v0, 0x8d

    const-string v1, "javax.xml.bind"

    aput-object v1, v3, v0

    const/16 v0, 0x8e

    const-string v1, "javax.xml.bind.annotation"

    aput-object v1, v3, v0

    const/16 v0, 0x8f

    const-string v1, "javax.xml.bind.annotation.adapters"

    aput-object v1, v3, v0

    const/16 v0, 0x90

    const-string v1, "javax.xml.bind.attachment"

    aput-object v1, v3, v0

    const/16 v0, 0x91

    const-string v1, "javax.xml.bind.helpers"

    aput-object v1, v3, v0

    const/16 v0, 0x92

    const-string v1, "javax.xml.bind.util"

    aput-object v1, v3, v0

    const/16 v0, 0x93

    const-string v1, "javax.xml.soap"

    aput-object v1, v3, v0

    const/16 v0, 0x94

    const-string v1, "javax.xml.ws"

    aput-object v1, v3, v0

    const/16 v0, 0x95

    const-string v1, "javax.xml.ws.handler"

    aput-object v1, v3, v0

    const/16 v0, 0x96

    const-string v1, "javax.xml.ws.handler.soap"

    aput-object v1, v3, v0

    const/16 v0, 0x97

    const-string v1, "javax.xml.ws.http"

    aput-object v1, v3, v0

    const/16 v0, 0x98

    const-string v1, "javax.xml.ws.soap"

    aput-object v1, v3, v0

    const/16 v0, 0x99

    const-string v1, "javax.xml.ws.spi"

    aput-object v1, v3, v0

    const/16 v0, 0x9a

    const-string v1, "javax.xml.transform"

    aput-object v1, v3, v0

    const/16 v0, 0x9b

    const-string v1, "javax.xml.transform.sax"

    aput-object v1, v3, v0

    const/16 v0, 0x9c

    const-string v1, "javax.xml.transform.dom"

    aput-object v1, v3, v0

    const/16 v0, 0x9d

    const-string v1, "javax.xml.transform.stax"

    aput-object v1, v3, v0

    const/16 v0, 0x9e

    const-string v1, "javax.xml.transform.stream"

    aput-object v1, v3, v0

    const/16 v0, 0x9f

    const-string v1, "javax.xml"

    aput-object v1, v3, v0

    const/16 v0, 0xa0

    const-string v1, "javax.xml.crypto"

    aput-object v1, v3, v0

    const/16 v0, 0xa1

    const-string v1, "javax.xml.crypto.dom"

    aput-object v1, v3, v0

    const/16 v0, 0xa2

    const-string v1, "javax.xml.crypto.dsig"

    aput-object v1, v3, v0

    const/16 v0, 0xa3

    const-string v1, "javax.xml.crypto.dsig.dom"

    aput-object v1, v3, v0

    const/16 v0, 0xa4

    const-string v1, "javax.xml.crypto.dsig.keyinfo"

    aput-object v1, v3, v0

    const/16 v0, 0xa5

    const-string v1, "javax.xml.crypto.dsig.spec"

    aput-object v1, v3, v0

    const/16 v0, 0xa6

    const-string v1, "javax.xml.datatype"

    aput-object v1, v3, v0

    const/16 v0, 0xa7

    const-string v1, "javax.xml.validation"

    aput-object v1, v3, v0

    const/16 v0, 0xa8

    const-string v1, "javax.xml.namespace"

    aput-object v1, v3, v0

    const/16 v0, 0xa9

    const-string v1, "javax.xml.xpath"

    aput-object v1, v3, v0

    const/16 v0, 0xaa

    const-string v1, "javax.xml.stream"

    aput-object v1, v3, v0

    const/16 v0, 0xab

    const-string v1, "javax.xml.stream.events"

    aput-object v1, v3, v0

    const/16 v0, 0xac

    const-string v1, "javax.xml.stream.util"

    aput-object v1, v3, v0

    const/16 v0, 0xad

    const-string v1, "org.ietf.jgss"

    aput-object v1, v3, v0

    const/16 v0, 0xae

    const-string v1, "org.omg.CORBA"

    aput-object v1, v3, v0

    const/16 v0, 0xaf

    const-string v1, "org.omg.CORBA.DynAnyPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xb0

    const-string v1, "org.omg.CORBA.ORBPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xb1

    const-string v1, "org.omg.CORBA.TypeCodePackage"

    aput-object v1, v3, v0

    const/16 v0, 0xb2

    const-string v1, "org.omg.stub.java.rmi"

    aput-object v1, v3, v0

    const/16 v0, 0xb3

    const-string v1, "org.omg.CORBA.portable"

    aput-object v1, v3, v0

    const/16 v0, 0xb4

    const-string v1, "org.omg.CORBA_2_3"

    aput-object v1, v3, v0

    const/16 v0, 0xb5

    const-string v1, "org.omg.CORBA_2_3.portable"

    aput-object v1, v3, v0

    const/16 v0, 0xb6

    const-string v1, "org.omg.CosNaming"

    aput-object v1, v3, v0

    const/16 v0, 0xb7

    const-string v1, "org.omg.CosNaming.NamingContextExtPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xb8

    const-string v1, "org.omg.CosNaming.NamingContextPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xb9

    const-string v1, "org.omg.SendingContext"

    aput-object v1, v3, v0

    const/16 v0, 0xba

    const-string v1, "org.omg.PortableServer"

    aput-object v1, v3, v0

    const/16 v0, 0xbb

    const-string v1, "org.omg.PortableServer.CurrentPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xbc

    const-string v1, "org.omg.PortableServer.POAPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xbd

    const-string v1, "org.omg.PortableServer.POAManagerPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xbe

    const-string v1, "org.omg.PortableServer.ServantLocatorPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xbf

    const-string v1, "org.omg.PortableServer.portable"

    aput-object v1, v3, v0

    const/16 v0, 0xc0

    const-string v1, "org.omg.PortableInterceptor"

    aput-object v1, v3, v0

    const/16 v0, 0xc1

    const-string v1, "org.omg.PortableInterceptor.ORBInitInfoPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xc2

    const-string v1, "org.omg.Messaging"

    aput-object v1, v3, v0

    const/16 v0, 0xc3

    const-string v1, "org.omg.IOP"

    aput-object v1, v3, v0

    const/16 v0, 0xc4

    const-string v1, "org.omg.IOP.CodecFactoryPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xc5

    const-string v1, "org.omg.IOP.CodecPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xc6

    const-string v1, "org.omg.Dynamic"

    aput-object v1, v3, v0

    const/16 v0, 0xc7

    const-string v1, "org.omg.DynamicAny"

    aput-object v1, v3, v0

    const/16 v0, 0xc8

    const-string v1, "org.omg.DynamicAny.DynAnyPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xc9

    const-string v1, "org.omg.DynamicAny.DynAnyFactoryPackage"

    aput-object v1, v3, v0

    const/16 v0, 0xca

    const-string v1, "org.w3c.dom"

    aput-object v1, v3, v0

    const/16 v0, 0xcb

    const-string v1, "org.w3c.dom.events"

    aput-object v1, v3, v0

    const/16 v0, 0xcc

    const-string v1, "org.w3c.dom.bootstrap"

    aput-object v1, v3, v0

    const/16 v0, 0xcd

    const-string v1, "org.w3c.dom.ls"

    aput-object v1, v3, v0

    const/16 v0, 0xce

    const-string v1, "org.xml.sax"

    aput-object v1, v3, v0

    const/16 v0, 0xcf

    const-string v1, "org.xml.sax.ext"

    aput-object v1, v3, v0

    const/16 v0, 0xd0

    const-string v1, "org.xml.sax.helpers"

    aput-object v1, v3, v0

    const/16 v0, 0xd1

    const-string v1, "com.sun.java.browser.dom"

    aput-object v1, v3, v0

    const/16 v0, 0xd2

    const-string v1, "org.w3c.dom"

    aput-object v1, v3, v0

    const/16 v0, 0xd3

    const-string v1, "org.w3c.dom.bootstrap"

    aput-object v1, v3, v0

    const/16 v0, 0xd4

    const-string v1, "org.w3c.dom.ls"

    aput-object v1, v3, v0

    const/16 v0, 0xd5

    const-string v1, "org.w3c.dom.ranges"

    aput-object v1, v3, v0

    const/16 v0, 0xd6

    const-string v1, "org.w3c.dom.traversal"

    aput-object v1, v3, v0

    const/16 v0, 0xd7

    const-string v1, "org.w3c.dom.html"

    aput-object v1, v3, v0

    const/16 v0, 0xd8

    const-string v1, "org.w3c.dom.stylesheets"

    aput-object v1, v3, v0

    const/16 v0, 0xd9

    const-string v1, "org.w3c.dom.css"

    aput-object v1, v3, v0

    const/16 v0, 0xda

    const-string v1, "org.w3c.dom.events"

    aput-object v1, v3, v0

    const/16 v0, 0xdb

    const-string v1, "org.w3c.dom.views"

    aput-object v1, v3, v0

    const/16 v0, 0xdc

    const-string v1, "com.sun.management"

    aput-object v1, v3, v0

    const/16 v0, 0xdd

    const-string v1, "com.sun.security.auth"

    aput-object v1, v3, v0

    const/16 v0, 0xde

    const-string v1, "com.sun.security.auth.callback"

    aput-object v1, v3, v0

    const/16 v0, 0xdf

    const-string v1, "com.sun.security.auth.login"

    aput-object v1, v3, v0

    const/16 v0, 0xe0

    const-string v1, "com.sun.security.auth.module"

    aput-object v1, v3, v0

    const/16 v0, 0xe1

    const-string v1, "com.sun.security.jgss"

    aput-object v1, v3, v0

    const/16 v0, 0xe2

    const-string v1, "com.sun.net.httpserver"

    aput-object v1, v3, v0

    const/16 v0, 0xe3

    const-string v1, "com.sun.net.httpserver.spi"

    aput-object v1, v3, v0

    const/16 v0, 0xe4

    const-string v1, "javax.smartcardio"

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/sun/tools/javac/Main;->compile([Ljava/lang/String;)I

    .line 341
    return-void
.end method


# virtual methods
.method createSymbols()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-static {}, Lcom/sun/tools/javac/sym/CreateSymbols;->getLegacyPackages()Ljava/util/Set;

    move-result-object v9

    .line 362
    invoke-static {}, Lcom/sun/tools/javac/sym/CreateSymbols;->getLegacyPackages()Ljava/util/Set;

    move-result-object v10

    .line 363
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/sym/CreateSymbols;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 365
    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getSpecifiedPackages()Ljava/util/Set;

    move-result-object v4

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/sym/CreateSymbols;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v2

    const-string v3, "com.sun.tools.javac.sym.Jar"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 367
    if-eqz v3, :cond_27c

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/sym/CreateSymbols;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v2

    const-string v5, "com.sun.tools.javac.sym.Dest"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 370
    if-eqz v5, :cond_274

    .line 373
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 374
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-interface {v10, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 379
    :cond_5c
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v2

    .line 380
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v4, v6, v7}, Ljavax/tools/JavaCompiler;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;

    move-result-object v4

    .line 381
    invoke-static {v3}, Ljavax/tools/StandardLocation;->locationFor(Ljava/lang/String;)Ljavax/tools/JavaFileManager$Location;

    move-result-object v12

    .line 382
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-static {v6}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-interface {v4, v12, v3}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 384
    sget-object v3, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 385
    sget-object v3, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 388
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v3, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v4, v3}, Ljavax/tools/StandardJavaFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9b
    :goto_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 390
    new-instance v8, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    const-string v14, "rt.jar"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 391
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 393
    :cond_c1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using boot class path = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    sget-object v3, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    invoke-interface {v4, v3, v7}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 397
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_ed

    .line 399
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1f8

    .line 401
    :cond_ed
    sget-object v5, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljavax/tools/StandardJavaFileManager;->setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 402
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 403
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 404
    const-string v3, "-XDdev"

    invoke-static {v3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 407
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Ljavax/tools/JavaCompiler;->getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/api/JavacTaskImpl;

    .line 409
    invoke-virtual {v2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v6

    .line 411
    invoke-virtual {v2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    .line 412
    invoke-virtual {v2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassWriter;

    move-result-object v7

    .line 413
    invoke-virtual {v2}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v2

    .line 414
    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->proprietaryType:Lcom/sun/tools/javac/code/Type;

    .line 416
    new-instance v8, Lcom/sun/tools/javac/code/Attribute$Compound;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Lcom/sun/tools/javac/code/Attribute$Compound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    .line 418
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/tools/javac/code/Type;->moreInfo:Z

    .line 419
    new-instance v15, Lcom/sun/tools/javac/jvm/Pool;

    invoke-direct {v15}, Lcom/sun/tools/javac/jvm/Pool;-><init>()V

    .line 420
    sget-object v2, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, ""

    const-string v5, ""

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v12, v5, v2, v0}, Ljavax/tools/StandardJavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_158
    :goto_158
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_284

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/tools/JavaFileObject;

    .line 421
    invoke-interface {v4, v12, v2}, Ljavax/tools/StandardJavaFileManager;->inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v17

    .line 422
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 423
    const/4 v5, -0x1

    if-ne v2, v5, :cond_20f

    move-object v2, v3

    .line 424
    :goto_174
    const/4 v5, 0x0

    .line 425
    invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_218

    .line 426
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_184

    .line 427
    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_184
    :goto_184
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/main/JavaCompiler;->resolveIdent(Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 438
    iget v0, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->kind:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_222

    .line 439
    const/16 v5, 0x24

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_158

    .line 440
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring (other) "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, " : "

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 400
    :cond_1f8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 423
    :cond_20f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_174

    .line 429
    :cond_218
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26f

    .line 430
    const/4 v2, 0x1

    move v5, v2

    goto/16 :goto_184

    .line 445
    :cond_222
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->complete()V

    .line 446
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v17

    sget-object v18, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_253

    .line 447
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ignoring (bad) "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_158

    .line 450
    :cond_253
    check-cast v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 451
    if-eqz v5, :cond_261

    .line 452
    iget-object v5, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    if-nez v5, :cond_268

    .line 453
    invoke-static {v8}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 454
    :goto_25f
    iput-object v5, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 456
    :cond_261
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2, v7}, Lcom/sun/tools/javac/sym/CreateSymbols;->writeClass(Lcom/sun/tools/javac/jvm/Pool;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/jvm/ClassWriter;)V

    goto/16 :goto_158

    .line 454
    :cond_268
    iget-object v5, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v5, v8}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    goto :goto_25f

    .line 434
    :cond_26f
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_158

    .line 371
    :cond_274
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Must use -Acom.sun.tools.javac.sym.Dest=LOCATION_OF_JAR"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_27c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Must use -Acom.sun.tools.javac.sym.Jar=LOCATION_OF_JAR"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_284
    return-void
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .registers 2

    .line 492
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latest()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 345
    :try_start_0
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 346
    invoke-virtual {p0}, Lcom/sun/tools/javac/sym/CreateSymbols;->createSymbols()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_22
    .catchall {:try_start_0 .. :try_end_9} :catchall_b

    .line 356
    :cond_9
    :goto_9
    const/4 v0, 0x1

    return v0

    .line 350
    :catchall_b
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 352
    if-nez v1, :cond_33

    .line 354
    :goto_12
    iget-object v1, p0, Lcom/sun/tools/javac/sym/CreateSymbols;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 347
    :catch_22
    move-exception v0

    .line 348
    iget-object v1, p0, Lcom/sun/tools/javac/sym/CreateSymbols;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    .line 349
    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_33
    move-object v0, v1

    goto :goto_12
.end method

.method writeClass(Lcom/sun/tools/javac/jvm/Pool;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/jvm/Pool;->reset()V

    .line 475
    iput-object p1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 476
    invoke-virtual {p3, p2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Ljavax/tools/JavaFileObject;

    .line 477
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    :goto_f
    if-eqz v1, :cond_34

    .line 478
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_22

    .line 479
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 480
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 481
    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/sym/CreateSymbols;->writeClass(Lcom/sun/tools/javac/jvm/Pool;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 477
    :cond_22
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;
    :try_end_24
    .catch Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow; {:try_start_0 .. :try_end_24} :catch_2d
    .catch Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow; {:try_start_0 .. :try_end_24} :catch_26

    move-object v1, v0

    goto :goto_f

    .line 486
    :catch_26
    move-exception v0

    .line 487
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 484
    :catch_2d
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 488
    :cond_34
    return-void
.end method
