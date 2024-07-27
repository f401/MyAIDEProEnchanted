.class public final enum Lcom/sun/tools/javac/main/OptionName;
.super Ljava/lang/Enum;
.source "OptionName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/OptionName;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/OptionName;

.field public static final enum A:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum AT:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum BOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum COMPLEXINFERENCE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum CP:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum D:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum DEPRECATION:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum DIAGS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum DJAVA_ENDORSED_DIRS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum DJAVA_EXT_DIRS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum DOE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum ENCODING:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum ENDORSEDDIRS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum EXTDIRS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum G:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum G_NONE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum HELP:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum IMPLICIT:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum J:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum MOREINFO:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum NOWARN:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum O:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum PROC:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum PROMPT:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum S:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum SOURCE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum SOURCEFILE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum TARGET:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum VERBOSE:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum VERSION:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum WARNUNCHECKED:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum WERROR:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum X:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XBOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XBOOTCLASSPATH_APPEND:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XD:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XJCOV:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XLINT:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XPREFER:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XPRINT:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

.field public static final enum XSTDOUT:Lcom/sun/tools/javac/main/OptionName;


# instance fields
.field public final optionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "G"

    const-string v2, "-g"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->G:Lcom/sun/tools/javac/main/OptionName;

    .line 39
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "G_NONE"

    const-string v2, "-g:none"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->G_NONE:Lcom/sun/tools/javac/main/OptionName;

    .line 40
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "G_CUSTOM"

    const-string v2, "-g:"

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 41
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XLINT"

    const-string v2, "-Xlint"

    invoke-direct {v0, v1, v7, v2}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT:Lcom/sun/tools/javac/main/OptionName;

    .line 42
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XLINT_CUSTOM"

    const-string v2, "-Xlint:"

    invoke-direct {v0, v1, v8, v2}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 43
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "DIAGS"

    const/4 v2, 0x5

    const-string v3, "-XDdiags="

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->DIAGS:Lcom/sun/tools/javac/main/OptionName;

    .line 44
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "NOWARN"

    const/4 v2, 0x6

    const-string v3, "-nowarn"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->NOWARN:Lcom/sun/tools/javac/main/OptionName;

    .line 45
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "VERBOSE"

    const/4 v2, 0x7

    const-string v3, "-verbose"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    .line 46
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "DEPRECATION"

    const/16 v2, 0x8

    const-string v3, "-deprecation"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->DEPRECATION:Lcom/sun/tools/javac/main/OptionName;

    .line 47
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "CLASSPATH"

    const/16 v2, 0x9

    const-string v3, "-classpath"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    .line 48
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "CP"

    const/16 v2, 0xa

    const-string v3, "-cp"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->CP:Lcom/sun/tools/javac/main/OptionName;

    .line 49
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "SOURCEPATH"

    const/16 v2, 0xb

    const-string v3, "-sourcepath"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

    .line 50
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "BOOTCLASSPATH"

    const/16 v2, 0xc

    const-string v3, "-bootclasspath"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->BOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    .line 51
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XBOOTCLASSPATH_PREPEND"

    const/16 v2, 0xd

    const-string v3, "-Xbootclasspath/p:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/OptionName;

    .line 52
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XBOOTCLASSPATH_APPEND"

    const/16 v2, 0xe

    const-string v3, "-Xbootclasspath/a:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_APPEND:Lcom/sun/tools/javac/main/OptionName;

    .line 53
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XBOOTCLASSPATH"

    const/16 v2, 0xf

    const-string v3, "-Xbootclasspath:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    .line 54
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "EXTDIRS"

    const/16 v2, 0x10

    const-string v3, "-extdirs"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->EXTDIRS:Lcom/sun/tools/javac/main/OptionName;

    .line 55
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "DJAVA_EXT_DIRS"

    const/16 v2, 0x11

    const-string v3, "-Djava.ext.dirs="

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->DJAVA_EXT_DIRS:Lcom/sun/tools/javac/main/OptionName;

    .line 56
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "ENDORSEDDIRS"

    const/16 v2, 0x12

    const-string v3, "-endorseddirs"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->ENDORSEDDIRS:Lcom/sun/tools/javac/main/OptionName;

    .line 57
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "DJAVA_ENDORSED_DIRS"

    const/16 v2, 0x13

    const-string v3, "-Djava.endorsed.dirs="

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->DJAVA_ENDORSED_DIRS:Lcom/sun/tools/javac/main/OptionName;

    .line 58
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "PROC"

    const/16 v2, 0x14

    const-string v3, "-proc:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    .line 59
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "PROCESSOR"

    const/16 v2, 0x15

    const-string v3, "-processor"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    .line 60
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "PROCESSORPATH"

    const/16 v2, 0x16

    const-string v3, "-processorpath"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    .line 61
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "D"

    const/16 v2, 0x17

    const-string v3, "-d"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    .line 62
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "S"

    const/16 v2, 0x18

    const-string v3, "-s"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    .line 63
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "IMPLICIT"

    const/16 v2, 0x19

    const-string v3, "-implicit:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->IMPLICIT:Lcom/sun/tools/javac/main/OptionName;

    .line 64
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "ENCODING"

    const/16 v2, 0x1a

    const-string v3, "-encoding"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    .line 65
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "SOURCE"

    const/16 v2, 0x1b

    const-string v3, "-source"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    .line 66
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "TARGET"

    const/16 v2, 0x1c

    const-string v3, "-target"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    .line 67
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "VERSION"

    const/16 v2, 0x1d

    const-string v3, "-version"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->VERSION:Lcom/sun/tools/javac/main/OptionName;

    .line 68
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "FULLVERSION"

    const/16 v2, 0x1e

    const-string v3, "-fullversion"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

    .line 69
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "HELP"

    const/16 v2, 0x1f

    const-string v3, "-help"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->HELP:Lcom/sun/tools/javac/main/OptionName;

    .line 70
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "A"

    const/16 v2, 0x20

    const-string v3, "-A"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->A:Lcom/sun/tools/javac/main/OptionName;

    .line 71
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "X"

    const/16 v2, 0x21

    const-string v3, "-X"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->X:Lcom/sun/tools/javac/main/OptionName;

    .line 72
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "J"

    const/16 v2, 0x22

    const-string v3, "-J"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->J:Lcom/sun/tools/javac/main/OptionName;

    .line 73
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "MOREINFO"

    const/16 v2, 0x23

    const-string v3, "-moreinfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->MOREINFO:Lcom/sun/tools/javac/main/OptionName;

    .line 74
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "WERROR"

    const/16 v2, 0x24

    const-string v3, "-Werror"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    .line 75
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "COMPLEXINFERENCE"

    const/16 v2, 0x25

    const-string v3, "-complexinference"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->COMPLEXINFERENCE:Lcom/sun/tools/javac/main/OptionName;

    .line 76
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "PROMPT"

    const/16 v2, 0x26

    const-string v3, "-prompt"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->PROMPT:Lcom/sun/tools/javac/main/OptionName;

    .line 77
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "DOE"

    const/16 v2, 0x27

    const-string v3, "-doe"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->DOE:Lcom/sun/tools/javac/main/OptionName;

    .line 78
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "PRINTSOURCE"

    const/16 v2, 0x28

    const-string v3, "-printsource"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

    .line 79
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "WARNUNCHECKED"

    const/16 v2, 0x29

    const-string v3, "-warnunchecked"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->WARNUNCHECKED:Lcom/sun/tools/javac/main/OptionName;

    .line 80
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XMAXERRS"

    const/16 v2, 0x2a

    const-string v3, "-Xmaxerrs"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

    .line 81
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XMAXWARNS"

    const/16 v2, 0x2b

    const-string v3, "-Xmaxwarns"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

    .line 82
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XSTDOUT"

    const/16 v2, 0x2c

    const-string v3, "-Xstdout"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XSTDOUT:Lcom/sun/tools/javac/main/OptionName;

    .line 83
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XPKGINFO"

    const/16 v2, 0x2d

    const-string v3, "-Xpkginfo:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

    .line 84
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XPRINT"

    const/16 v2, 0x2e

    const-string v3, "-Xprint"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    .line 85
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XPRINTROUNDS"

    const/16 v2, 0x2f

    const-string v3, "-XprintRounds"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

    .line 86
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XPRINTPROCESSORINFO"

    const/16 v2, 0x30

    const-string v3, "-XprintProcessorInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

    .line 87
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XPREFER"

    const/16 v2, 0x31

    const-string v3, "-Xprefer:"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XPREFER:Lcom/sun/tools/javac/main/OptionName;

    .line 88
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "O"

    const/16 v2, 0x32

    const-string v3, "-O"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->O:Lcom/sun/tools/javac/main/OptionName;

    .line 89
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XJCOV"

    const/16 v2, 0x33

    const-string v3, "-Xjcov"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    .line 90
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "XD"

    const/16 v2, 0x34

    const-string v3, "-XD"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->XD:Lcom/sun/tools/javac/main/OptionName;

    .line 91
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "AT"

    const/16 v2, 0x35

    const-string v3, "@"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->AT:Lcom/sun/tools/javac/main/OptionName;

    .line 92
    new-instance v0, Lcom/sun/tools/javac/main/OptionName;

    const-string v1, "SOURCEFILE"

    const/16 v2, 0x36

    const-string v3, "sourcefile"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/OptionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/OptionName;->SOURCEFILE:Lcom/sun/tools/javac/main/OptionName;

    .line 37
    const/16 v1, 0x37

    new-array v1, v1, [Lcom/sun/tools/javac/main/OptionName;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G_NONE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->XLINT_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DIAGS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->NOWARN:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DEPRECATION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->CLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->CP:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCEPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->BOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH_APPEND:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XBOOTCLASSPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->EXTDIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DJAVA_EXT_DIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->ENDORSEDDIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DJAVA_ENDORSED_DIRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROC:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROCESSOR:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROCESSORPATH:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->IMPLICIT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->VERSION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->HELP:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->A:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->X:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->J:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->MOREINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->WERROR:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->COMPLEXINFERENCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PROMPT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->DOE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->PRINTSOURCE:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->WARNUNCHECKED:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XMAXERRS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XMAXWARNS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XSTDOUT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINTROUNDS:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPRINTPROCESSORINFO:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XPREFER:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->O:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XD:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->AT:Lcom/sun/tools/javac/main/OptionName;

    aput-object v3, v1, v2

    const/16 v2, 0x36

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/tools/javac/main/OptionName;->$VALUES:[Lcom/sun/tools/javac/main/OptionName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/OptionName;
    .registers 2

    .line 37
    const-class v0, Lcom/sun/tools/javac/main/OptionName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/OptionName;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/OptionName;
    .registers 1

    .line 37
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->$VALUES:[Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/OptionName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/OptionName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/sun/tools/javac/main/OptionName;->optionName:Ljava/lang/String;

    return-object v0
.end method
