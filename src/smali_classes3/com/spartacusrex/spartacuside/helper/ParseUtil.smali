.class public Lcom/spartacusrex/spartacuside/helper/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;,
        Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field static encodedInPath:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x20

    .line 21
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    .line 33
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 34
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 35
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 36
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 40
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 41
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 42
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 43
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 44
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 45
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 46
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 47
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 48
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 49
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 50
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 51
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 52
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 53
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 57
    sget-object v1, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/16 v8, 0x25

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 160
    if-eqz v2, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object p0

    .line 163
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 165
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 166
    const-string v0, "UTF-8"

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 167
    invoke-virtual {v0, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 168
    invoke-virtual {v0, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    :goto_1
    if-ge v1, v2, :cond_2

    .line 172
    if-eq v0, v8, :cond_4

    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_3

    .line 208
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    :cond_5
    :try_start_0
    invoke-static {p0, v1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->unescape(Ljava/lang/String;I)B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    add-int/lit8 v1, v1, 0x3

    .line 190
    if-lt v1, v2, :cond_6

    .line 196
    :goto_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 197
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v6}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 199
    const/4 v7, 0x1

    invoke-virtual {v6, v4, v5, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 200
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v7

    if-nez v7, :cond_8

    .line 202
    invoke-virtual {v6, v5}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 203
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v7

    if-nez v7, :cond_7

    .line 205
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 192
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 193
    if-eq v0, v8, :cond_5

    goto :goto_2

    .line 204
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error decoding percent encoded characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error decoding percent encoded characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    const/16 v8, 0x2f

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    new-array v2, v0, [C

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v4

    move v0, v4

    .line 97
    :goto_0
    if-ge v3, v6, :cond_b

    .line 98
    aget-char v1, v5, v3

    .line 99
    if-nez p1, :cond_0

    if-eq v1, v8, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    sget-char v7, Ljava/io/File;->separatorChar:C

    if-ne v1, v7, :cond_3

    .line 100
    :cond_1
    aput-char v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 122
    :goto_1
    add-int/lit8 v1, v0, 0x9

    array-length v7, v2

    if-le v1, v7, :cond_c

    .line 123
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    .line 124
    if-gez v1, :cond_2

    .line 125
    const v1, 0x7fffffff

    .line 127
    :cond_2
    new-array v1, v1, [C

    .line 128
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    goto :goto_0

    .line 102
    :cond_3
    const/16 v7, 0x7f

    if-gt v1, v7, :cond_9

    .line 103
    const/16 v7, 0x61

    if-lt v1, v7, :cond_4

    const/16 v7, 0x7a

    if-le v1, v7, :cond_6

    :cond_4
    const/16 v7, 0x41

    if-lt v1, v7, :cond_5

    const/16 v7, 0x5a

    if-le v1, v7, :cond_6

    :cond_5
    const/16 v7, 0x30

    if-lt v1, v7, :cond_7

    const/16 v7, 0x39

    if-gt v1, v7, :cond_7

    .line 106
    :cond_6
    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_7
    sget-object v7, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v7, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 108
    invoke-static {v2, v1, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->escape([CCI)I

    move-result v0

    goto :goto_1

    .line 110
    :cond_8
    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_9
    const/16 v7, 0x7ff

    if-le v1, v7, :cond_a

    .line 112
    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-char v7, v7

    invoke-static {v2, v7, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->escape([CCI)I

    move-result v0

    .line 113
    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-char v7, v7

    invoke-static {v2, v7, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->escape([CCI)I

    move-result v0

    .line 114
    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-char v1, v1

    invoke-static {v2, v1, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->escape([CCI)I

    move-result v0

    goto :goto_1

    .line 116
    :cond_a
    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-char v7, v7

    invoke-static {v2, v7, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->escape([CCI)I

    move-result v0

    .line 117
    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-char v1, v1

    invoke-static {v2, v1, v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->escape([CCI)I

    move-result v0

    goto/16 :goto_1

    .line 132
    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_c
    move-object v1, v2

    goto :goto_2
.end method

.method private static escape([CCI)I
    .registers 7

    const/16 v3, 0x10

    .line 140
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x25

    aput-char v1, p0, p2

    .line 141
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, p0, v0

    .line 142
    and-int/lit8 v0, p1, 0xf

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    aput-char v0, p0, v1

    .line 143
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public static fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1
    new-instance v1, Ljava/net/URL;

    const-string v2, "file"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static unescape(Ljava/lang/String;I)B
    .registers 4

    .line 150
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method
