.class public Lorg/codehaus/groovy/tools/GrapeMain;
.super Lgroovy/lang/Script;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/tools/GrapeMain$_closure4;,
        Lorg/codehaus/groovy/tools/GrapeMain$_closure5;,
        Lorg/codehaus/groovy/tools/GrapeMain$_closure6;,
        Lorg/codehaus/groovy/tools/GrapeMain$_closure7;
    }
.end annotation


# static fields
.field private static $callSiteArray:Ljava/lang/ref/SoftReference;

.field public static __timeStamp:J

.field public static __timeStamp__239_neverHappen1402495627936:J


# instance fields
.field cmd:Lgroovyjarjarcommonscli/CommandLine;

.field commands:Ljava/lang/Object;

.field grapeHelp:Ljava/lang/Object;

.field help:Ljava/lang/Object;

.field install:Ljava/lang/Object;

.field list:Ljava/lang/Object;

.field options:Lgroovyjarjarcommonscli/Options;

.field resolve:Ljava/lang/Object;

.field setupLogging:Ljava/lang/Object;

.field uninstall:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain;->j6()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/tools/GrapeMain;->__timeStamp__239_neverHappen1402495627936:J

    const-wide v0, 0x1468b40f29fL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/tools/GrapeMain;->__timeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lgroovy/lang/Script;-><init>()V

    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain;->FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure1;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->install:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure2;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->uninstall:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure3;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->list:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->resolve:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure5;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->help:Ljava/lang/Object;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "install"

    aput-object v2, v1, v5

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "closure"

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/codehaus/groovy/tools/GrapeMain;->install:Ljava/lang/Object;

    aput-object v3, v2, v6

    const-string v3, "shortHelp"

    aput-object v3, v2, v7

    const-string v3, "Installs a particular grape"

    aput-object v3, v2, v8

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "uninstall"

    aput-object v2, v1, v7

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "closure"

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/codehaus/groovy/tools/GrapeMain;->uninstall:Ljava/lang/Object;

    aput-object v3, v2, v6

    const-string v3, "shortHelp"

    aput-object v3, v2, v7

    const-string v3, "Uninstalls a particular grape (non-transitively removes the respective jar file from the grape cache)"

    aput-object v3, v2, v8

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "list"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "closure"

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/codehaus/groovy/tools/GrapeMain;->list:Ljava/lang/Object;

    aput-object v4, v3, v6

    const-string v4, "shortHelp"

    aput-object v4, v3, v7

    const-string v4, "Lists all installed grapes"

    aput-object v4, v3, v8

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "resolve"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "closure"

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/codehaus/groovy/tools/GrapeMain;->resolve:Ljava/lang/Object;

    aput-object v4, v3, v6

    const-string v4, "shortHelp"

    aput-object v4, v3, v7

    const-string v4, "Enumerates the jars used by a grape"

    aput-object v4, v3, v8

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "help"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "closure"

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/codehaus/groovy/tools/GrapeMain;->help:Ljava/lang/Object;

    aput-object v4, v3, v6

    const-string v4, "shortHelp"

    aput-object v4, v3, v7

    const-string v4, "Usage information"

    aput-object v4, v3, v8

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->commands:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure6;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->grapeHelp:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure7;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->setupLogging:Ljava/lang/Object;

    aget-object v0, v0, v5

    const-class v1, Lgroovyjarjarcommonscli/Options;

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lgroovyjarjarcommonscli/Options;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarcommonscli/Options;

    iput-object v0, p0, Lorg/codehaus/groovy/tools/GrapeMain;->options:Lgroovyjarjarcommonscli/Options;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/tools/GrapeMain;->cmd:Lgroovyjarjarcommonscli/CommandLine;

    return-void
.end method

.method private static synthetic DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x4f

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/tools/GrapeMain;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/tools/GrapeMain;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/tools/GrapeMain;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain;->DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/tools/GrapeMain;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public static synthetic j6()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain;->FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/tools/GrapeMain;->$callSiteArray:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "runScript"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "create"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v1, "withArgName"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v1, "withArgName"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0xe

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0xf

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x10

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x11

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x12

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x13

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x14

    const-string v1, "addOptionGroup"

    aput-object v1, p0, v0

    const/16 v0, 0x15

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x16

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x17

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x18

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x19

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x1b

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x1c

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x1d

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x1e

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x1f

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x20

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x21

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x22

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x23

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x24

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x25

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x26

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x27

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x28

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x29

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x2a

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x2b

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x2c

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x2d

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x2e

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x2f

    const-string v1, "addOption"

    aput-object v1, p0, v0

    const/16 v0, 0x30

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x31

    const-string v1, "withLongOpt"

    aput-object v1, p0, v0

    const/16 v0, 0x32

    const-string v1, "withDescription"

    aput-object v1, p0, v0

    const/16 v0, 0x33

    const-string v1, "hasArg"

    aput-object v1, p0, v0

    const/16 v0, 0x34

    const-string v1, "parse"

    aput-object v1, p0, v0

    const/16 v0, 0x35

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x36

    const-string v1, "args"

    aput-object v1, p0, v0

    const/16 v0, 0x37

    const-string v1, "hasOption"

    aput-object v1, p0, v0

    const/16 v0, 0x38

    const-string v1, "call"

    aput-object v1, p0, v0

    const/16 v0, 0x39

    const-string v1, "hasOption"

    aput-object v1, p0, v0

    const/16 v0, 0x3a

    const-string v1, "getVersion"

    aput-object v1, p0, v0

    const/16 v0, 0x3b

    const-string v1, "println"

    aput-object v1, p0, v0

    const/16 v0, 0x3c

    const-string v1, "getProperty"

    aput-object v1, p0, v0

    const/16 v0, 0x3d

    const-string v1, "each"

    aput-object v1, p0, v0

    const/16 v0, 0x3e

    const-string v1, "getOptionValues"

    aput-object v1, p0, v0

    const/16 v0, 0x3f

    const-string v1, "args"

    aput-object v1, p0, v0

    const/16 v0, 0x40

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x41

    const-string v1, "call"

    aput-object v1, p0, v0

    const/16 v0, 0x42

    const-string v1, "containsKey"

    aput-object v1, p0, v0

    const/16 v0, 0x43

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x44

    const-string v1, "closure"

    aput-object v1, p0, v0

    const/16 v0, 0x45

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x46

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x47

    const-string v1, "println"

    aput-object v1, p0, v0

    const/16 v0, 0x48

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x49

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x4a

    const-string v1, "call"

    aput-object v1, p0, v0

    const/16 v0, 0x4b

    const-string v1, "containsKey"

    aput-object v1, p0, v0

    const/16 v0, 0x4c

    const-string v1, "closure"

    aput-object v1, p0, v0

    const/16 v0, 0x4d

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x4e

    const-string v1, "println"

    aput-object v1, p0, v0

    return-void
.end method
