.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV4_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final IPV6_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 104
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    .line 105
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_SPLITTER:Lcom/google/common/base/Splitter;

    .line 106
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 107
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .registers 1

    .line 101
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .registers 3

    .line 319
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 320
    :catch_5
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .registers 2

    .line 895
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .registers 7

    const/4 v1, -0x1

    .line 365
    .line 368
    const/4 v4, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_5
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v4, v5, :cond_21

    .line 369
    array-length v5, p0

    if-ge v4, v5, :cond_17

    aget v5, p0, v4

    if-nez v5, :cond_17

    .line 370
    if-gez v2, :cond_14

    move v2, v4

    .line 368
    :cond_14
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 373
    :cond_17
    if-ltz v2, :cond_14

    .line 374
    sub-int v5, v4, v2

    .line 375
    if-le v5, v3, :cond_1f

    move v0, v2

    move v3, v5

    :cond_1f
    move v2, v1

    .line 379
    goto :goto_14

    .line 382
    :cond_21
    const/4 v2, 0x2

    if-lt v3, v2, :cond_29

    .line 383
    add-int v2, v0, v3

    invoke-static {p0, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 385
    :cond_29
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v2, 0x0

    .line 275
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 276
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    if-nez v0, :cond_1b

    .line 280
    const/4 v0, 0x0

    .line 284
    :goto_1a
    return-object v0

    .line 282
    :cond_1b
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 5

    .line 936
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 937
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 938
    :goto_8
    if-ltz v1, :cond_15

    aget-byte v0, v2, v1

    if-nez v0, :cond_15

    .line 939
    const/4 v0, -0x1

    aput-byte v0, v2, v1

    .line 940
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    .line 943
    :cond_15
    if-ltz v1, :cond_29

    const/4 v0, 0x1

    :goto_18
    const-string v3, "Decrementing %s would wrap."

    invoke-static {v0, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 945
    aget-byte v0, v2, v1

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 946
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 943
    :cond_29
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4

    .line 139
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    if-eqz v0, :cond_b

    .line 146
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 143
    :cond_b
    const-string v0, "\'%s\' is not an IP string literal."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4

    .line 460
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_7

    .line 465
    return-object v0

    .line 462
    :cond_7
    const-string v0, "Not a valid URI IP literal: \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 470
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 477
    const/16 v0, 0x10

    .line 484
    :goto_20
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 485
    if-eqz v1, :cond_29

    array-length v2, v1

    if-eq v2, v0, :cond_2d

    .line 486
    :cond_29
    const/4 v0, 0x0

    .line 489
    :goto_2a
    return-object v0

    .line 479
    :cond_2b
    const/4 v0, 0x4

    goto :goto_20

    .line 489
    :cond_2d
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2a
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4

    .line 992
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .registers 2

    .line 905
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 919
    array-length v0, p0

    new-array v1, v0, [B

    .line 920
    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 921
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 923
    :cond_12
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4

    .line 576
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .registers 7

    const/4 v2, 0x1

    const/16 v5, 0xf

    const/4 v1, 0x0

    .line 832
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_b

    .line 833
    check-cast p0, Ljava/net/Inet4Address;

    .line 873
    :goto_a
    return-object p0

    .line 837
    :cond_b
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    move v0, v1

    .line 839
    :goto_10
    if-ge v0, v5, :cond_68

    .line 840
    aget-byte v4, v3, v0

    if-eqz v4, :cond_20

    move v0, v1

    .line 845
    :goto_17
    if-eqz v0, :cond_23

    aget-byte v4, v3, v5

    if-ne v4, v2, :cond_23

    .line 846
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    goto :goto_a

    .line 839
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 847
    :cond_23
    if-eqz v0, :cond_2c

    aget-byte v0, v3, v5

    if-nez v0, :cond_2c

    .line 848
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    goto :goto_a

    .line 851
    :cond_2c
    check-cast p0, Ljava/net/Inet6Address;

    .line 852
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 854
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 862
    :goto_3d
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    .line 865
    const/high16 v1, -0x20000000

    or-int/2addr v0, v1

    .line 869
    const/4 v1, -0x1

    if-ne v0, v1, :cond_50

    .line 870
    const/4 v0, -0x2

    .line 873
    :cond_50
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    goto :goto_a

    .line 858
    :cond_59
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_3d

    :cond_68
    move v0, v2

    goto :goto_17
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4

    .line 545
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not IPv4-compatible."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 5

    .line 762
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 763
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 771
    :goto_a
    return-object v0

    .line 766
    :cond_b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 767
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_a

    .line 770
    :cond_16
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 771
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_a

    .line 774
    :cond_25
    const-string v0, "\'%s\' has no embedded IPv4 address."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .registers 4

    .line 119
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 125
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 119
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4

    .line 728
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .registers 8

    const v6, 0xffff

    const/16 v3, 0x8

    .line 667
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 669
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 670
    const/4 v1, 0x4

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 672
    invoke-static {v0, v3}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v2

    .line 675
    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v3

    .line 677
    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 678
    const/4 v0, 0x0

    :goto_3a
    array-length v5, v4

    if-ge v0, v5, :cond_47

    .line 680
    aget-byte v5, v4, v0

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 682
    :cond_47
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    .line 684
    new-instance v4, Lcom/google/common/net/InetAddresses$TeredoInfo;

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v6

    and-int/2addr v2, v6

    invoke-direct {v4, v1, v0, v3, v2}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v4
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .registers 2

    .line 746
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v3, v1

    .line 402
    :goto_a
    array-length v2, p0

    if-ge v3, v2, :cond_34

    .line 403
    aget v2, p0, v3

    if-ltz v2, :cond_28

    const/4 v2, 0x1

    .line 404
    :goto_12
    if-eqz v2, :cond_2a

    .line 405
    if-eqz v0, :cond_1b

    .line 406
    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :cond_1b
    aget v0, p0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_a

    :cond_28
    move v2, v1

    .line 403
    goto :goto_12

    .line 410
    :cond_2a
    if-eqz v3, :cond_2e

    if-eqz v0, :cond_24

    .line 411
    :cond_2e
    const-string v0, "::"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 416
    :cond_34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 6

    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 960
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 961
    :goto_8
    if-ltz v1, :cond_14

    aget-byte v3, v2, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 962
    aput-byte v0, v2, v1

    .line 963
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 966
    :cond_14
    if-ltz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    const-string v3, "Incrementing %s would wrap."

    invoke-static {v0, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 968
    aget-byte v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 969
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 163
    move v0, v1

    move v2, v1

    move v3, v1

    .line 165
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_2f

    .line 166
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_19

    move v1, v4

    .line 165
    :goto_15
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_6

    .line 169
    :cond_19
    const/16 v6, 0x3a

    if-ne v1, v6, :cond_24

    .line 170
    if-eqz v2, :cond_21

    move-object v0, v5

    .line 191
    :goto_20
    return-object v0

    :cond_21
    move v0, v4

    move v1, v2

    .line 173
    goto :goto_15

    .line 174
    :cond_24
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_49

    move-object v0, v5

    .line 175
    goto :goto_20

    .line 180
    :cond_2f
    if-eqz v0, :cond_40

    .line 181
    if-eqz v2, :cond_3b

    .line 182
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    if-nez p0, :cond_3b

    move-object v0, v5

    .line 184
    goto :goto_20

    .line 187
    :cond_3b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_20

    .line 188
    :cond_40
    if-eqz v2, :cond_47

    .line 189
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_20

    :cond_47
    move-object v0, v5

    .line 191
    goto :goto_20

    :cond_49
    move v1, v2

    goto :goto_15
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 564
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 565
    aget-byte v3, v2, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    aget-byte v2, v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .registers 6

    const/16 v4, 0xf

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v2

    if-nez v2, :cond_b

    .line 534
    :cond_a
    :goto_a
    return v0

    .line 526
    :cond_b
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 527
    const/16 v3, 0xc

    aget-byte v3, v2, v3

    if-nez v3, :cond_29

    const/16 v3, 0xd

    aget-byte v3, v2, v3

    if-nez v3, :cond_29

    const/16 v3, 0xe

    aget-byte v3, v2, v3

    if-nez v3, :cond_29

    aget-byte v3, v2, v4

    if-eqz v3, :cond_a

    aget-byte v2, v2, v4

    if-eq v2, v1, :cond_a

    :cond_29
    move v0, v1

    .line 534
    goto :goto_a
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .registers 2

    .line 157
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .registers 5

    const/4 v0, 0x0

    .line 704
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 717
    :cond_7
    :goto_7
    return v0

    .line 708
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    .line 710
    const/16 v2, 0x8

    aget-byte v2, v1, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 717
    const/16 v2, 0x9

    aget-byte v2, v1, v2

    if-nez v2, :cond_7

    const/16 v2, 0xa

    aget-byte v2, v1, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_7

    const/16 v2, 0xb

    aget-byte v1, v1, v2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .registers 6

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 796
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 797
    if-eqz v3, :cond_15

    array-length v2, v3

    const/16 v4, 0x10

    if-ne v2, v4, :cond_15

    move v2, v0

    .line 798
    :goto_f
    if-ge v2, v1, :cond_1b

    .line 799
    aget-byte v4, v3, v2

    if-eqz v4, :cond_16

    .line 810
    :cond_15
    :goto_15
    return v0

    .line 798
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 803
    :cond_19
    add-int/lit8 v1, v1, 0x1

    :cond_1b
    const/16 v2, 0xc

    if-ge v1, v2, :cond_25

    .line 804
    aget-byte v2, v3, v1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    goto :goto_15

    .line 808
    :cond_25
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .registers 6

    const/4 v1, 0x0

    .line 981
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    move v0, v1

    .line 982
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_12

    .line 983
    aget-byte v3, v2, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    .line 987
    :goto_e
    return v1

    .line 982
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 987
    :cond_12
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 652
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 653
    aget-byte v3, v2, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    aget-byte v3, v2, v0

    if-ne v3, v0, :cond_1b

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    if-nez v3, :cond_1b

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-nez v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .registers 2

    .line 500
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .registers 3

    .line 300
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 301
    const v1, 0xffff

    if-gt v0, v1, :cond_d

    .line 304
    int-to-short v0, v0

    return v0

    .line 302
    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .registers 4

    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 292
    const/16 v1, 0xff

    if-gt v0, v1, :cond_19

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_19

    .line 295
    :cond_17
    int-to-byte v0, v0

    return v0

    .line 293
    :cond_19
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 7
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 196
    new-array v1, v5, [B

    .line 197
    const/4 v0, 0x0

    .line 199
    :try_start_5
    sget-object v3, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v3, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_1c} :catch_2a

    .line 200
    :try_start_1c
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_22} :catch_2d

    .line 201
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    .line 204
    :cond_26
    if-ne v3, v5, :cond_2f

    move-object v0, v1

    :goto_29
    return-object v0

    .line 202
    :catch_2a
    move-exception v0

    :goto_2b
    move-object v0, v2

    .line 203
    goto :goto_29

    .line 202
    :catch_2d
    move-exception v0

    goto :goto_2b

    :cond_2f
    move-object v0, v2

    goto :goto_29
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 212
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    .line 213
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_18

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1a

    :cond_18
    move-object v0, v4

    .line 269
    :goto_19
    return-object v0

    .line 219
    :cond_1a
    const/4 v0, -0x1

    move v1, v0

    move v2, v3

    .line 220
    :goto_1d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_3a

    .line 221
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c3

    .line 222
    if-ltz v1, :cond_35

    move-object v0, v4

    .line 223
    goto :goto_19

    :cond_35
    move v0, v2

    .line 220
    :goto_36
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1d

    .line 231
    :cond_3a
    if-ltz v1, :cond_68

    .line 234
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x1

    .line 235
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c1

    add-int/lit8 v0, v1, -0x1

    if-eqz v0, :cond_55

    move-object v0, v4

    .line 236
    goto :goto_19

    :cond_55
    move v2, v0

    .line 238
    :goto_56
    invoke-static {v7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6d

    add-int/lit8 v5, v5, -0x1

    if-eqz v5, :cond_6d

    move-object v0, v4

    .line 239
    goto :goto_19

    .line 244
    :cond_68
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    move v5, v6

    .line 250
    :cond_6d
    add-int v0, v2, v5

    rsub-int/lit8 v8, v0, 0x8

    .line 251
    if-ltz v1, :cond_8f

    if-lt v8, v3, :cond_91

    .line 256
    :cond_75
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v1, v6

    .line 258
    :goto_7c
    if-ge v1, v2, :cond_93

    .line 259
    :try_start_7e
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7c

    .line 251
    :cond_8f
    if-eqz v8, :cond_75

    :cond_91
    move-object v0, v4

    .line 252
    goto :goto_19

    :cond_93
    move v0, v6

    .line 261
    :goto_94
    if-ge v0, v8, :cond_bf

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 264
    :goto_9d
    if-lez v1, :cond_b9

    .line 265
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_b1} :catch_b5

    .line 264
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9d

    .line 267
    :catch_b5
    move-exception v0

    move-object v0, v4

    .line 268
    goto/16 :goto_19

    .line 269
    :cond_b9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto/16 :goto_19

    :cond_bf
    move v1, v5

    goto :goto_9d

    :cond_c1
    move v2, v1

    goto :goto_56

    :cond_c3
    move v0, v1

    goto/16 :goto_36
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    .line 341
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_d

    .line 344
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_c
    return-object v0

    .line 346
    :cond_d
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 347
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 348
    const/16 v0, 0x8

    new-array v3, v0, [I

    move v0, v1

    .line 349
    :goto_1b
    array-length v4, v3

    if-ge v0, v4, :cond_31

    .line 350
    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, v2, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v2, v5

    invoke-static {v1, v1, v4, v5}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    aput v4, v3, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 352
    :cond_31
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 353
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 3

    .line 439
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1f

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
