.class public Lsun1/security/x509/IPAddressName;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/GeneralNameInterface;


# instance fields
.field private address:[B

.field private isIPv4:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Lsun1/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-direct {p0, p1}, Lsun1/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IPAddress cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lsun1/security/x509/IPAddressName;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    iput-object p1, p0, Lsun1/security/x509/IPAddressName;->address:[B

    return-void

    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid IPAddressName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseIPv4(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lsun1/security/x509/IPAddressName;->address:[B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-static {v1, v3, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private parseIPv6(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x80

    const/16 v5, 0x10

    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-static {v2, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    if-gt v2, v4, :cond_3

    new-instance v3, Lsun1/security/util/BitArray;

    invoke-direct {v3, v4}, Lsun1/security/util/BitArray;-><init>(I)V

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    invoke-virtual {v3}, Lsun1/security/util/BitArray;->toByteArray()[B

    move-result-object v1

    :goto_1
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    add-int/lit8 v3, v0, 0x10

    aget-byte v4, v1, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lsun1/security/util/BitArray;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPv6Address prefix length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") in out of valid range [0,128]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    check-cast p1, Lsun1/security/x509/IPAddressName;

    invoke-virtual {p1, p0}, Lsun1/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v6, p1, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    array-length v2, v6

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    :cond_6
    array-length v2, v6

    const/16 v3, 0x20

    if-ne v2, v3, :cond_14

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_14

    :cond_7
    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v0, v0

    div-int/lit8 v7, v0, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_1
    if-lt v5, v7, :cond_d

    if-nez v0, :cond_8

    if-eqz v1, :cond_a

    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_2

    :cond_9
    if-eqz v0, :cond_b

    move v0, v4

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_c

    :cond_b
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_c
    if-eqz v3, :cond_4

    move v0, v4

    goto :goto_0

    :cond_d
    iget-object v8, p0, Lsun1/security/x509/IPAddressName;->address:[B

    aget-byte v9, v8, v5

    add-int v10, v5, v7

    aget-byte v11, v8, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v8, v5

    if-eq v9, v11, :cond_e

    const/4 v0, 0x1

    :cond_e
    aget-byte v9, v6, v5

    aget-byte v11, v6, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v6, v5

    if-eq v9, v11, :cond_f

    const/4 v1, 0x1

    :cond_f
    aget-byte v9, v8, v10

    aget-byte v11, v6, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v8, v10

    if-ne v9, v11, :cond_10

    aget-byte v9, v8, v5

    aget-byte v11, v8, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v6, v5

    aget-byte v12, v8, v10

    and-int/2addr v11, v12

    int-to-byte v11, v11

    if-eq v9, v11, :cond_11

    :cond_10
    const/4 v2, 0x0

    :cond_11
    aget-byte v9, v6, v10

    aget-byte v11, v8, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v6, v10

    if-ne v9, v11, :cond_12

    aget-byte v9, v6, v5

    aget-byte v11, v6, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v8, v8, v5

    aget-byte v10, v6, v10

    and-int/2addr v8, v10

    int-to-byte v8, v8

    if-eq v9, v8, :cond_13

    :cond_12
    const/4 v3, 0x0

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_14
    array-length v2, v6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_15

    array-length v2, v6

    const/16 v3, 0x20

    if-ne v2, v3, :cond_17

    :cond_15
    array-length v1, v6

    div-int/lit8 v1, v1, 0x2

    :goto_3
    if-lt v0, v1, :cond_1b

    :cond_16
    if-ne v0, v1, :cond_4

    move v0, v4

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_18

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    :cond_18
    array-length v0, v0

    div-int/lit8 v2, v0, 0x2

    move v0, v1

    :goto_4
    if-lt v0, v2, :cond_1a

    :cond_19
    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_1a
    aget-byte v1, v6, v0

    iget-object v3, p0, Lsun1/security/x509/IPAddressName;->address:[B

    add-int v4, v0, v2

    aget-byte v4, v3, v4

    and-int/2addr v1, v4

    aget-byte v3, v3, v0

    if-ne v1, v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    aget-byte v2, v2, v0

    add-int v3, v0, v1

    aget-byte v3, v6, v3

    and-int/2addr v2, v3

    aget-byte v3, v6, v0

    if-ne v2, v3, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lsun1/security/x509/IPAddressName;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lsun1/security/x509/IPAddressName;

    iget-object v3, p1, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v0, v3

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v4, v2

    if-eq v0, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    array-length v0, v2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    array-length v0, v2

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    :cond_4
    array-length v0, v2

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_7

    :goto_2
    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-byte v2, v2, v0

    aget-byte v4, v3, v0

    if-eq v2, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lsun1/security/x509/IPAddressName;->address:[B

    aget-byte v5, v4, v2

    add-int v6, v2, v0

    aget-byte v4, v4, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aget-byte v5, v3, v2

    aget-byte v6, v3, v6

    and-int/2addr v5, v6

    int-to-byte v5, v5

    if-eq v4, v5, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x20

    const/16 v5, 0x80

    const/16 v2, 0x10

    const/4 v4, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    if-eqz v0, :cond_2

    new-array v0, v4, [B

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-static {v2, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    new-array v2, v4, [B

    invoke-static {v0, v4, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v0, v2, [B

    iget-object v3, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v0, v0

    if-ne v0, v6, :cond_1

    new-array v3, v2, [B

    move v0, v2

    :goto_1
    if-lt v0, v6, :cond_6

    new-instance v2, Lsun1/security/util/BitArray;

    invoke-direct {v2, v5, v3}, Lsun1/security/util/BitArray;-><init>(I[B)V

    move v0, v1

    :goto_2
    if-lt v0, v5, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    :goto_3
    if-ge v0, v5, :cond_1

    invoke-virtual {v2, v0}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v0}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid IPv6 subdomain - set bit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not contiguous"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v2, v0, -0x10

    iget-object v4, p0, Lsun1/security/x509/IPAddressName;->address:[B

    aget-byte v4, v4, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v3, v1

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    aget-byte v1, v1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun1/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IPAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    invoke-virtual {v0, v2}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
