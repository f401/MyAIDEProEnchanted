.class final Lcom/google/common/hash/LittleEndianByteArray;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;,
        Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;,
        Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 245
    :try_start_2
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    const-string v2, "amd64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 248
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_24

    .line 255
    :cond_1e
    :goto_1e
    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    .line 256
    return-void

    .line 248
    :cond_21
    :try_start_21
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1e

    .line 252
    :catchall_24
    move-exception v1

    goto :goto_1e
.end method

.method private constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load32([BI)I
    .registers 4

    .line 94
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static load64([BI)J
    .registers 4

    .line 42
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->getLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static load64Safely([BII)J
    .registers 11

    .line 58
    const-wide/16 v0, 0x0

    .line 63
    const/16 v2, 0x8

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 64
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_1a

    .line 66
    add-int v4, p1, v2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v2, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 68
    :cond_1a
    return-wide v0
.end method

.method static store64([BIJ)V
    .registers 6

    .line 80
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->putLongLittleEndian([BIJ)V

    .line 83
    return-void
.end method

.method static usingUnsafe()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    instance-of v0, v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return v0
.end method
