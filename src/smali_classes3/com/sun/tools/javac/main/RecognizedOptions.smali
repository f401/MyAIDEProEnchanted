.class public Lcom/sun/tools/javac/main/RecognizedOptions;
.super Ljava/lang/Object;
.source "RecognizedOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;,
        Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;,
        Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;
    }
.end annotation


# static fields
.field static javacFileManagerOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/main/OptionName;",
            ">;"
        }
    .end annotation
.end field

.field static javacOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/main/OptionName;",
            ">;"
        }
    .end annotation
.end field

.field static javacToolOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/main/OptionName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G:Lcom/sun/tools/javac/main/OptionName;

    const/16 v1, 0x35

    new-array v1, v1, [Lcom/sun/tools/javac/main/OptionName;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G_NONE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->NOWARN:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DEPRECATION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->CP:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->BOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_APPEND:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->EXTDIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DJAVA_EXT_DIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->ENDORSEDDIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DJAVA_ENDORSED_DIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->IMPLICIT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->VERSION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DIAGS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->HELP:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->A:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->X:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->J:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->MOREINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROMPT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DOE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->WARNUNCHECKED:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XSTDOUT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPREFER:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->O:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XD:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->AT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCEFILE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sun/tools/javac/main/RecognizedOptions;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/main/RecognizedOptions;->javacOptions:Ljava/util/Set;

    .line 181
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/sun/tools/javac/main/OptionName;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->CP:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->BOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_APPEND:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->EXTDIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DJAVA_EXT_DIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->ENDORSEDDIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DJAVA_ENDORSED_DIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sun/tools/javac/main/RecognizedOptions;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/main/RecognizedOptions;->javacFileManagerOptions:Ljava/util/Set;

    .line 199
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->G:Lcom/sun/tools/javac/main/OptionName;

    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sun/tools/javac/main/OptionName;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G_NONE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->NOWARN:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DEPRECATION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->IMPLICIT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->A:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->MOREINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROMPT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DOE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->WARNUNCHECKED:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPREFER:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->O:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XD:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sun/tools/javac/main/RecognizedOptions;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/main/RecognizedOptions;->javacToolOptions:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getAll(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;
    .registers 63

    .line 265
    new-instance v5, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v6, Lcom/sun/tools/javac/main/OptionName;->G:Lcom/sun/tools/javac/main/OptionName;

    const-string v7, "opt.g"

    invoke-direct {v5, v6, v7}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v6, Lcom/sun/tools/javac/main/RecognizedOptions$1;

    sget-object v7, Lcom/sun/tools/javac/main/OptionName;->G_NONE:Lcom/sun/tools/javac/main/OptionName;

    const-string v8, "opt.g.none"

    invoke-direct {v6, v7, v8}, Lcom/sun/tools/javac/main/RecognizedOptions$1;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v7, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v8, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    const-string v9, "opt.g.lines.vars.source"

    sget-object v10, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ANYOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "lines"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "vars"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "source"

    aput-object v13, v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V

    new-instance v8, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v9, Lcom/sun/tools/javac/main/OptionName;->XLINT:Lcom/sun/tools/javac/main/OptionName;

    const-string v10, "opt.Xlint"

    invoke-direct {v8, v9, v10}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    sget-object v9, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    sget-object v10, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ANYOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    .line 280
    new-instance v11, Lcom/sun/tools/javac/main/JavacOption$XOption;

    const-string v12, "opt.Xlint.suboptlist"

    invoke-static {}, Lcom/sun/tools/javac/main/RecognizedOptions;->getXLintChoices()Ljava/util/Map;

    move-result-object v13

    invoke-direct {v11, v9, v12, v10, v13}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;Ljava/util/Map;)V

    new-instance v9, Lcom/sun/tools/javac/main/RecognizedOptions$2;

    sget-object v10, Lcom/sun/tools/javac/main/OptionName;->NOWARN:Lcom/sun/tools/javac/main/OptionName;

    const-string v12, "opt.nowarn"

    invoke-direct {v9, v10, v12}, Lcom/sun/tools/javac/main/RecognizedOptions$2;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v10, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v12, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    const-string v13, "opt.verbose"

    invoke-direct {v10, v12, v13}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v12, Lcom/sun/tools/javac/main/RecognizedOptions$3;

    sget-object v13, Lcom/sun/tools/javac/main/OptionName;->DEPRECATION:Lcom/sun/tools/javac/main/OptionName;

    const-string v14, "opt.deprecation"

    invoke-direct {v12, v13, v14}, Lcom/sun/tools/javac/main/RecognizedOptions$3;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v13, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v14, Lcom/sun/tools/javac/main/OptionName;->CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    const-string v15, "opt.arg.path"

    const-string v16, "opt.classpath"

    invoke-direct/range {v13 .. v16}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/sun/tools/javac/main/RecognizedOptions$4;

    sget-object v15, Lcom/sun/tools/javac/main/OptionName;->CP:Lcom/sun/tools/javac/main/OptionName;

    const-string v16, "opt.arg.path"

    const-string v17, "opt.classpath"

    invoke-direct/range {v14 .. v17}, Lcom/sun/tools/javac/main/RecognizedOptions$4;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v16, Lcom/sun/tools/javac/main/OptionName;->SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

    const-string v17, "opt.arg.path"

    const-string v18, "opt.sourcepath"

    invoke-direct/range {v15 .. v18}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/sun/tools/javac/main/RecognizedOptions$5;

    sget-object v17, Lcom/sun/tools/javac/main/OptionName;->BOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    const-string v18, "opt.arg.path"

    const-string v19, "opt.bootclasspath"

    invoke-direct/range {v16 .. v19}, Lcom/sun/tools/javac/main/RecognizedOptions$5;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v18, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/OptionName;

    const-string v19, "opt.arg.path"

    const-string v20, "opt.Xbootclasspath.p"

    invoke-direct/range {v17 .. v20}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v19, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_APPEND:Lcom/sun/tools/javac/main/OptionName;

    const-string v20, "opt.arg.path"

    const-string v21, "opt.Xbootclasspath.a"

    invoke-direct/range {v18 .. v21}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/sun/tools/javac/main/RecognizedOptions$6;

    sget-object v20, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    const-string v21, "opt.arg.path"

    const-string v22, "opt.bootclasspath"

    invoke-direct/range {v19 .. v22}, Lcom/sun/tools/javac/main/RecognizedOptions$6;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v21, Lcom/sun/tools/javac/main/OptionName;->EXTDIRS:Lcom/sun/tools/javac/main/OptionName;

    const-string v22, "opt.arg.dirs"

    const-string v23, "opt.extdirs"

    invoke-direct/range {v20 .. v23}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/sun/tools/javac/main/RecognizedOptions$7;

    sget-object v22, Lcom/sun/tools/javac/main/OptionName;->DJAVA_EXT_DIRS:Lcom/sun/tools/javac/main/OptionName;

    const-string v23, "opt.arg.dirs"

    const-string v24, "opt.extdirs"

    invoke-direct/range {v21 .. v24}, Lcom/sun/tools/javac/main/RecognizedOptions$7;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v23, Lcom/sun/tools/javac/main/OptionName;->ENDORSEDDIRS:Lcom/sun/tools/javac/main/OptionName;

    const-string v24, "opt.arg.dirs"

    const-string v25, "opt.endorseddirs"

    invoke-direct/range {v22 .. v25}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v23, Lcom/sun/tools/javac/main/RecognizedOptions$8;

    sget-object v24, Lcom/sun/tools/javac/main/OptionName;->DJAVA_ENDORSED_DIRS:Lcom/sun/tools/javac/main/OptionName;

    const-string v25, "opt.arg.dirs"

    const-string v26, "opt.endorseddirs"

    invoke-direct/range {v23 .. v26}, Lcom/sun/tools/javac/main/RecognizedOptions$8;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v25, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    const-string v26, "opt.proc.none.only"

    sget-object v27, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "none"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "only"

    aput-object v30, v28, v29

    invoke-direct/range {v24 .. v28}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V

    new-instance v25, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v26, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    const-string v27, "opt.arg.class.list"

    const-string v28, "opt.processor"

    invoke-direct/range {v25 .. v28}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v26, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v27, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    const-string v28, "opt.arg.path"

    const-string v29, "opt.processorpath"

    invoke-direct/range {v26 .. v29}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v28, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    const-string v29, "opt.arg.directory"

    const-string v30, "opt.d"

    invoke-direct/range {v27 .. v30}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v28, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v29, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    const-string v30, "opt.arg.directory"

    const-string v31, "opt.sourceDest"

    invoke-direct/range {v28 .. v31}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v29, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v30, Lcom/sun/tools/javac/main/OptionName;->IMPLICIT:Lcom/sun/tools/javac/main/OptionName;

    const-string v31, "opt.implicit"

    sget-object v32, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "none"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const-string v35, "class"

    aput-object v35, v33, v34

    invoke-direct/range {v29 .. v33}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V

    new-instance v30, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v31, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    const-string v32, "opt.arg.encoding"

    const-string v33, "opt.encoding"

    invoke-direct/range {v30 .. v33}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v31, Lcom/sun/tools/javac/main/RecognizedOptions$9;

    sget-object v32, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    const-string v33, "opt.arg.release"

    const-string v34, "opt.source"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/main/RecognizedOptions$9;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v32, Lcom/sun/tools/javac/main/RecognizedOptions$10;

    sget-object v33, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    const-string v34, "opt.arg.release"

    const-string v35, "opt.target"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/main/RecognizedOptions$10;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v33, Lcom/sun/tools/javac/main/RecognizedOptions$11;

    sget-object v34, Lcom/sun/tools/javac/main/OptionName;->VERSION:Lcom/sun/tools/javac/main/OptionName;

    const-string v35, "opt.version"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$11;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v34, Lcom/sun/tools/javac/main/RecognizedOptions$12;

    sget-object v35, Lcom/sun/tools/javac/main/OptionName;->FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/main/RecognizedOptions$12;-><init>(Lcom/sun/tools/javac/main/OptionName;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v35, Lcom/sun/tools/javac/main/RecognizedOptions$13;

    sget-object v36, Lcom/sun/tools/javac/main/OptionName;->DIAGS:Lcom/sun/tools/javac/main/OptionName;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/main/RecognizedOptions$13;-><init>(Lcom/sun/tools/javac/main/OptionName;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v36, Lcom/sun/tools/javac/main/RecognizedOptions$14;

    sget-object v37, Lcom/sun/tools/javac/main/OptionName;->HELP:Lcom/sun/tools/javac/main/OptionName;

    const-string v38, "opt.help"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$14;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v37, Lcom/sun/tools/javac/main/RecognizedOptions$15;

    sget-object v38, Lcom/sun/tools/javac/main/OptionName;->A:Lcom/sun/tools/javac/main/OptionName;

    const-string v39, "opt.arg.key.equals.value"

    const-string v40, "opt.A"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/main/RecognizedOptions$15;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v38, Lcom/sun/tools/javac/main/RecognizedOptions$16;

    sget-object v39, Lcom/sun/tools/javac/main/OptionName;->X:Lcom/sun/tools/javac/main/OptionName;

    const-string v40, "opt.X"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$16;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v39, Lcom/sun/tools/javac/main/RecognizedOptions$17;

    sget-object v40, Lcom/sun/tools/javac/main/OptionName;->J:Lcom/sun/tools/javac/main/OptionName;

    const-string v41, "opt.arg.flag"

    const-string v42, "opt.J"

    invoke-direct/range {v39 .. v42}, Lcom/sun/tools/javac/main/RecognizedOptions$17;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v40, Lcom/sun/tools/javac/main/RecognizedOptions$18;

    sget-object v41, Lcom/sun/tools/javac/main/OptionName;->MOREINFO:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v40 .. v41}, Lcom/sun/tools/javac/main/RecognizedOptions$18;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v41, Lcom/sun/tools/javac/main/JavacOption$Option;

    sget-object v42, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    const-string v43, "opt.Werror"

    invoke-direct/range {v41 .. v43}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v42, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;

    sget-object v43, Lcom/sun/tools/javac/main/OptionName;->COMPLEXINFERENCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v42 .. v43}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v43, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;

    sget-object v44, Lcom/sun/tools/javac/main/OptionName;->PROMPT:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v43 .. v44}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v44, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;

    sget-object v45, Lcom/sun/tools/javac/main/OptionName;->DOE:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v44 .. v45}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v45, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;

    sget-object v46, Lcom/sun/tools/javac/main/OptionName;->PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v45 .. v46}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v46, Lcom/sun/tools/javac/main/RecognizedOptions$19;

    sget-object v47, Lcom/sun/tools/javac/main/OptionName;->WARNUNCHECKED:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v46 .. v47}, Lcom/sun/tools/javac/main/RecognizedOptions$19;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v47, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v48, Lcom/sun/tools/javac/main/OptionName;->XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

    const-string v49, "opt.arg.number"

    const-string v50, "opt.maxerrs"

    invoke-direct/range {v47 .. v50}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v48, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v49, Lcom/sun/tools/javac/main/OptionName;->XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

    const-string v50, "opt.arg.number"

    const-string v51, "opt.maxwarns"

    invoke-direct/range {v48 .. v51}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v49, Lcom/sun/tools/javac/main/RecognizedOptions$20;

    sget-object v50, Lcom/sun/tools/javac/main/OptionName;->XSTDOUT:Lcom/sun/tools/javac/main/OptionName;

    const-string v51, "opt.arg.file"

    const-string v52, "opt.Xstdout"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/main/RecognizedOptions$20;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    new-instance v50, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v51, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    const-string v52, "opt.print"

    invoke-direct/range {v50 .. v52}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v51, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v52, Lcom/sun/tools/javac/main/OptionName;->XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

    const-string v53, "opt.printRounds"

    invoke-direct/range {v51 .. v53}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v52, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v53, Lcom/sun/tools/javac/main/OptionName;->XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

    const-string v54, "opt.printProcessorInfo"

    invoke-direct/range {v52 .. v54}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V

    new-instance v53, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v54, Lcom/sun/tools/javac/main/OptionName;->XPREFER:Lcom/sun/tools/javac/main/OptionName;

    const-string v55, "opt.prefer"

    sget-object v56, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "source"

    aput-object v59, v57, v58

    const/16 v58, 0x1

    const-string v59, "newer"

    aput-object v59, v57, v58

    invoke-direct/range {v53 .. v57}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V

    new-instance v54, Lcom/sun/tools/javac/main/JavacOption$XOption;

    sget-object v55, Lcom/sun/tools/javac/main/OptionName;->XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

    const-string v56, "opt.pkginfo"

    sget-object v57, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const/16 v58, 0x3

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string v60, "always"

    aput-object v60, v58, v59

    const/16 v59, 0x1

    const-string v60, "legacy"

    aput-object v60, v58, v59

    const/16 v59, 0x2

    const-string v60, "nonempty"

    aput-object v60, v58, v59

    invoke-direct/range {v54 .. v58}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V

    new-instance v55, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;

    sget-object v56, Lcom/sun/tools/javac/main/OptionName;->O:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v55 .. v56}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v56, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;

    sget-object v57, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v56 .. v57}, Lcom/sun/tools/javac/main/JavacOption$HiddenOption;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v57, Lcom/sun/tools/javac/main/RecognizedOptions$21;

    sget-object v58, Lcom/sun/tools/javac/main/OptionName;->XD:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct/range {v57 .. v58}, Lcom/sun/tools/javac/main/RecognizedOptions$21;-><init>(Lcom/sun/tools/javac/main/OptionName;)V

    new-instance v58, Lcom/sun/tools/javac/main/RecognizedOptions$22;

    sget-object v59, Lcom/sun/tools/javac/main/OptionName;->AT:Lcom/sun/tools/javac/main/OptionName;

    const-string v60, "opt.arg.file"

    const-string v61, "opt.AT"

    invoke-direct/range {v58 .. v61}, Lcom/sun/tools/javac/main/RecognizedOptions$22;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v59, Lcom/sun/tools/javac/main/RecognizedOptions$23;

    sget-object v60, Lcom/sun/tools/javac/main/OptionName;->SOURCEFILE:Lcom/sun/tools/javac/main/OptionName;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/main/RecognizedOptions$23;-><init>(Lcom/sun/tools/javac/main/OptionName;Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)V

    .line 265
    const/16 v60, 0x37

    move/from16 v0, v60

    new-array v0, v0, [Lcom/sun/tools/javac/main/JavacOption$Option;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    aput-object v5, v60, v61

    const/4 v5, 0x1

    aput-object v6, v60, v5

    const/4 v5, 0x2

    aput-object v7, v60, v5

    const/4 v5, 0x3

    aput-object v8, v60, v5

    const/4 v5, 0x4

    aput-object v11, v60, v5

    const/4 v5, 0x5

    aput-object v9, v60, v5

    const/4 v5, 0x6

    aput-object v10, v60, v5

    const/4 v5, 0x7

    aput-object v12, v60, v5

    const/16 v5, 0x8

    aput-object v13, v60, v5

    const/16 v5, 0x9

    aput-object v14, v60, v5

    const/16 v5, 0xa

    aput-object v15, v60, v5

    const/16 v5, 0xb

    aput-object v16, v60, v5

    const/16 v5, 0xc

    aput-object v17, v60, v5

    const/16 v5, 0xd

    aput-object v18, v60, v5

    const/16 v5, 0xe

    aput-object v19, v60, v5

    const/16 v5, 0xf

    aput-object v20, v60, v5

    const/16 v5, 0x10

    aput-object v21, v60, v5

    const/16 v5, 0x11

    aput-object v22, v60, v5

    const/16 v5, 0x12

    aput-object v23, v60, v5

    const/16 v5, 0x13

    aput-object v24, v60, v5

    const/16 v5, 0x14

    aput-object v25, v60, v5

    const/16 v5, 0x15

    aput-object v26, v60, v5

    const/16 v5, 0x16

    aput-object v27, v60, v5

    const/16 v5, 0x17

    aput-object v28, v60, v5

    const/16 v5, 0x18

    aput-object v29, v60, v5

    const/16 v5, 0x19

    aput-object v30, v60, v5

    const/16 v5, 0x1a

    aput-object v31, v60, v5

    const/16 v5, 0x1b

    aput-object v32, v60, v5

    const/16 v5, 0x1c

    aput-object v33, v60, v5

    const/16 v5, 0x1d

    aput-object v34, v60, v5

    const/16 v5, 0x1e

    aput-object v35, v60, v5

    const/16 v5, 0x1f

    aput-object v36, v60, v5

    const/16 v5, 0x20

    aput-object v37, v60, v5

    const/16 v5, 0x21

    aput-object v38, v60, v5

    const/16 v5, 0x22

    aput-object v39, v60, v5

    const/16 v5, 0x23

    aput-object v40, v60, v5

    const/16 v5, 0x24

    aput-object v41, v60, v5

    const/16 v5, 0x25

    aput-object v42, v60, v5

    const/16 v5, 0x26

    aput-object v43, v60, v5

    const/16 v5, 0x27

    aput-object v44, v60, v5

    const/16 v5, 0x28

    aput-object v45, v60, v5

    const/16 v5, 0x29

    aput-object v46, v60, v5

    const/16 v5, 0x2a

    aput-object v47, v60, v5

    const/16 v5, 0x2b

    aput-object v48, v60, v5

    const/16 v5, 0x2c

    aput-object v49, v60, v5

    const/16 v5, 0x2d

    aput-object v50, v60, v5

    const/16 v5, 0x2e

    aput-object v51, v60, v5

    const/16 v5, 0x2f

    aput-object v52, v60, v5

    const/16 v5, 0x30

    aput-object v53, v60, v5

    const/16 v5, 0x31

    aput-object v54, v60, v5

    const/16 v5, 0x32

    aput-object v55, v60, v5

    const/16 v5, 0x33

    aput-object v56, v60, v5

    const/16 v5, 0x34

    aput-object v57, v60, v5

    const/16 v5, 0x35

    aput-object v58, v60, v5

    const/16 v5, 0x36

    aput-object v59, v60, v5

    return-object v60
.end method

.method static getJavaCompilerOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;
    .registers 2

    .line 239
    sget-object v0, Lcom/sun/tools/javac/main/RecognizedOptions;->javacOptions:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;Ljava/util/Set;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v0

    return-object v0
.end method

.method public static getJavacFileManagerOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;
    .registers 2

    .line 243
    sget-object v0, Lcom/sun/tools/javac/main/RecognizedOptions;->javacFileManagerOptions:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;Ljava/util/Set;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v0

    return-object v0
.end method

.method public static getJavacToolOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;
    .registers 2

    .line 247
    sget-object v0, Lcom/sun/tools/javac/main/RecognizedOptions;->javacToolOptions:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;Ljava/util/Set;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v0

    return-object v0
.end method

.method static getOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;Ljava/util/Set;)[Lcom/sun/tools/javac/main/JavacOption$Option;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/main/OptionName;",
            ">;)[",
            "Lcom/sun/tools/javac/main/JavacOption$Option;"
        }
    .end annotation

    .line 251
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 252
    invoke-static {p0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getAll(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 253
    invoke-virtual {v4}, Lcom/sun/tools/javac/main/JavacOption$Option;->getName()Lcom/sun/tools/javac/main/OptionName;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    new-array v0, v0, [Lcom/sun/tools/javac/main/JavacOption$Option;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/JavacOption$Option;

    return-object v0
.end method

.method private static getXLintChoices()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 648
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 649
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v1, "all"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {}, Lcom/sun/tools/javac/code/Lint$LintCategory;->values()[Lcom/sun/tools/javac/code/Lint$LintCategory;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 651
    iget-object v7, v6, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/sun/tools/javac/code/Lint$LintCategory;->hidden:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_0
    invoke-static {}, Lcom/sun/tools/javac/code/Lint$LintCategory;->values()[Lcom/sun/tools/javac/code/Lint$LintCategory;

    move-result-object v1

    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v5, v5, Lcom/sun/tools/javac/code/Lint$LintCategory;->hidden:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 654
    :cond_1
    const-string v0, "none"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-object v2
.end method

.method public static varargs of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ">(TE;[TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
