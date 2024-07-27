.class public Lsun1/security/util/DerInputStream;
.super Ljava/lang/Object;


# instance fields
.field buffer:Lsun1/security/util/DerInputBuffer;

.field public tag:B


# direct methods
.method constructor <init>(Lsun1/security/util/DerInputBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lsun1/security/util/DerInputBuffer;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lsun1/security/util/DerInputStream;->init([BIIZ)V

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lsun1/security/util/DerInputStream;->init([BIIZ)V

    return-void
.end method

.method static getLength(ILjava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    and-int/lit16 v1, p0, 0x80

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    and-int/lit8 v1, p0, 0x7f

    if-eqz v1, :cond_8

    if-ltz v1, :cond_2

    const/4 v0, 0x4

    if-le v1, v0, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "DerInputStream.getLength(): "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "lengthTag="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v1, :cond_7

    const-string v0, "incorrect DER encoding."

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 p0, v0, 0xff

    if-eqz p0, :cond_6

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-gtz v0, :cond_5

    if-ltz p0, :cond_4

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerInputStream.getLength(): "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Should use short form for length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerInputStream.getLength(): "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Invalid length bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, p0, 0x8

    add-int p0, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerInputStream.getLength(): "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Redundant length bytes found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "too big."

    goto :goto_1

    :cond_8
    move p0, v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short read of DER length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getLength(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p0}, Lsun1/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private init([BIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lsun1/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lsun1/security/util/DerInputBuffer;

    new-instance v2, Lsun1/security/util/DerIndefLenConverter;

    invoke-direct {v2}, Lsun1/security/util/DerIndefLenConverter;-><init>()V

    invoke-virtual {v2, v0}, Lsun1/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v0

    invoke-direct {v1, v0, p4}, Lsun1/security/util/DerInputBuffer;-><init>([BZ)V

    iput-object v1, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    :goto_0
    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->mark(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Indefinite length BER encoding found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lsun1/security/util/DerInputBuffer;

    invoke-direct {v0, p1, p2, p3, p4}, Lsun1/security/util/DerInputBuffer;-><init>([BIIZ)V

    iput-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encoding bytes too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    return v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun1/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBytes([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun1/security/util/DerInputBuffer;->read([B)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short read of DER octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDerValue()Lsun1/security/util/DerValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>(Lsun1/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, GeneralizedTime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public getOID()Lsun1/security/util/ObjectIdentifier;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun1/security/util/ObjectIdentifier;-><init>(Lsun1/security/util/DerInputStream;)V

    return-object v0
.end method

.method public getOctetString()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    new-array v1, v0, [B

    if-eqz v0, :cond_0

    iget-object v2, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v2, v1}, Lsun1/security/util/DerInputBuffer;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short read of DER octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not an octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequence(I)[Lsun1/security/util/DerValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v1, v0

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lsun1/security/util/DerInputStream;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lsun1/security/util/DerInputStream;->readVector(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sequence tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSet(I)[Lsun1/security/util/DerValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v1, v0

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lsun1/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lsun1/security/util/DerInputStream;->readVector(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSet(IZ)[Lsun1/security/util/DerValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v1, v0

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lsun1/security/util/DerInputStream;->tag:B

    if-nez p2, :cond_0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lsun1/security/util/DerInputStream;->readVector(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, UTCtime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnalignedBitString()Lsun1/security/util/BitArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v1

    if-ltz v1, :cond_3

    mul-int/lit8 v2, v0, 0x8

    sub-int v1, v2, v1

    if-ltz v1, :cond_2

    new-array v2, v0, [B

    if-eqz v0, :cond_0

    iget-object v3, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v3, v2}, Lsun1/security/util/DerInputBuffer;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_1

    :cond_0
    new-instance v0, Lsun1/security/util/BitArray;

    invoke-direct {v0, v1, v2}, Lsun1/security/util/BitArray;-><init>(I[B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short read of DER bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Valid bits of bit string invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unused bits of bit string invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not a bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun1/security/util/DerInputBuffer;->mark(I)V

    return-void
.end method

.method public peekByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->peek()I

    move-result v0

    return v0
.end method

.method protected readVector(I)[Lsun1/security/util/DerValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v1, v0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v1, v0}, Lsun1/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iget-byte v4, p0, Lsun1/security/util/DerInputStream;->tag:B

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v4, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    new-instance v0, Lsun1/security/util/DerInputBuffer;

    new-instance v1, Lsun1/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun1/security/util/DerIndefLenConverter;-><init>()V

    invoke-virtual {v1, v3}, Lsun1/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v1

    iget-object v3, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-boolean v3, v3, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    invoke-direct {v0, v1, v3}, Lsun1/security/util/DerInputBuffer;-><init>([BZ)V

    iput-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-byte v1, p0, Lsun1/security/util/DerInputStream;->tag:B

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    new-array v0, v2, [Lsun1/security/util/DerValue;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Indefinite length encoding not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v1

    if-ne v1, v0, :cond_4

    move-object v0, p0

    :goto_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, p1}, Ljava/util/Vector;-><init>(I)V

    :cond_3
    new-instance v1, Lsun1/security/util/DerValue;

    iget-object v4, v0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-object v5, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-boolean v5, v5, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    invoke-direct {v1, v4, v5}, Lsun1/security/util/DerValue;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Lsun1/security/util/DerValue;

    :goto_2
    if-ge v2, v4, :cond_6

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/DerValue;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0, v5}, Lsun1/security/util/DerInputStream;->subStream(IZ)Lsun1/security/util/DerInputStream;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Extra data at end of vector"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->reset()V

    return-void
.end method

.method public subStream(IZ)Lsun1/security/util/DerInputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->dup()Lsun1/security/util/DerInputBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun1/security/util/DerInputBuffer;->truncate(I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lsun1/security/util/DerInputBuffer;->skip(J)J

    :cond_0
    new-instance v1, Lsun1/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    return-object v1
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/util/DerInputStream;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
