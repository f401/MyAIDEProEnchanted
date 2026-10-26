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
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiToMagic(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x1c

    .line 146
    if-lt p0, v0, :cond_1

    .line 158
    :cond_0
    const-string v0, "039"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dex\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    if-ge p0, v0, :cond_0

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_2

    .line 151
    const-string v0, "038"

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-lt p0, v0, :cond_3

    .line 153
    const-string v0, "037"

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "035"

    goto :goto_0
.end method

.method public static isSupportedDexMagic([B)Z
    .locals 1

    .line 167
    invoke-static {p0}, Lcom/s1243808733/android/dex/DexFormat;->magicToApi([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static magicToApi([B)I
    .locals 4

    const/16 v1, 0x1c

    const/4 v0, -0x1

    .line 111
    array-length v2, p0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "035"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    .line 124
    :cond_2
    const-string v3, "037"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x18

    goto :goto_0

    .line 126
    :cond_3
    const-string v3, "038"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x1a

    goto :goto_0

    .line 128
    :cond_4
    const-string v3, "039"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 130
    :cond_5
    const-string v3, "039"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
