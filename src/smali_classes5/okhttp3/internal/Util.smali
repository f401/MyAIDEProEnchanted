.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_HEADERS:Lokhttp3/Headers;

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNICODE_BOMS:Lokio/Options;

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_32BE:Ljava/nio/charset/Charset;

.field private static final UTF_32LE:Ljava/nio/charset/Charset;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-array v1, v3, [B

    sput-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    invoke-static {v0, v1}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    const/4 v1, 0x5

    new-array v1, v1, [Lokio/ByteString;

    const-string v2, "efbbbf"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "feff"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "fffe"

    invoke-static {v3}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0000ffff"

    invoke-static {v3}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ffff0000"

    invoke-static {v3}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/Util;->UNICODE_BOMS:Lokio/Options;

    const-string v1, "UTF-32BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/Util;->UTF_32BE:Ljava/nio/charset/Charset;

    const-string v1, "UTF-32LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/Util;->UTF_32LE:Ljava/nio/charset/Charset;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    new-instance v1, Lokhttp3/internal/Util$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lokhttp3/internal/Util$$ExternalSyntheticLambda1;-><init>()V

    sput-object v1, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    :try_start_72
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_8d

    move-result-object v0

    :goto_82
    sput-object v0, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void

    :catch_8d
    move-exception v1

    goto :goto_82
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSuppressedIfPossible(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    sget-object v0, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_10

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_10
    move-exception v0

    goto :goto_d
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/Util;->UNICODE_BOMS:Lokio/Options;

    invoke-interface {p0, v0}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    sget-object p1, Lokhttp3/internal/Util;->UTF_32LE:Ljava/nio/charset/Charset;

    :cond_19
    :goto_19
    return-object p1

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    sget-object p1, Lokhttp3/internal/Util;->UTF_32BE:Ljava/nio/charset/Charset;

    goto :goto_19

    :cond_23
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_19

    :cond_26
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_19

    :cond_29
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_19
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v1, v2}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    :goto_24
    if-nez v1, :cond_31

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_24

    :cond_31
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3f

    invoke-static {v0}, Lokhttp3/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_3f
    array-length v0, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_48

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid IPv6 address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_64
    :try_start_64
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v1}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_77} :catch_7c

    move-result v2

    if-nez v2, :cond_26

    move-object v0, v1

    goto :goto_26

    :catch_7c
    move-exception v1

    goto :goto_26
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 11

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_53

    if-eqz p3, :cond_4b

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_34

    cmp-long v2, v0, v4

    if-nez v2, :cond_1b

    cmp-long v2, p1, v4

    if-gtz v2, :cond_1d

    :cond_1b
    long-to-int v0, v0

    return v0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " too small."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " too large."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " < 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .registers 10

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    cmp-long v0, p2, p0

    if-gtz v0, :cond_13

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 3

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_10

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_5

    throw v0

    :catch_10
    move-exception v0

    goto :goto_5
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    array-length v2, p0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    return-object v1
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_16

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_15

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_17

    :cond_15
    move v1, v2

    :cond_16
    :goto_16
    return v1

    :cond_17
    const-string v4, " #%/:?@[\\]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    move v1, v2

    goto :goto_16

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x61

    const/16 v1, 0x41

    const/16 v2, 0x30

    if-lt p0, v2, :cond_f

    const/16 v2, 0x39

    if-gt p0, v2, :cond_f

    add-int/lit8 v0, p0, -0x30

    :goto_e
    return v0

    :cond_f
    if-lt p0, v0, :cond_1a

    const/16 v2, 0x66

    if-gt p0, v2, :cond_1a

    :goto_15
    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    :cond_1a
    if-lt p0, v1, :cond_22

    const/16 v0, 0x46

    if-gt p0, v0, :cond_22

    move v0, v1

    goto :goto_15

    :cond_22
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 12

    const/4 v1, 0x0

    move v4, p4

    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_4b

    array-length v2, p3

    if-ne v4, v2, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    if-eq v4, p4, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_9

    :cond_16
    add-int/lit8 v0, v0, 0x1

    :cond_18
    move v2, v1

    move v3, v0

    :goto_1a
    if-ge v3, p2, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_28

    const/16 v6, 0x39

    if-le v5, v6, :cond_2e

    :cond_28
    sub-int v0, v3, v0

    if-nez v0, :cond_42

    move v0, v1

    goto :goto_9

    :cond_2e
    if-nez v2, :cond_34

    if-eq v0, v3, :cond_34

    move v0, v1

    goto :goto_9

    :cond_34
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    const/16 v5, 0xff

    if-le v2, v5, :cond_3f

    move v0, v1

    goto :goto_9

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_42
    int-to-byte v0, v2

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v0, v3

    goto :goto_3

    :cond_4b
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_51

    move v0, v1

    goto :goto_9

    :cond_51
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 16
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v12, 0x1

    const/16 v11, 0x10

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-array v9, v11, [B

    move v7, v8

    move v1, v8

    move v2, v5

    move v0, p1

    :goto_c
    if-ge v0, p2, :cond_29

    if-ne v2, v11, :cond_12

    move-object v0, v4

    :goto_11
    return-object v0

    :cond_12
    add-int/lit8 v3, v0, 0x2

    if-gt v3, p2, :cond_48

    const-string v6, "::"

    const/4 v10, 0x2

    invoke-virtual {p0, v0, v6, v5, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_48

    if-eq v1, v8, :cond_23

    move-object v0, v4

    goto :goto_11

    :cond_23
    add-int/lit8 v0, v2, 0x2

    if-ne v3, p2, :cond_2f

    move v1, v0

    move v2, v0

    :cond_29
    :goto_29
    if-eq v2, v11, :cond_96

    if-ne v1, v8, :cond_89

    move-object v0, v4

    goto :goto_11

    :cond_2f
    move v1, v0

    move v2, v0

    :goto_31
    move v0, v5

    move v6, v3

    :goto_33
    if-ge v6, p2, :cond_3f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lokhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v7

    if-ne v7, v8, :cond_6e

    :cond_3f
    sub-int v7, v6, v3

    if-eqz v7, :cond_46

    const/4 v10, 0x4

    if-le v7, v10, :cond_74

    :cond_46
    move-object v0, v4

    goto :goto_11

    :cond_48
    if-eqz v2, :cond_54

    const-string v3, ":"

    invoke-virtual {p0, v0, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_56

    add-int/lit8 v0, v0, 0x1

    :cond_54
    move v3, v0

    goto :goto_31

    :cond_56
    const-string v3, "."

    invoke-virtual {p0, v0, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6c

    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v7, p2, v9, v0}, Lokhttp3/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_68

    move-object v0, v4

    goto :goto_11

    :cond_68
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_29

    :cond_6c
    move-object v0, v4

    goto :goto_11

    :cond_6e
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_74
    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v9, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v9, v7

    move v7, v3

    move v0, v6

    goto :goto_c

    :cond_89
    sub-int v0, v2, v1

    rsub-int/lit8 v3, v0, 0x10

    invoke-static {v9, v1, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v0, v2, 0x10

    add-int/2addr v0, v1

    invoke-static {v9, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_96
    :try_start_96
    invoke-static {v9}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_99
    .catch Ljava/net/UnknownHostException; {:try_start_96 .. :try_end_99} :catch_9c

    move-result-object v0

    goto/16 :goto_11

    :catch_9c
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_b

    move p2, v0

    :cond_a
    return p2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    move p2, v0

    :cond_f
    return p2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_3} :catch_8

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p1, v0

    :cond_7
    :goto_7
    return-object p1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    if-nez p1, :cond_36

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_4e

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4e
    return-object v0

    :cond_4f
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_10

    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_13

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x10

    const/16 v7, 0x3a

    const/4 v2, 0x0

    const/4 v0, -0x1

    move v1, v2

    move v3, v2

    :goto_8
    array-length v4, p0

    if-ge v3, v4, :cond_28

    move v5, v3

    :goto_c
    if-ge v5, v8, :cond_1c

    aget-byte v4, p0, v5

    if-nez v4, :cond_1c

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1c

    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_c

    :cond_1c
    sub-int v4, v5, v3

    if-le v4, v1, :cond_25

    const/4 v6, 0x4

    if-lt v4, v6, :cond_25

    move v0, v3

    move v1, v4

    :cond_25
    add-int/lit8 v3, v5, 0x2

    goto :goto_8

    :cond_28
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    :cond_2d
    :goto_2d
    array-length v4, p0

    if-ge v2, v4, :cond_55

    if-ne v2, v0, :cond_3c

    invoke-virtual {v3, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/2addr v2, v1

    if-ne v2, v8, :cond_2d

    invoke-virtual {v3, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2d

    :cond_3c
    if-lez v2, :cond_41

    invoke-virtual {v3, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :cond_41
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_2d

    :cond_55
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_22

    aget-object v5, p1, v2

    array-length v6, p2

    move v0, v1

    :goto_e
    if-ge v0, v6, :cond_1b

    aget-object v7, p2, v0

    invoke-interface {p0, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1f

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic lambda$threadFactory$0(Ljava/lang/String;ZLjava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    array-length v1, p1

    if-eqz v1, :cond_b

    array-length v1, p2

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    array-length v3, p1

    move v2, v0

    :goto_e
    if-ge v2, v3, :cond_b

    aget-object v4, p1, v2

    array-length v5, p2

    move v1, v0

    :goto_14
    if-ge v1, v5, :cond_23

    aget-object v6, p2, v1

    invoke-interface {p0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_20

    const/4 v0, 0x1

    goto :goto_b

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e
.end method

.method public static platformTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v0, v1
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_14} :catch_3c

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :try_start_1a
    instance-of v2, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_21

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No System TLS"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z
    .registers 4

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    :goto_1c
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :try_start_2d
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    :goto_32
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_52

    invoke-virtual {v4}, Lokio/Buffer;->clear()V
    :try_end_41
    .catch Ljava/io/InterruptedIOException; {:try_start_2d .. :try_end_41} :catch_42
    .catchall {:try_start_2d .. :try_end_41} :catchall_64

    goto :goto_32

    :catch_42
    move-exception v4

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_76

    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_4e
    const/4 v0, 0x0

    :goto_4f
    return v0

    :cond_50
    move-wide v0, v2

    goto :goto_1c

    :cond_52
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_5f

    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_5d
    const/4 v0, 0x1

    goto :goto_4f

    :cond_5f
    add-long/2addr v0, v6

    invoke-virtual {v4, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_5d

    :catchall_64
    move-exception v4

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    cmp-long v2, v0, v2

    if-nez v2, :cond_71

    invoke-virtual {v5}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_70
    throw v4

    :cond_71
    add-long/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_70

    :cond_76
    add-long/2addr v0, v6

    invoke-virtual {v4, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4e
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1d

    move p2, v0

    :cond_1c
    return p2

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1e

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    add-int/lit8 p1, p2, 0x1

    :cond_1e
    return p1
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    new-instance v0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHeaderBlock(Lokhttp3/Headers;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    new-instance v2, Lokhttp3/internal/http2/Header;

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1f
    return-object v1
.end method

.method public static toHeaders(Ljava/util/List;)Lokhttp3/Headers;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, v0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v4, v0}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_27
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    invoke-static {p0, v0, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
