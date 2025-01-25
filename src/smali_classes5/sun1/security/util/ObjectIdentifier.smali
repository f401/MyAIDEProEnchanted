.class public final Lsun1/security/util/ObjectIdentifier;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private componentLen:I

.field private components:[I

.field private volatile transient stringForm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2e

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    move v0, v1

    :goto_a
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v4, :cond_6d

    iget v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    new-array v0, v0, [I

    iput-object v0, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    move v0, v1

    move v2, v1

    :goto_1c
    const/16 v1, 0x2e

    :try_start_1e
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_3e

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_54

    iget-object v0, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    iget v1, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v0, v1}, Lsun1/security/util/ObjectIdentifier;->checkValidOid([II)V

    iput-object p1, p0, Lsun1/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    return-void

    :cond_3e
    :try_start_3e
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4e} :catch_54

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1c

    :catch_54
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ObjectIdentifier() -- Invalid format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    goto :goto_a
.end method

.method constructor <init>(Lsun1/security/util/DerInputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun1/security/util/ObjectIdentifier;->initFromEncoding(Lsun1/security/util/DerInputStream;I)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getByte()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_24

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getLength()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    invoke-direct {p0, p1, v0}, Lsun1/security/util/ObjectIdentifier;->initFromEncoding(Lsun1/security/util/DerInputStream;I)V

    return-void

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- not enough data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lsun1/security/util/ObjectIdentifier;->checkValidOid([II)V

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    array-length v0, p1

    iput v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    return-void
.end method

.method private constructor <init>([IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    array-length v0, p1

    iput v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    return-void
.end method

.method private checkValidOid([II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    if-lt p2, v3, :cond_4b

    move v0, v1

    :goto_7
    if-lt v0, p2, :cond_29

    aget v0, p1, v1

    if-gt v0, v3, :cond_21

    aget v0, p1, v1

    if-ge v0, v3, :cond_18

    const/4 v0, 0x1

    aget v0, p1, v0

    const/16 v1, 0x27

    if-gt v0, v1, :cond_19

    :cond_18
    return-void

    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    aget v2, p1, v0

    if-ltz v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ObjectIdentifier() -- oid component #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " must be non-negative "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getComponent(Lsun1/security/util/DerInputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    const/4 v1, 0x4

    if-ge v2, v1, :cond_26

    invoke-virtual {p0}, Lsun1/security/util/DerInputStream;->getByte()I

    move-result v1

    if-nez v2, :cond_10

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1a

    :cond_10
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_22

    return v0

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- sub component starts with 0x80"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- component value too big"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initFromEncoding(Lsun1/security/util/DerInputStream;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    iput v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    move v0, v1

    :goto_b
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v4

    if-gt v4, p2, :cond_27

    iget-object v0, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    iget v1, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    invoke-direct {p0, v0, v1}, Lsun1/security/util/ObjectIdentifier;->checkValidOid([II)V

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-ne v0, p2, :cond_1f

    return-void

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- malformed input data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-static {p1}, Lsun1/security/util/ObjectIdentifier;->getComponent(Lsun1/security/util/DerInputStream;)I

    move-result v4

    if-ltz v4, :cond_67

    if-eqz v0, :cond_4a

    const/16 v0, 0x28

    if-ge v4, v0, :cond_42

    move v0, v2

    :goto_34
    iget-object v5, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    aput v0, v5, v2

    mul-int/lit8 v0, v0, 0x28

    sub-int v0, v4, v0

    aput v0, v5, v1

    iput v3, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    move v0, v2

    goto :goto_b

    :cond_42
    const/16 v0, 0x50

    if-ge v4, v0, :cond_48

    move v0, v1

    goto :goto_34

    :cond_48
    move v0, v3

    goto :goto_34

    :cond_4a
    iget v5, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    iget-object v6, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    array-length v7, v6

    if-lt v5, v7, :cond_5c

    array-length v5, v6

    add-int/lit8 v5, v5, 0x5

    new-array v5, v5, [I

    array-length v7, v6

    invoke-static {v6, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    :cond_5c
    iget-object v5, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    iget v6, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    aput v4, v5, v6

    goto :goto_b

    :cond_67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ObjectIdentifier() -- component values must be nonnegative"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInternal([I)Lsun1/security/util/ObjectIdentifier;
    .registers 3

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsun1/security/util/ObjectIdentifier;-><init>([IZ)V

    return-object v0
.end method

.method private static putComponent(Lsun1/security/util/DerOutputStream;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v1, 0x0

    new-array v2, v4, [B

    move v0, v1

    :goto_5
    if-lt v0, v4, :cond_f

    :cond_7
    :goto_7
    if-gtz v0, :cond_22

    aget-byte v0, v2, v1

    invoke-virtual {p0, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    return-void

    :cond_f
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    ushr-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    aget-byte v3, v2, v0

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Lsun1/security/util/DerOutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7
.end method


# virtual methods
.method encode(Lsun1/security/util/DerOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    aget v3, v2, v4

    if-ge v3, v0, :cond_21

    aget v3, v2, v4

    aget v2, v2, v5

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->write(I)V

    :goto_18
    iget v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    if-lt v0, v2, :cond_2c

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_21
    aget v3, v2, v4

    aget v2, v2, v5

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lsun1/security/util/ObjectIdentifier;->putComponent(Lsun1/security/util/DerOutputStream;I)V

    goto :goto_18

    :cond_2c
    iget-object v2, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Lsun1/security/util/ObjectIdentifier;->putComponent(Lsun1/security/util/DerOutputStream;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    instance-of v0, p1, Lsun1/security/util/ObjectIdentifier;

    if-eqz v0, :cond_4

    check-cast p1, Lsun1/security/util/ObjectIdentifier;

    iget v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    iget v2, p1, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_12
    iget v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v0

    iget-object v3, p1, Lsun1/security/util/ObjectIdentifier;->components:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    if-lt v1, v2, :cond_8

    return v0

    :cond_8
    iget-object v2, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v1

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lsun1/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v1, Ljava/lang/StringBuffer;

    iget v0, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_e
    iget v2, p0, Lsun1/security/util/ObjectIdentifier;->componentLen:I

    if-lt v0, v2, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/ObjectIdentifier;->stringForm:Ljava/lang/String;

    :cond_18
    return-object v0

    :cond_19
    if-eqz v0, :cond_20

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_20
    iget-object v2, p0, Lsun1/security/util/ObjectIdentifier;->components:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
