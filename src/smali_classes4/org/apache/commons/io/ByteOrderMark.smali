.class public Lorg/apache/commons/io/ByteOrderMark;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_8:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_BOM:C = '\ufeff'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[I

.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-8"

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_4a

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-16BE"

    new-array v2, v3, [I

    fill-array-data v2, :array_54

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-16LE"

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-32BE"

    new-array v2, v4, [I

    fill-array-data v2, :array_64

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-32LE"

    new-array v2, v4, [I

    fill-array-data v2, :array_70

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    return-void

    :array_4a
    .array-data 4
        0xef
        0xbb
        0xbf
    .end array-data

    :array_54
    .array-data 4
        0xfe
        0xff
    .end array-data

    :array_5c
    .array-data 4
        0xff
        0xfe
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x0
        0xfe
        0xff
    .end array-data

    :array_70
    .array-data 4
        0xff
        0xfe
        0x0
        0x0
    .end array-data
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No charsetName specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-eqz p2, :cond_19

    array-length v0, p2

    if-nez v0, :cond_21

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bytes specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/io/ByteOrderMark;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lorg/apache/commons/io/ByteOrderMark;

    iget-object v1, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v1, v1

    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    :goto_12
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public get(I)I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getBytes()[B
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return-object v1
.end method

.method public getCharsetName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_14

    aget v4, v2, v1

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    return v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_20
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_45

    if-lez v0, :cond_2c

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_45
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
