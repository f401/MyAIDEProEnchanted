.class public Lorg/codehaus/groovy/tools/GrapeMain;
.super Lgroovy/lang/Script;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .registers 12

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

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "closure"

    aput-object v5, v4, v3

    iget-object v6, p0, Lorg/codehaus/groovy/tools/GrapeMain;->install:Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string v8, "shortHelp"

    aput-object v8, v4, v6

    const-string v9, "Installs a particular grape"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v1, v7

    const-string v4, "uninstall"

    aput-object v4, v1, v6

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v5, v4, v3

    iget-object v9, p0, Lorg/codehaus/groovy/tools/GrapeMain;->uninstall:Ljava/lang/Object;

    aput-object v9, v4, v7

    aput-object v8, v4, v6

    const-string v9, "Uninstalls a particular grape (non-transitively removes the respective jar file from the grape cache)"

    aput-object v9, v4, v10

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v1, v10

    const-string v4, "list"

    aput-object v4, v1, v2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v5, v4, v3

    iget-object v9, p0, Lorg/codehaus/groovy/tools/GrapeMain;->list:Ljava/lang/Object;

    aput-object v9, v4, v7

    aput-object v8, v4, v6

    const-string v9, "Lists all installed grapes"

    aput-object v9, v4, v10

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v1, v9

    const/4 v4, 0x6

    const-string v9, "resolve"

    aput-object v9, v1, v4

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v5, v4, v3

    iget-object v9, p0, Lorg/codehaus/groovy/tools/GrapeMain;->resolve:Ljava/lang/Object;

    aput-object v9, v4, v7

    aput-object v8, v4, v6

    const-string v9, "Enumerates the jars used by a grape"

    aput-object v9, v4, v10

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const/4 v9, 0x7

    aput-object v4, v1, v9

    const/16 v4, 0x8

    const-string v9, "help"

    aput-object v9, v1, v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    iget-object v4, p0, Lorg/codehaus/groovy/tools/GrapeMain;->help:Ljava/lang/Object;

    aput-object v4, v2, v7

    aput-object v8, v2, v6

    const-string v4, "Usage information"

    aput-object v4, v2, v10

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->commands:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure6;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->grapeHelp:Ljava/lang/Object;

    new-instance v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure7;

    invoke-direct {v1, p0, p0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/codehaus/groovy/tools/GrapeMain;->setupLogging:Ljava/lang/Object;

    aget-object v0, v0, v3

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

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_17

    :cond_c
    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain;->DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/tools/GrapeMain;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_17
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
    .registers 9

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v2, "runScript"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    const-string v2, "addOption"

    aput-object v2, p0, v0

    const/4 v0, 0x4

    const-string v3, "create"

    aput-object v3, p0, v0

    const/4 v0, 0x5

    const-string v4, "withArgName"

    aput-object v4, p0, v0

    const/4 v0, 0x6

    const-string v5, "hasArg"

    aput-object v5, p0, v0

    const/4 v0, 0x7

    const-string v6, "withDescription"

    aput-object v6, p0, v0

    const/16 v0, 0x8

    const-string v7, "withLongOpt"

    aput-object v7, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    aput-object v3, p0, v0

    const/16 v0, 0xb

    aput-object v4, p0, v0

    const/16 v0, 0xc

    aput-object v5, p0, v0

    const/16 v0, 0xd

    aput-object v6, p0, v0

    const/16 v0, 0xe

    aput-object v7, p0, v0

    const/16 v0, 0xf

    aput-object v2, p0, v0

    const/16 v0, 0x10

    aput-object v3, p0, v0

    const/16 v0, 0x11

    aput-object v7, p0, v0

    const/16 v0, 0x12

    aput-object v6, p0, v0

    const/16 v0, 0x13

    aput-object v5, p0, v0

    const/16 v0, 0x14

    const-string v4, "addOptionGroup"

    aput-object v4, p0, v0

    const/16 v0, 0x15

    aput-object v2, p0, v0

    const/16 v0, 0x16

    aput-object v2, p0, v0

    const/16 v0, 0x17

    aput-object v2, p0, v0

    const/16 v0, 0x18

    aput-object v2, p0, v0

    const/16 v0, 0x19

    aput-object v2, p0, v0

    const/16 v0, 0x1a

    aput-object v1, p0, v0

    const/16 v0, 0x1b

    aput-object v3, p0, v0

    const/16 v0, 0x1c

    aput-object v7, p0, v0

    const/16 v0, 0x1d

    aput-object v6, p0, v0

    const/16 v0, 0x1e

    aput-object v5, p0, v0

    const/16 v0, 0x1f

    aput-object v3, p0, v0

    const/16 v0, 0x20

    aput-object v7, p0, v0

    const/16 v0, 0x21

    aput-object v6, p0, v0

    const/16 v0, 0x22

    aput-object v5, p0, v0

    const/16 v0, 0x23

    aput-object v3, p0, v0

    const/16 v0, 0x24

    aput-object v7, p0, v0

    const/16 v0, 0x25

    aput-object v6, p0, v0

    const/16 v0, 0x26

    aput-object v5, p0, v0

    const/16 v0, 0x27

    aput-object v3, p0, v0

    const/16 v0, 0x28

    aput-object v7, p0, v0

    const/16 v0, 0x29

    aput-object v6, p0, v0

    const/16 v0, 0x2a

    aput-object v5, p0, v0

    const/16 v0, 0x2b

    aput-object v3, p0, v0

    const/16 v0, 0x2c

    aput-object v7, p0, v0

    const/16 v0, 0x2d

    aput-object v6, p0, v0

    const/16 v0, 0x2e

    aput-object v5, p0, v0

    const/16 v0, 0x2f

    aput-object v2, p0, v0

    const/16 v0, 0x30

    aput-object v3, p0, v0

    const/16 v0, 0x31

    aput-object v7, p0, v0

    const/16 v0, 0x32

    aput-object v6, p0, v0

    const/16 v0, 0x33

    aput-object v5, p0, v0

    const/16 v0, 0x34

    const-string v2, "parse"

    aput-object v2, p0, v0

    const/16 v0, 0x35

    aput-object v1, p0, v0

    const/16 v0, 0x36

    const-string v1, "args"

    aput-object v1, p0, v0

    const/16 v0, 0x37

    const-string v2, "hasOption"

    aput-object v2, p0, v0

    const/16 v0, 0x38

    const-string v3, "call"

    aput-object v3, p0, v0

    const/16 v0, 0x39

    aput-object v2, p0, v0

    const/16 v0, 0x3a

    const-string v2, "getVersion"

    aput-object v2, p0, v0

    const/16 v0, 0x3b

    const-string v2, "println"

    aput-object v2, p0, v0

    const/16 v0, 0x3c

    const-string v4, "getProperty"

    aput-object v4, p0, v0

    const/16 v0, 0x3d

    const-string v4, "each"

    aput-object v4, p0, v0

    const/16 v0, 0x3e

    const-string v4, "getOptionValues"

    aput-object v4, p0, v0

    const/16 v0, 0x3f

    aput-object v1, p0, v0

    const/16 v0, 0x40

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x41

    aput-object v3, p0, v0

    const/16 v0, 0x42

    const-string v4, "containsKey"

    aput-object v4, p0, v0

    const/16 v0, 0x43

    const-string v5, "getAt"

    aput-object v5, p0, v0

    const/16 v0, 0x44

    const-string v6, "closure"

    aput-object v6, p0, v0

    const/16 v0, 0x45

    aput-object v5, p0, v0

    const/16 v0, 0x46

    aput-object v5, p0, v0

    const/16 v0, 0x47

    aput-object v2, p0, v0

    const/16 v0, 0x48

    aput-object v5, p0, v0

    const/16 v0, 0x49

    aput-object v1, p0, v0

    const/16 v0, 0x4a

    aput-object v3, p0, v0

    const/16 v0, 0x4b

    aput-object v4, p0, v0

    const/16 v0, 0x4c

    aput-object v6, p0, v0

    const/16 v0, 0x4d

    aput-object v5, p0, v0

    const/16 v0, 0x4e

    aput-object v2, p0, v0

    return-void
.end method
