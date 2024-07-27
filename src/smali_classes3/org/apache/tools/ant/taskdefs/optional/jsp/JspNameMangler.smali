.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;
.super Ljava/lang/Object;
.source "JspNameMangler.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;


# static fields
.field public static final keywords:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "assert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "abstract"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "break"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "case"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "super"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "this"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "while"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->keywords:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mangleChar(C)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 125
    sget-char v0, Ljava/io/File;->separatorChar:C

    if-ne p0, v0, :cond_0

    .line 126
    const/16 p0, 0x2f

    .line 128
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x5

    .line 130
    new-array v4, v6, [C

    .line 131
    const/16 v0, 0x5f

    aput-char v0, v4, v1

    .line 132
    const/4 v0, 0x1

    :goto_0
    if-gt v0, v3, :cond_1

    .line 133
    const/16 v5, 0x30

    aput-char v5, v4, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v0, v3, 0x1

    :goto_1
    if-ge v0, v6, :cond_2

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v4, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private mapJspToBaseName(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->stripExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->keywords:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 89
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    aget-char v1, v3, v0

    .line 96
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->mangleChar(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->mangleChar(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stripExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jsp"

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public mapJspToJavaName(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspNameMangler;->mapJspToBaseName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method
