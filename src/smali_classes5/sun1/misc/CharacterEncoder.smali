.class public abstract Lsun1/misc/CharacterEncoder;
.super Ljava/lang/Object;


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_a
    invoke-virtual {p0, v1, v0}, Lsun1/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v1, "8859_1"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "CharacterEncoder.encode internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerLine()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p0, p2}, Lsun1/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    :goto_9
    invoke-virtual {p0, p1, v2}, Lsun1/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    if-nez v3, :cond_13

    :cond_f
    invoke-virtual {p0, p2}, Lsun1/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    return-void

    :cond_13
    invoke-virtual {p0, p2, v3}, Lsun1/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-lt v1, v3, :cond_24

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerLine()I

    move-result v0

    if-lt v3, v0, :cond_f

    invoke-virtual {p0, p2}, Lsun1/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_24
    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v0

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_39

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v0

    :goto_2f
    invoke-virtual {p0, p2, v2, v1, v0}, Lsun1/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_18

    :cond_39
    sub-int v0, v3, v1

    goto :goto_2f
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_a
    invoke-virtual {p0, v1, v0}, Lsun1/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_12

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerLine()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p0, p2}, Lsun1/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    :cond_9
    invoke-virtual {p0, p1, v2}, Lsun1/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    if-nez v3, :cond_13

    :goto_f
    invoke-virtual {p0, p2}, Lsun1/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    return-void

    :cond_13
    invoke-virtual {p0, p2, v3}, Lsun1/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-lt v1, v3, :cond_24

    invoke-virtual {p0, p2}, Lsun1/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerLine()I

    move-result v0

    if-ge v3, v0, :cond_9

    goto :goto_f

    :cond_24
    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v0

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_39

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v0

    :goto_2f
    invoke-virtual {p0, p2, v2, v1, v0}, Lsun1/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    invoke-virtual {p0}, Lsun1/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_18

    :cond_39
    sub-int v0, v3, v1

    goto :goto_2f
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun1/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_6

    array-length v0, p2

    :cond_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
