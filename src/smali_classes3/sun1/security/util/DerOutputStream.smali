.class public Lsun1/security/util/DerOutputStream;
.super Ljava/io/ByteArrayOutputStream;

# interfaces
.implements Lsun1/security/util/DerEncoder;


# static fields
.field private static lexOrder:Lsun1/security/util/ByteArrayLexOrder;

.field private static tagOrder:Lsun1/security/util/ByteArrayTagOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lsun1/security/util/ByteArrayLexOrder;

    invoke-direct {v0}, Lsun1/security/util/ByteArrayLexOrder;-><init>()V

    sput-object v0, Lsun1/security/util/DerOutputStream;->lexOrder:Lsun1/security/util/ByteArrayLexOrder;

    new-instance v0, Lsun1/security/util/ByteArrayTagOrder;

    invoke-direct {v0}, Lsun1/security/util/ByteArrayTagOrder;-><init>()V

    sput-object v0, Lsun1/security/util/DerOutputStream;->tagOrder:Lsun1/security/util/ByteArrayTagOrder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method private putIntegerContents(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xff

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x0

    new-array v3, v6, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v5

    const/4 v0, 0x2

    const v2, 0xff00

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/4 v0, 0x1

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    aget-byte v0, v3, v1

    if-ne v0, v7, :cond_2

    move v2, v1

    move v0, v1

    :goto_0
    if-lt v2, v5, :cond_1

    :cond_0
    :goto_1
    rsub-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    :goto_2
    if-lt v0, v6, :cond_3

    return-void

    :cond_1
    aget-byte v1, v3, v2

    if-ne v1, v7, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    aget-byte v0, v3, v1

    if-nez v0, :cond_4

    move v2, v1

    move v0, v1

    :goto_3
    if-ge v2, v5, :cond_0

    aget-byte v1, v3, v2

    if-nez v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    aget-byte v1, v3, v0

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private putOrderedSet(B[Lsun1/security/util/DerEncoder;Ljava/util/Comparator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[",
            "Lsun1/security/util/DerEncoder;",
            "Ljava/util/Comparator",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v2, p2

    new-array v3, v2, [Lsun1/security/util/DerOutputStream;

    move v0, v1

    :goto_0
    array-length v4, p2

    if-lt v0, v4, :cond_2

    new-array v4, v2, [[B

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_1

    invoke-static {v4, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    :goto_2
    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_0
    aget-object v3, v4, v1

    invoke-virtual {v0, v3}, Lsun1/security/util/DerOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    aput-object v4, v3, v0

    aget-object v4, p2, v0

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Lsun1/security/util/DerEncoder;->derEncode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private putTime(Ljava/util/Date;B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    const-string v0, "yyMMddHHmmss\'Z\'"

    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p2}, Lsun1/security/util/DerOutputStream;->write(I)V

    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    return-void

    :cond_0
    const/16 p2, 0x18

    const-string v0, "yyyyMMddHHmmss\'Z\'"

    goto :goto_0
.end method

.method private writeString(Ljava/lang/String;BLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p2}, Lsun1/security/util/DerOutputStream;->write(I)V

    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public putBMPString(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1e

    const-string v1, "UnicodeBigUnmarked"

    invoke-direct {p0, p1, v0, v1}, Lsun1/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putBitString([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Lsun1/security/util/DerOutputStream;->write([B)V

    return-void
.end method

.method public putBoolean(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putDerValue(Lsun1/security/util/DerValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lsun1/security/util/DerValue;->encode(Lsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public putEnumerated(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lsun1/security/util/DerOutputStream;->putIntegerContents(I)V

    return-void
.end method

.method public putGeneralizedTime(Ljava/util/Date;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    return-void
.end method

.method public putIA5String(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x16

    const-string v1, "ASCII"

    invoke-direct {p0, p1, v0, v1}, Lsun1/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putInteger(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lsun1/security/util/DerOutputStream;->putIntegerContents(I)V

    return-void
.end method

.method public putInteger(Ljava/math/BigInteger;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lsun1/security/util/DerOutputStream;->write([BII)V

    return-void
.end method

.method public putLength(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    :goto_0
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    const/16 v0, -0x7f

    :goto_1
    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    const/16 v0, -0x7e

    :goto_2
    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    const/16 v0, -0x7d

    :goto_3
    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    goto :goto_2

    :cond_3
    const/16 v0, -0x7c

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    goto :goto_3
.end method

.method public putNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    return-void
.end method

.method public putOID(Lsun1/security/util/ObjectIdentifier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lsun1/security/util/ObjectIdentifier;->encode(Lsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public putOctetString([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    return-void
.end method

.method public putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun1/security/util/DerOutputStream;->lexOrder:Lsun1/security/util/ByteArrayLexOrder;

    invoke-direct {p0, p1, p2, v0}, Lsun1/security/util/DerOutputStream;->putOrderedSet(B[Lsun1/security/util/DerEncoder;Ljava/util/Comparator;)V

    return-void
.end method

.method public putPrintableString(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    const-string v1, "ASCII"

    invoke-direct {p0, p1, v0, v1}, Lsun1/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public putTruncatedUnalignedBitString(Lsun1/security/util/BitArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun1/security/util/BitArray;->truncate()Lsun1/security/util/BitArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->putUnalignedBitString(Lsun1/security/util/BitArray;)V

    return-void
.end method

.method public putUTCTime(Ljava/util/Date;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    return-void
.end method

.method public putUnalignedBitString(Lsun1/security/util/BitArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun1/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->write(I)V

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Lsun1/security/util/BitArray;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    return-void
.end method

.method public write(BLsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun1/security/util/DerOutputStream;->write(I)V

    iget v0, p2, Lsun1/security/util/DerOutputStream;->count:I

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    iget-object v0, p2, Lsun1/security/util/DerOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p2, Lsun1/security/util/DerOutputStream;->count:I

    invoke-virtual {p0, v0, v1, v2}, Lsun1/security/util/DerOutputStream;->write([BII)V

    return-void
.end method

.method public write(B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun1/security/util/DerOutputStream;->write(I)V

    array-length v0, p2

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p2, v0, v1}, Lsun1/security/util/DerOutputStream;->write([BII)V

    return-void
.end method

.method public writeImplicit(BLsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun1/security/util/DerOutputStream;->write(I)V

    iget-object v0, p2, Lsun1/security/util/DerOutputStream;->buf:[B

    const/4 v1, 0x1

    iget v2, p2, Lsun1/security/util/DerOutputStream;->count:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lsun1/security/util/DerOutputStream;->write([BII)V

    return-void
.end method
