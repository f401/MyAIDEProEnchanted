.class public Lcom/sun/tools/javac/util/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field public elems:[B

.field public length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ByteBuffer;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    .line 61
    return-void
.end method

.method private copy(I)V
    .registers 6

    const/4 v3, 0x0

    .line 64
    new-array v0, p1, [B

    .line 65
    iget-object v1, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    .line 67
    return-void
.end method


# virtual methods
.method public appendByte(I)V
    .registers 5

    .line 72
    iget v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    iget-object v1, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    array-length v2, v1

    if-lt v0, v2, :cond_d

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->copy(I)V

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 74
    return-void
.end method

.method public appendBytes([B)V
    .registers 4

    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    .line 89
    return-void
.end method

.method public appendBytes([BII)V
    .registers 8

    .line 80
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    iget-object v1, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int v2, v0, p3

    array-length v3, v1

    if-le v2, v3, :cond_10

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->copy(I)V

    goto :goto_0

    .line 81
    :cond_10
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    .line 83
    return-void
.end method

.method public appendChar(I)V
    .registers 6

    .line 94
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    iget-object v1, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    if-lt v2, v3, :cond_10

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->copy(I)V

    goto :goto_0

    .line 95
    :cond_10
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 96
    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 97
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    .line 98
    return-void
.end method

.method public appendDouble(D)V
    .registers 6

    const/16 v1, 0x8

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 141
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    :try_start_c
    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_1a

    .line 147
    return-void

    .line 145
    :catch_1a
    move-exception v0

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "write"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public appendFloat(F)V
    .registers 5

    const/4 v1, 0x4

    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 128
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_18

    .line 134
    return-void

    .line 132
    :catch_18
    move-exception v0

    .line 133
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "write"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public appendInt(I)V
    .registers 6

    .line 103
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    iget-object v1, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int/lit8 v2, v0, 0x3

    array-length v3, v1

    if-lt v2, v3, :cond_10

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->copy(I)V

    goto :goto_0

    .line 104
    :cond_10
    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 105
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 106
    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 107
    add-int/lit8 v2, v0, 0x3

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 108
    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    .line 109
    return-void
.end method

.method public appendLong(J)V
    .registers 6

    const/16 v1, 0x8

    .line 114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 115
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    :try_start_c
    invoke-virtual {v1, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_1a

    .line 121
    return-void

    .line 119
    :catch_1a
    move-exception v0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "write"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public appendName(Lcom/sun/tools/javac/util/Name;)V
    .registers 5

    .line 153
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    .line 154
    return-void
.end method

.method public reset()V
    .registers 2

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    .line 160
    return-void
.end method

.method public toName(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sun/tools/javac/util/Names;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method
