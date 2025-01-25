.class public final Lcom/s1243808733/android/dex/DexFormat;
.super Ljava/lang/Object;
.source "DexFormat.java"


# static fields
.field public static final API_CONST_METHOD_HANDLE:I = 0x1c

.field public static final API_CURRENT:I = 0x1c

.field public static final API_DEFINE_INTERFACE_METHODS:I = 0x18

.field public static final API_INVOKE_INTERFACE_METHODS:I = 0x18

.field public static final API_INVOKE_STATIC_INTERFACE_METHODS:I = 0x15

.field public static final API_METHOD_HANDLES:I = 0x1a

.field public static final API_NO_EXTENDED_OPCODES:I = 0xd

.field public static final DEX_IN_JAR_NAME:Ljava/lang/String; = "classes.dex"

.field public static final ENDIAN_TAG:I = 0x12345678

.field public static final MAGIC_PREFIX:Ljava/lang/String; = "dex\n"

.field public static final MAGIC_SUFFIX:Ljava/lang/String; = "\u0000"

.field public static final MAX_MEMBER_IDX:I = 0xffff

.field public static final MAX_TYPE_IDX:I = 0xffff

.field public static final VERSION_CURRENT:Ljava/lang/String; = "039"

.field public static final VERSION_FOR_API_13:Ljava/lang/String; = "035"

.field public static final VERSION_FOR_API_24:Ljava/lang/String; = "037"

.field public static final VERSION_FOR_API_26:Ljava/lang/String; = "038"

.field public static final VERSION_FOR_API_28:Ljava/lang/String; = "039"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiToMagic(I)Ljava/lang/String;
    .registers 3

    .line 146
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_5

    :goto_4
    goto :goto_8

    :cond_5
    if-lt p0, v0, :cond_b

    goto :goto_4

    .line 158
    :goto_8
    const-string p0, "039"

    goto :goto_1b

    .line 146
    :cond_b
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_12

    .line 151
    const-string p0, "038"

    goto :goto_1b

    :cond_12
    const/16 v0, 0x18

    if-lt p0, v0, :cond_19

    .line 153
    const-string p0, "037"

    goto :goto_1b

    .line 155
    :cond_19
    const-string p0, "035"

    .line 158
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dex\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSupportedDexMagic([B)Z
    .registers 1

    .line 167
    invoke-static {p0}, Lcom/s1243808733/android/dex/DexFormat;->magicToApi([B)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static magicToApi([B)I
    .registers 5

    .line 111
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eq v0, v1, :cond_7

    return v2

    .line 115
    :cond_7
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7c

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_7c

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_7c

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7c

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-eqz v0, :cond_29

    goto :goto_7c

    .line 120
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    aget-byte p0, p0, v1

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string v0, "035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 p0, 0xd

    return p0

    .line 124
    :cond_54
    const-string v0, "037"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/16 p0, 0x18

    return p0

    .line 126
    :cond_5f
    const-string v0, "038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/16 p0, 0x1a

    return p0

    .line 128
    :cond_6a
    const-string v0, "039"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x1c

    if-eqz v1, :cond_75

    return v3

    .line 130
    :cond_75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7c

    return v3

    :cond_7c
    :goto_7c
    return v2
.end method
