.class public Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;
    }
.end annotation


# instance fields
.field private final mIn:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->mIn:Ljava/io/InputStream;

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readDataValue(Ljava/io/InputStream;)Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;

    invoke-direct {v2, p0, v0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;-><init>(Ljava/io/InputStream;Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$1;)V

    :try_start_7
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_e

    :goto_d
    return-object v0

    :cond_e
    invoke-static {v2, v1}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v5

    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_66

    int-to-byte v3, v1

    invoke-static {v3}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->isConstructed(B)Z

    move-result v4

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_4b

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->readShortFormLength(I)I

    move-result v1

    :goto_25
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadByteCount()I

    move-result v0

    invoke-static {v2, v1}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->skipDefiniteLengthContents(Ljava/io/InputStream;I)V

    :goto_2c
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadBytes()[B

    move-result-object v6

    invoke-static {v6, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagClass(B)I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IZI)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_41} :catch_42

    goto :goto_d

    :catch_42
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v2, "Failed to read data value"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4b
    and-int/lit16 v1, v0, 0xff

    const/16 v6, 0x80

    if-eq v1, v6, :cond_56

    :try_start_51
    invoke-static {v2, v0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->readLongFormLength(Ljava/io/InputStream;I)I

    move-result v1

    goto :goto_25

    :cond_56
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadByteCount()I

    move-result v0

    if-eqz v4, :cond_61

    invoke-static {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->skipConstructedIndefiniteLengthContents(Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;)I

    move-result v1

    goto :goto_2c

    :cond_61
    invoke-static {v2}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->skipPrimitiveIndefiniteLengthContents(Ljava/io/InputStream;)I

    move-result v1

    goto :goto_2c

    :cond_66
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Missing length"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6e} :catch_42
.end method

.method private static readHighTagNumber(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    const v2, 0xffffff

    if-gt v0, v2, :cond_17

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return v0

    :cond_17
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Tag number too large"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Truncated tag number"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readLongFormLength(Ljava/io/InputStream;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    and-int/lit8 v3, p1, 0x7f

    const/4 v0, 0x4

    if-gt v3, v0, :cond_2f

    move v0, v1

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_4b

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_27

    const v4, 0x7fffff

    if-gt v0, v4, :cond_1f

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    :cond_1f
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Length too large"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Truncated length"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    return v0
.end method

.method private static readShortFormLength(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method private static readTagNumber(Ljava/io/InputStream;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(B)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->readHighTagNumber(Ljava/io/InputStream;)I

    move-result v0

    :cond_d
    return v0
.end method

.method private static skipConstructedIndefiniteLengthContents(Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadByteCount()I

    move-result v0

    :cond_4
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->readDataValue(Ljava/io/InputStream;)Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadByteCount()I

    move-result v2

    if-lez v2, :cond_32

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadByteCount()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_32
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Indefinite-length contents too long"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated indefinite-length contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->getReadByteCount()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static skipDefiniteLengthContents(Ljava/io/InputStream;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_2
    if-lez p1, :cond_34

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v2, v2

    if-lez v2, :cond_10

    sub-int/2addr p1, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated definite-length contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes read, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " missing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    return-void
.end method

.method private static skipPrimitiveIndefiniteLengthContents(Ljava/io/InputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :cond_2
    move v2, v1

    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_17

    if-nez v3, :cond_2

    if-eqz v2, :cond_15

    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_15
    const/4 v2, 0x1

    goto :goto_3

    :cond_17
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    const-string v1, "Indefinite-length contents too long"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated indefinite-length contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->mIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;->readDataValue(Ljava/io/InputStream;)Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object v0

    return-object v0
.end method
