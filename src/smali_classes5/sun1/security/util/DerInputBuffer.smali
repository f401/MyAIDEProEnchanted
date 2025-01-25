.class Lsun1/security/util/DerInputBuffer;
.super Ljava/io/ByteArrayInputStream;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field allowBER:Z


# direct methods
.method constructor <init>([BIIZ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    iput-boolean p4, p0, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    return-void
.end method

.method constructor <init>([BZ)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    iput-boolean p2, p0, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    return-void
.end method

.method private getTime(IZ)Ljava/util/Date;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    if-eqz p2, :cond_1e4

    aget-byte v0, v0, v1

    int-to-char v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v1, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 p1, p1, -0x2

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    mul-int/lit8 v1, v2, 0xa

    add-int/2addr v0, v1

    add-int v1, v0, v3

    const-string v0, "Generalized"

    move-object v7, v0

    :goto_55
    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v2

    int-to-char v0, v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v2, v0

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v3

    int-to-char v0, v0

    const/16 v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v3, v0

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v4

    int-to-char v0, v0

    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v4, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v4, v0

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v5

    int-to-char v0, v0

    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v5, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v5, v0

    add-int/lit8 v6, p1, -0xa

    const/4 v0, 0x2

    if-le v6, v0, :cond_278

    const/16 v0, 0xc

    if-ge v6, v0, :cond_278

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v8, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v8

    int-to-char v0, v0

    const/16 v8, 0xa

    invoke-static {v0, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v8, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v9, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    mul-int/lit8 v0, v0, 0xa

    add-int v9, v8, v0

    add-int/lit8 v10, v6, -0x2

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v6

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_12e

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v6

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_210

    :cond_12e
    iget v0, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    iget v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    const/4 v0, 0x0

    :goto_137
    iget-object v8, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    aget-byte v8, v8, v6

    const/16 v11, 0x5a

    if-eq v8, v11, :cond_14f

    iget-object v8, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    aget-byte v8, v8, v6

    const/16 v11, 0x2b

    if-eq v8, v11, :cond_14f

    iget-object v8, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    aget-byte v8, v8, v6

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_217

    :cond_14f
    const/4 v6, 0x1

    if-eq v0, v6, :cond_260

    const/4 v6, 0x2

    if-eq v0, v6, :cond_236

    const/4 v6, 0x3

    if-ne v0, v6, :cond_21d

    iget-object v6, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v8, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v11, v8, 0x1

    iput v11, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v6, v6, v8

    int-to-char v6, v6

    const/16 v8, 0xa

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    iget-object v8, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v11, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v8, v8, v11

    int-to-char v8, v8

    const/16 v11, 0xa

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    iget-object v11, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v12, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    mul-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v6, v8

    aget-byte v8, v11, v12

    int-to-char v8, v8

    const/16 v11, 0xa

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    :goto_192
    add-int/2addr v6, v8

    move v8, v6

    :goto_194
    add-int/lit8 v6, v10, -0x1

    sub-int v0, v6, v0

    move v10, v0

    move v6, v9

    move v11, v8

    :goto_19b
    if-eqz v2, :cond_399

    if-eqz v3, :cond_399

    const/16 v0, 0xc

    if-gt v2, v0, :cond_399

    const/16 v0, 0x1f

    if-gt v3, v0, :cond_399

    const/16 v0, 0x18

    if-ge v4, v0, :cond_399

    const/16 v0, 0x3c

    if-ge v5, v0, :cond_399

    const/16 v0, 0x3c

    if-ge v6, v0, :cond_399

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    int-to-long v2, v11

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eq v10, v2, :cond_1c8

    const/4 v2, 0x5

    if-ne v10, v2, :cond_27b

    :cond_1c8
    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_323

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2ad

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_294

    :goto_1de
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    :cond_1e4
    aget-byte v0, v0, v1

    int-to-char v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iget-object v1, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    mul-int/lit8 v0, v0, 0xa

    aget-byte v1, v1, v2

    int-to-char v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_20d

    add-int/lit16 v0, v0, 0x7d0

    :goto_207
    const-string v2, "UTC"

    move-object v7, v2

    move v1, v0

    goto/16 :goto_55

    :cond_20d
    add-int/lit16 v0, v0, 0x76c

    goto :goto_207

    :cond_210
    move v0, v9

    move v8, v10

    :goto_212
    const/4 v9, 0x0

    move v10, v8

    move v6, v0

    move v11, v9

    goto :goto_19b

    :cond_217
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_137

    :cond_21d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time, unsupported precision for seconds value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_236
    iget-object v6, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v8, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v11, v8, 0x1

    iput v11, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v6, v6, v8

    int-to-char v6, v6

    const/16 v8, 0xa

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    iget-object v8, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v11, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v8, v8, v11

    int-to-char v8, v8

    const/16 v11, 0xa

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    mul-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v8, v8, 0xa

    goto/16 :goto_192

    :cond_260
    iget-object v6, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v8, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v11, v8, 0x1

    iput v11, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v6, v6, v8

    int-to-char v6, v6

    const/16 v8, 0xa

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x0

    move v8, v6

    goto/16 :goto_194

    :cond_278
    const/4 v0, 0x0

    move v8, v6

    goto :goto_212

    :cond_27b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time, invalid offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time, garbage offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2ad
    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    mul-int/lit8 v2, v2, 0xa

    aget-byte v3, v3, v4

    int-to-char v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    iget-object v4, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    mul-int/lit8 v3, v3, 0xa

    aget-byte v4, v4, v5

    int-to-char v4, v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x18

    if-ge v2, v4, :cond_30a

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_30a

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto/16 :goto_1de

    :cond_30a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time, -hhmm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_323
    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    mul-int/lit8 v2, v2, 0xa

    aget-byte v3, v3, v4

    int-to-char v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    iget-object v4, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    mul-int/lit8 v3, v3, 0xa

    aget-byte v4, v4, v5

    int-to-char v4, v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x18

    if-ge v2, v4, :cond_380

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_380

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto/16 :goto_1de

    :cond_380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time, +hhmm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time, invalid format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method dup()Lsun1/security/util/DerInputBuffer;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/DerInputBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->mark(I)V
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lsun1/security/util/DerInputBuffer;

    if-eqz v0, :cond_b

    check-cast p1, Lsun1/security/util/DerInputBuffer;

    invoke-virtual {p0, p1}, Lsun1/security/util/DerInputBuffer;->equals(Lsun1/security/util/DerInputBuffer;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method equals(Lsun1/security/util/DerInputBuffer;)Z
    .registers 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v2

    invoke-virtual {p1}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    iget-object v4, p1, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v5, p1, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method getBigInteger(IZ)Ljava/math/BigInteger;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_42

    if-eqz p1, :cond_3a

    new-array v0, p1, [B

    iget-object v1, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun1/security/util/DerInputBuffer;->skip(J)J

    iget-boolean v1, p0, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    if-nez v1, :cond_26

    const/4 v1, 0x2

    if-lt p1, v1, :cond_26

    aget-byte v1, v0, v4

    if-nez v1, :cond_26

    aget-byte v1, v0, v5

    if-gez v1, :cond_2e

    :cond_26
    new-instance v1, Ljava/math/BigInteger;

    if-eqz p2, :cond_36

    invoke-direct {v1, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_2d
    return-object v1

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding: redundant leading 0s"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_2d

    :cond_3a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding: zero length Int value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of integer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBitString()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun1/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_4b

    if-eqz p1, :cond_43

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    if-ltz v0, :cond_3b

    const/4 v1, 0x7

    if-gt v0, v1, :cond_3b

    add-int/lit8 v1, p1, -0x1

    new-array v2, v1, [B

    iget-object v3, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_36

    add-int/lit8 v1, p1, -0x2

    const/16 v3, 0xff

    shl-int v0, v3, v0

    aget-byte v3, v2, v1

    and-int/2addr v0, v3

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    :cond_36
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lsun1/security/util/DerInputBuffer;->skip(J)J

    return-object v2

    :cond_3b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid number of padding bits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding: zero length bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGeneralizedTime(I)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_1c

    const/16 v0, 0xd

    if-lt p1, v0, :cond_14

    const/16 v0, 0x17

    if-gt p1, v0, :cond_14

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER Generalized Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of DER Generalized Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun1/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/32 v2, -0x80000000

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2c

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_24

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Integer exceeds maximum valid value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Integer below minimum valid value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUTCTime(I)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_1c

    const/16 v0, 0xb

    if-lt p1, v0, :cond_14

    const/16 v0, 0x11

    if-gt p1, v0, :cond_14

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER UTC Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of DER UTC Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUnalignedBitString()Lsun1/security/util/BitArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    iget v2, p0, Lsun1/security/util/DerInputBuffer;->count:I

    if-lt v0, v2, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x7

    if-gt v2, v3, :cond_37

    add-int/lit8 v3, v0, -0x1

    new-array v4, v3, [B

    if-nez v3, :cond_33

    move v0, v1

    :goto_1f
    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lsun1/security/util/BitArray;

    invoke-direct {v1, v0, v4}, Lsun1/security/util/BitArray;-><init>(I[B)V

    iget v0, p0, Lsun1/security/util/DerInputBuffer;->count:I

    iput v0, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    move-object v0, v1

    goto :goto_8

    :cond_33
    mul-int/lit8 v0, v3, 0x8

    sub-int/2addr v0, v2

    goto :goto_1f

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value for unused bits: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v3

    iget v4, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    move v0, v1

    move v2, v1

    :goto_9
    if-lt v2, v3, :cond_c

    return v0

    :cond_c
    iget-object v1, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    add-int v5, v4, v2

    aget-byte v1, v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9
.end method

.method peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    iget v1, p0, Lsun1/security/util/DerInputBuffer;->count:I

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    return v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toByteArray()[B
    .registers 6

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v1

    if-gtz v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-array v0, v1, [B

    iget-object v2, p0, Lsun1/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method truncate(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_c

    iget v0, p0, Lsun1/security/util/DerInputBuffer;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun1/security/util/DerInputBuffer;->count:I

    return-void

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "insufficient data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
