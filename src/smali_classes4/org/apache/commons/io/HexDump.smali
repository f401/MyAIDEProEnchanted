.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lorg/apache/commons/io/HexDump;->_shifts:[I

    return-void

    nop

    :array_1c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_30
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    shr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-object p0
.end method

.method private static dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    aget v2, v2, v0

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-object p0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v10, 0x20

    const/16 v3, 0x10

    const/4 v5, 0x0

    if-ltz p4, :cond_a

    array-length v0, p0

    if-lt p4, v0, :cond_2e

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    if-nez p3, :cond_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot write to nullstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    int-to-long v0, p4

    add-long/2addr v0, p1

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v2, 0x4a

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_41
    array-length v2, p0

    if-ge p4, v2, :cond_a9

    array-length v2, p0

    sub-int/2addr v2, p4

    if-le v2, v3, :cond_49

    move v2, v3

    :cond_49
    invoke-static {v6, v0, v1}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    :goto_51
    if-ge v4, v3, :cond_68

    if-ge v4, v2, :cond_62

    add-int v7, v4, p4

    aget-byte v7, p0, v7

    invoke-static {v6, v7}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;

    :goto_5c
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_62
    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_68
    move v4, v5

    :goto_69
    if-ge v4, v2, :cond_8a

    add-int v7, v4, p4

    aget-byte v7, p0, v7

    if-lt v7, v10, :cond_84

    add-int v7, v4, p4

    aget-byte v7, p0, v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_84

    add-int v7, v4, p4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_84
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_8a
    sget-object v4, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    int-to-long v8, v2

    add-long/2addr v0, v8

    add-int/lit8 p4, p4, 0x10

    goto :goto_41

    :cond_a9
    return-void
.end method
