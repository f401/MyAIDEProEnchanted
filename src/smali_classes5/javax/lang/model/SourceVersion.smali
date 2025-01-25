.class public final enum Ljavax/lang/model/SourceVersion;
.super Ljava/lang/Enum;
.source "SourceVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/lang/model/SourceVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_0:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_1:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_2:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_3:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_4:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_5:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_6:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_7:Ljavax/lang/model/SourceVersion;

.field private static final keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final latestSupported:Ljavax/lang/model/SourceVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 64
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_0"

    invoke-direct {v1, v2, v0}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_0:Ljavax/lang/model/SourceVersion;

    .line 72
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_1"

    invoke-direct {v1, v2, v5}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_1:Ljavax/lang/model/SourceVersion;

    .line 83
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_2"

    invoke-direct {v1, v2, v6}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_2:Ljavax/lang/model/SourceVersion;

    .line 91
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_3"

    invoke-direct {v1, v2, v7}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_3:Ljavax/lang/model/SourceVersion;

    .line 99
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_4"

    invoke-direct {v1, v2, v8}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_4:Ljavax/lang/model/SourceVersion;

    .line 111
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_5"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_5:Ljavax/lang/model/SourceVersion;

    .line 119
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_6"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;

    .line 127
    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_7"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;

    .line 47
    const/16 v2, 0x8

    new-array v2, v2, [Ljavax/lang/model/SourceVersion;

    sget-object v3, Ljavax/lang/model/SourceVersion;->RELEASE_0:Ljavax/lang/model/SourceVersion;

    aput-object v3, v2, v0

    sget-object v3, Ljavax/lang/model/SourceVersion;->RELEASE_1:Ljavax/lang/model/SourceVersion;

    aput-object v3, v2, v5

    sget-object v3, Ljavax/lang/model/SourceVersion;->RELEASE_2:Ljavax/lang/model/SourceVersion;

    aput-object v3, v2, v6

    sget-object v3, Ljavax/lang/model/SourceVersion;->RELEASE_3:Ljavax/lang/model/SourceVersion;

    aput-object v3, v2, v7

    sget-object v3, Ljavax/lang/model/SourceVersion;->RELEASE_4:Ljavax/lang/model/SourceVersion;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    sget-object v4, Ljavax/lang/model/SourceVersion;->RELEASE_5:Ljavax/lang/model/SourceVersion;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v1, v2, v3

    sput-object v2, Ljavax/lang/model/SourceVersion;->$VALUES:[Ljavax/lang/model/SourceVersion;

    .line 141
    invoke-static {}, Ljavax/lang/model/SourceVersion;->getLatestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v1

    sput-object v1, Ljavax/lang/model/SourceVersion;->latestSupported:Ljavax/lang/model/SourceVersion;

    .line 227
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 228
    const/16 v2, 0x35

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "abstract"

    aput-object v3, v2, v0

    const-string v3, "continue"

    aput-object v3, v2, v5

    const-string v3, "for"

    aput-object v3, v2, v6

    const-string v3, "new"

    aput-object v3, v2, v7

    const-string v3, "switch"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "assert"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "default"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "if"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "package"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "synchronized"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "boolean"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "do"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "goto"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "private"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "this"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "break"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "double"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "implements"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "protected"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "throw"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "byte"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "else"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "import"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "public"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "throws"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "case"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "enum"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "instanceof"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "return"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "transient"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "catch"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "extends"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "int"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "short"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "try"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "char"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "final"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "interface"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "static"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "void"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "class"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "finally"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "long"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "strictfp"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "volatile"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "const"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "float"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "native"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "super"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "while"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "null"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "true"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "false"

    aput-object v4, v2, v3

    .line 242
    array-length v3, v2

    :goto_1b8
    if-ge v0, v3, :cond_1c2

    aget-object v4, v2, v0

    .line 243
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b8

    .line 244
    :cond_1c2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/SourceVersion;->keywords:Ljava/util/Set;

    .line 245
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getLatestSupported()Ljavax/lang/model/SourceVersion;
    .registers 2

    .line 145
    :try_start_0
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "1.7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 147
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;

    .line 152
    :goto_10
    return-object v0

    .line 148
    :cond_11
    const-string v1, "1.6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 149
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_10

    .line 150
    :catch_1c
    move-exception v0

    .line 152
    :cond_1d
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_5:Ljavax/lang/model/SourceVersion;

    goto :goto_10
.end method

.method public static isIdentifier(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v1, 0x0

    .line 184
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 201
    :goto_c
    return v0

    .line 189
    :cond_d
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v3

    if-nez v3, :cond_19

    move v0, v1

    .line 191
    goto :goto_c

    .line 193
    :cond_19
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 194
    :goto_1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 197
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v4

    if-nez v4, :cond_2f

    move v0, v1

    .line 198
    goto :goto_c

    .line 195
    :cond_2f
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1d

    .line 201
    :cond_35
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static isKeyword(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 255
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    sget-object v1, Ljavax/lang/model/SourceVersion;->keywords:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isName(Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v0, 0x0

    .line 216
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string v2, "\\."

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_22

    aget-object v4, v2, v1

    .line 219
    invoke-static {v4}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {v4}, Ljavax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 222
    :cond_1e
    :goto_1e
    return v0

    .line 218
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 222
    :cond_22
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public static latest()Ljavax/lang/model/SourceVersion;
    .registers 1

    .line 138
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static latestSupported()Ljavax/lang/model/SourceVersion;
    .registers 1

    .line 163
    sget-object v0, Ljavax/lang/model/SourceVersion;->latestSupported:Ljavax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/lang/model/SourceVersion;
    .registers 2

    .line 47
    const-class v0, Ljavax/lang/model/SourceVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static values()[Ljavax/lang/model/SourceVersion;
    .registers 1

    .line 47
    sget-object v0, Ljavax/lang/model/SourceVersion;->$VALUES:[Ljavax/lang/model/SourceVersion;

    invoke-virtual {v0}, [Ljavax/lang/model/SourceVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/lang/model/SourceVersion;

    return-object v0
.end method
