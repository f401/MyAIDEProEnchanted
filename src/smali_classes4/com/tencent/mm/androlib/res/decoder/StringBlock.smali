.class public Lcom/tencent/mm/androlib/res/decoder/StringBlock;
.super Ljava/lang/Object;


# static fields
.field private static final CHUNK_NULL_TYPE:I = 0x0

.field private static final CHUNK_STRINGPOOL_TYPE:I = 0x1c0001

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final NULL:B = 0x0t

.field private static final UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_FLAG:I = 0x100


# instance fields
.field private m_isUTF8:Z

.field private m_stringOffsets:[I

.field private m_stringOwns:[I

.field private m_strings:[B

.field private m_styleOffsets:[I

.field private m_styles:[I


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    :try_start_18
    const-string v0, "com.tencent.mm.androlib.res.decoder.StringBlock"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1d} :catch_29

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->LOGGER:Ljava/util/logging/Logger;

    return-void

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeString(II)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    :goto_7
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v2, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15
    return-object v1

    :cond_16
    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;
    :try_end_18
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_7

    :catch_19
    move-exception v0

    move-object v2, v0

    sget-object v3, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/String;

    goto :goto_15
.end method

.method private static final getShort([BI)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static final getShort([II)I
    .registers 4

    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_f

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_e
    return v0

    :cond_f
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_e
.end method

.method private static final getUtf16([BI)[I
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_34

    add-int/lit8 v0, p1, 0x3

    aget-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v3, p0, v0

    new-array v0, v4, [I

    const/4 v4, 0x4

    aput v4, v0, v5

    and-int/lit16 v1, v1, 0x7fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    aput v1, v0, v6

    :goto_33
    return-object v0

    :cond_34
    new-array v0, v4, [I

    aput v4, v0, v5

    mul-int/lit8 v1, v1, 0x2

    aput v1, v0, v6

    goto :goto_33
.end method

.method private static final getUtf8([BI)[I
    .registers 6

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_25

    add-int/lit8 v0, p1, 0x2

    :goto_8
    aget-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1b

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2

    :cond_25
    add-int/lit8 v0, p1, 0x1

    goto :goto_8
.end method

.method public static read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x1c0001

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->skipCheckChunkTypeInt(II)V

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    new-instance v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-direct {v7}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;-><init>()V

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_76

    :goto_28
    iput-boolean v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    invoke-virtual {p0, v3}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    new-array v0, v3, [I

    iput-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOwns:[I

    iget-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOwns:[I

    const/4 v3, -0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    if-eqz v4, :cond_42

    invoke-virtual {p0, v4}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    :cond_42
    if-nez v2, :cond_78

    move v0, v1

    :goto_45
    sub-int/2addr v0, v6

    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_7a

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "String data size is not multiple of 4 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_76
    const/4 v0, 0x1

    goto :goto_28

    :cond_78
    move v0, v2

    goto :goto_45

    :cond_7a
    new-array v0, v0, [B

    iput-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    iget-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-virtual {p0, v0}, Lcom/tencent/mm/util/ExtDataInput;->readFully([B)V

    if-eqz v2, :cond_bf

    sub-int v0, v1, v2

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_b7

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Style data size is not multiple of 4 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b7
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styles:[I

    :cond_bf
    return-object v7
.end method

.method public static writeAll(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/util/ExtDataInput;",
            "Lcom/tencent/mm/util/ExtDataOutput;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x1c0001

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeCheckChunkTypeInt(Lcom/tencent/mm/util/ExtDataInput;II)V

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, p0, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    return-void
.end method

.method private static final writeShort([BIS)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIS)V"
        }
    .end annotation

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static writeSpecNameStringBlock(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;Ljava/util/Map;Ljava/util/Map;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/util/ExtDataInput;",
            "Lcom/tencent/mm/util/ExtDataOutput;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v11

    if-eqz v11, :cond_29

    new-instance v2, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v3, "writeSpecNameStringBlock styleOffsetCount != 0  styleOffsetCount %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v12

    and-int/lit16 v2, v12, 0x100

    if-nez v2, :cond_74

    const/4 v2, 0x0

    move v4, v2

    :goto_33
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    if-nez v6, :cond_77

    move v2, v5

    :goto_43
    sub-int/2addr v2, v8

    rem-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_79

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "String data size is not multiple of 4 ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ")."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_74
    const/4 v2, 0x1

    move v4, v2

    goto :goto_33

    :cond_77
    move v2, v6

    goto :goto_43

    :cond_79
    new-array v7, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/util/ExtDataInput;->readFully([B)V

    const v7, 0x1c0001

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Lcom/tencent/mm/util/ExtDataOutput;->writeCheckInt(II)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v13

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "String pool size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    mul-int/lit8 v3, v13, 0x4

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v10, v3, 0x4

    new-array v14, v13, [I

    mul-int/lit8 v2, v2, 0x2

    new-array v15, v2, [B

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->clear()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v2

    move v8, v3

    move v9, v10

    :goto_c4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_103

    sub-int v3, v9, v10

    rem-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_d7

    const/4 v2, 0x0

    :goto_d1
    rem-int/lit8 v4, v3, 0x4

    rsub-int/lit8 v4, v4, 0x4

    if-lt v2, v4, :cond_21c

    :cond_d7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/tencent/mm/util/ExtDataOutput;->writeIntArray([I)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v8}, Lcom/tencent/mm/util/ExtDataOutput;->write([BII)V

    sub-int v2, v5, v9

    return v2

    :cond_103
    aput v8, v14, v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_119
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_179

    if-eqz v4, :cond_1b5

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v8

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v3

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18e

    new-instance v4, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v5, "writeSpecNameStringBlock %s UTF-8 length is different name %d, tempByte %d\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v2, 0x2

    new-instance v7, Ljava/lang/Integer;

    array-length v3, v3

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_179
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_119

    :cond_18e
    const/16 v17, 0x0

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v15, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v8, v3

    add-int/lit8 v3, v8, 0x1

    const/16 v17, 0x0

    aput-byte v17, v15, v8

    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v9, v8, v2

    :goto_1af
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    goto/16 :goto_c4

    :cond_1b5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-short v3, v3

    invoke-static {v15, v8, v3}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeShort([BIS)V

    add-int/lit8 v3, v8, 0x2

    const-string v8, "UTF-16LE"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1ff

    new-instance v3, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v4, "writeSpecNameStringBlock %s UTF-16LE length is different name %d, tempByte %d\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v2, 0x2

    new-instance v6, Ljava/lang/Integer;

    array-length v7, v8

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1ff
    const/4 v2, 0x0

    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v8, v2, v15, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v8

    add-int/2addr v2, v3

    add-int/lit8 v17, v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v15, v2

    add-int/lit8 v3, v17, 0x1

    const/4 v2, 0x0

    aput-byte v2, v15, v17

    add-int/lit8 v2, v9, 0x2

    array-length v8, v8

    add-int/lit8 v8, v8, 0x2

    add-int v9, v2, v8

    goto :goto_1af

    :cond_21c
    const/4 v4, 0x0

    aput-byte v4, v15, v8

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_d1
.end method

.method public static writeTableNameStringBlock(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;Ljava/util/Map;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/util/ExtDataInput;",
            "Lcom/tencent/mm/util/ExtDataOutput;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    new-instance v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-direct {v11}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;-><init>()V

    and-int/lit16 v1, v10, 0x100

    if-nez v1, :cond_83

    const/4 v1, 0x0

    :goto_26
    iput-boolean v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    iget-boolean v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-eqz v1, :cond_85

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "resources.arsc Character Encoding: utf-8\n"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    new-array v1, v8, [I

    iput-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOwns:[I

    const/4 v1, 0x0

    :goto_43
    if-lt v1, v8, :cond_90

    if-eqz v9, :cond_4f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    :cond_4f
    if-nez v3, :cond_98

    move v1, v2

    :goto_52
    sub-int/2addr v1, v5

    rem-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_9a

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "String data size is not multiple of 4 ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_83
    const/4 v1, 0x1

    goto :goto_26

    :cond_85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "resources.arsc Character Encoding: utf-16\n"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_36

    :cond_90
    iget-object v6, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOwns:[I

    const/4 v7, -0x1

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_98
    move v1, v3

    goto :goto_52

    :cond_9a
    new-array v1, v1, [B

    iput-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->readFully([B)V

    if-eqz v3, :cond_e3

    sub-int v1, v2, v3

    rem-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_d9

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Style data size is not multiple of 4 ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d9
    div-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styles:[I

    :cond_e3
    const v1, 0x1c0001

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeCheckInt(II)V

    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v4, v9, 0x4

    add-int/2addr v1, v4

    add-int/lit8 v7, v1, 0x4

    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    array-length v1, v1

    new-array v12, v1, [B

    new-array v13, v8, [I

    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v13

    invoke-static {v1, v4, v13, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v6, v1

    move v5, v7

    :goto_107
    if-lt v6, v8, :cond_160

    sub-int v6, v5, v7

    rem-int/lit8 v1, v6, 0x4

    if-eqz v1, :cond_280

    const/4 v1, 0x0

    :goto_110
    rem-int/lit8 v14, v6, 0x4

    rsub-int/lit8 v14, v14, 0x4

    if-lt v1, v14, :cond_272

    move v6, v4

    move v1, v5

    :goto_118
    if-eqz v3, :cond_27d

    iget-object v3, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styles:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    add-int v4, v3, v1

    move v3, v1

    :goto_122
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/tencent/mm/util/ExtDataOutput;->writeIntArray([I)V

    if-eqz v3, :cond_14e

    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeIntArray([I)V

    :cond_14e
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1, v6}, Lcom/tencent/mm/util/ExtDataOutput;->write([BII)V

    if-eqz v3, :cond_15d

    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_styles:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeIntArray([I)V

    :cond_15d
    sub-int v1, v2, v4

    return v1

    :cond_160
    aput v4, v13, v6

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_19a

    add-int/lit8 v1, v8, -0x1

    if-ne v6, v1, :cond_18e

    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    array-length v1, v1

    iget-object v14, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v14, v14, v6

    sub-int/2addr v1, v14

    :goto_17d
    iget-object v14, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    iget-object v15, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v15, v15, v6

    invoke-static {v14, v15, v12, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v1

    add-int/2addr v4, v1

    move v1, v5

    :goto_189
    add-int/lit8 v6, v6, 0x1

    move v5, v1

    goto/16 :goto_107

    :cond_18e
    iget-object v1, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    add-int/lit8 v14, v6, 0x1

    aget v1, v1, v14

    iget-object v14, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v14, v14, v6

    sub-int/2addr v1, v14

    goto :goto_17d

    :cond_19a
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v14, v11, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-eqz v14, :cond_214

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v12, v4

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    const-string v14, "UTF-8"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1f6

    new-instance v2, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v3, "writeTableNameStringBlock UTF-8 length is different  name %d, tempByte %d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v1, 0x1

    new-instance v5, Ljava/lang/Integer;

    array-length v6, v14

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f6
    const/4 v15, 0x0

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v15, v12, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v4, v14

    const/4 v14, 0x0

    aput-byte v14, v12, v4

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_189

    :cond_214
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    int-to-short v14, v14

    invoke-static {v12, v4, v14}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeShort([BIS)V

    add-int/lit8 v4, v4, 0x2

    const-string v14, "UTF-16LE"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_259

    new-instance v2, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v3, "writeTableNameStringBlock UTF-16LE length is different  name %d, tempByte %d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v1, 0x1

    new-instance v5, Ljava/lang/Integer;

    array-length v6, v14

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_259
    const/4 v1, 0x0

    array-length v15, v14

    invoke-static {v14, v1, v12, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v14

    add-int/2addr v1, v4

    add-int/lit8 v15, v1, 0x1

    const/4 v4, 0x0

    aput-byte v4, v12, v1

    add-int/lit8 v4, v15, 0x1

    const/4 v1, 0x0

    aput-byte v1, v12, v15

    array-length v1, v14

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    goto/16 :goto_189

    :cond_272
    const/4 v14, 0x0

    aput-byte v14, v12, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_110

    :cond_27d
    move v4, v1

    goto/16 :goto_122

    :cond_280
    move v6, v4

    move v1, v5

    goto/16 :goto_118
.end method


# virtual methods
.method public find(Ljava/lang/String;)I
    .registers 10

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    move v1, v2

    :goto_6
    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v3, v3

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v4, v3, v1

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v3, v4}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    move v3, v2

    :goto_1f
    if-ne v3, v5, :cond_25

    :cond_21
    if-ne v3, v5, :cond_1b

    move v0, v1

    goto :goto_4

    :cond_25
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v7, v4}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v7

    if-ne v6, v7, :cond_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f
.end method

.method public get(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    if-lt p1, v0, :cond_11

    :cond_d
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v0, v0, p1

    iget-boolean v1, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v1, v0}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getUtf8([BI)[I

    move-result-object v1

    aget v0, v1, v2

    aget v1, v1, v3

    :goto_23
    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->decodeString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_28
    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v1, v0}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getUtf16([BI)[I

    move-result-object v1

    aget v2, v1, v2

    add-int/2addr v0, v2

    aget v1, v1, v3

    goto :goto_23
.end method
