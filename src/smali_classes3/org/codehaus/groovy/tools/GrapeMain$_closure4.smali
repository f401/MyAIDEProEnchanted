.class Lorg/codehaus/groovy/tools/GrapeMain$_closure4;
.super Lgroovy/lang/Closure;

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/tools/GrapeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "_closure4"
.end annotation


# static fields
.field private static $callSiteArray:Ljava/lang/ref/SoftReference;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->j6()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_17

    :cond_c
    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_17
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public static synthetic j6()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/tools/GrapeMain$_closure4;->$callSiteArray:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "addOption"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    const-string v3, "create"

    aput-object v3, p0, v0

    const/4 v0, 0x3

    const-string v4, "withLongOpt"

    aput-object v4, p0, v0

    const/4 v0, 0x4

    const-string v5, "hasArg"

    aput-object v5, p0, v0

    const/4 v0, 0x5

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v3, p0, v0

    const/4 v0, 0x7

    aput-object v4, p0, v0

    const/16 v0, 0x8

    aput-object v5, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    aput-object v3, p0, v0

    const/16 v0, 0xb

    aput-object v4, p0, v0

    const/16 v0, 0xc

    aput-object v5, p0, v0

    const/16 v0, 0xd

    aput-object v2, p0, v0

    const/16 v0, 0xe

    aput-object v3, p0, v0

    const/16 v0, 0xf

    aput-object v4, p0, v0

    const/16 v0, 0x10

    aput-object v5, p0, v0

    const/16 v0, 0x11

    const-string v2, "parse"

    aput-object v2, p0, v0

    const/16 v0, 0x12

    aput-object v1, p0, v0

    const/16 v0, 0x13

    const-string v2, "getAt"

    aput-object v2, p0, v0

    const/16 v0, 0x14

    const-string v2, "args"

    aput-object v2, p0, v0

    const/16 v0, 0x15

    const-string v3, "getInstance"

    aput-object v3, p0, v0

    const/16 v0, 0x16

    const-string v3, "setupLogging"

    aput-object v3, p0, v0

    const/16 v0, 0x17

    const-string v3, "MSG_ERR"

    aput-object v3, p0, v0

    const/16 v0, 0x18

    const-string v3, "mod"

    aput-object v3, p0, v0

    const/16 v0, 0x19

    const-string v4, "size"

    aput-object v4, p0, v0

    const/16 v0, 0x1a

    const-string v5, "println"

    aput-object v5, p0, v0

    const/16 v0, 0x1b

    aput-object v3, p0, v0

    const/16 v0, 0x1c

    aput-object v4, p0, v0

    const/16 v0, 0x1d

    aput-object v5, p0, v0

    const/16 v0, 0x1e

    aput-object v4, p0, v0

    const/16 v0, 0x1f

    aput-object v2, p0, v0

    const/16 v0, 0x20

    aput-object v5, p0, v0

    const/16 v0, 0x21

    aput-object v4, p0, v0

    const/16 v0, 0x22

    aput-object v2, p0, v0

    const/16 v0, 0x23

    aput-object v5, p0, v0

    const/16 v0, 0x24

    const-string v2, "hasOption"

    aput-object v2, p0, v0

    const/16 v0, 0x25

    aput-object v2, p0, v0

    const/16 v0, 0x26

    aput-object v2, p0, v0

    const/16 v0, 0x27

    aput-object v2, p0, v0

    const/16 v0, 0x28

    const-string v2, "iterator"

    aput-object v2, p0, v0

    const/16 v0, 0x29

    const-string v3, "leftShift"

    aput-object v3, p0, v0

    const/16 v0, 0x2a

    const-string v3, "hasNext"

    aput-object v3, p0, v0

    const/16 v0, 0x2b

    const-string v3, "iter"

    aput-object v3, p0, v0

    const/16 v0, 0x2c

    const-string v4, "add"

    aput-object v4, p0, v0

    const/16 v0, 0x2d

    const-string v4, "next"

    aput-object v4, p0, v0

    const/16 v0, 0x2e

    aput-object v3, p0, v0

    const/16 v0, 0x2f

    aput-object v4, p0, v0

    const/16 v0, 0x30

    aput-object v3, p0, v0

    const/16 v0, 0x31

    aput-object v4, p0, v0

    const/16 v0, 0x32

    aput-object v3, p0, v0

    const/16 v0, 0x33

    const-string v3, "resolve"

    aput-object v3, p0, v0

    const/16 v0, 0x34

    aput-object v2, p0, v0

    const/16 v0, 0x35

    const-string v3, "scheme"

    aput-object v3, p0, v0

    const/16 v0, 0x36

    const-string v4, "plus"

    aput-object v4, p0, v0

    const/16 v0, 0x37

    const-string v6, "path"

    aput-object v6, p0, v0

    const/16 v0, 0x38

    aput-object v1, p0, v0

    const/16 v0, 0x39

    aput-object v4, p0, v0

    const/16 v0, 0x3a

    const-string v7, "toASCIIString"

    aput-object v7, p0, v0

    const/16 v0, 0x3b

    const-string v8, "each"

    aput-object v8, p0, v0

    const/16 v0, 0x3c

    aput-object v2, p0, v0

    const/16 v0, 0x3d

    aput-object v3, p0, v0

    const/16 v0, 0x3e

    aput-object v4, p0, v0

    const/16 v0, 0x3f

    aput-object v6, p0, v0

    const/16 v0, 0x40

    aput-object v1, p0, v0

    const/16 v0, 0x41

    aput-object v4, p0, v0

    const/16 v0, 0x42

    aput-object v7, p0, v0

    const/16 v0, 0x43

    aput-object v8, p0, v0

    const/16 v0, 0x44

    aput-object v5, p0, v0

    const/16 v0, 0x45

    const-string v1, "join"

    aput-object v1, p0, v0

    const/16 v0, 0x46

    aput-object v5, p0, v0

    const/16 v0, 0x47

    aput-object v5, p0, v0

    const/16 v0, 0x48

    const-string v1, "message"

    aput-object v1, p0, v0

    const/16 v0, 0x49

    aput-object v1, p0, v0

    const/16 v0, 0x4a

    aput-object v5, p0, v0

    const/16 v0, 0x4b

    const-string v1, "doCall"

    aput-object v1, p0, v0

    return-void
.end method
