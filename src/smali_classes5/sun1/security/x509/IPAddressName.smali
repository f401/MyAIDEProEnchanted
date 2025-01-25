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

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4b

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_28

    invoke-direct {p0, p1}, Lsun1/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    :goto_27
    return-void

    :cond_28
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_37

    invoke-direct {p0, p1}, Lsun1/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    goto :goto_27

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
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

    if-eq v0, v1, :cond_c

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    :cond_c
    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    iput-object p1, p0, Lsun1/security/x509/IPAddressName;->address:[B

    return-void

    :cond_12
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1c

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_d

    :cond_1e
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

    if-ne v0, v1, :cond_16

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    :goto_15
    return-void

    :cond_16
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

    goto :goto_15
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

    if-ne v1, v2, :cond_19

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    :cond_18
    return-void

    :cond_19
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

    if-ltz v2, :cond_65

    if-gt v2, v4, :cond_65

    new-instance v3, Lsun1/security/util/BitArray;

    invoke-direct {v3, v4}, Lsun1/security/util/BitArray;-><init>(I)V

    move v1, v0

    :goto_44
    if-lt v1, v2, :cond_5e

    invoke-virtual {v3}, Lsun1/security/util/BitArray;->toByteArray()[B

    move-result-object v1

    :goto_4a
    if-ge v0, v5, :cond_18

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

    goto :goto_4a

    :cond_5e
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lsun1/security/util/BitArray;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_65
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

    if-nez p1, :cond_7

    :cond_5
    const/4 v0, -0x1

    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    check-cast p1, Lsun1/security/x509/IPAddressName;

    invoke-virtual {p1, p0}, Lsun1/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_6

    :cond_18
    iget-object v6, p1, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    :cond_24
    const/4 v0, 0x3

    goto :goto_6

    :cond_26
    array-length v2, v6

    const/16 v3, 0x8

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3e

    :cond_32
    array-length v2, v6

    const/16 v3, 0x20

    if-ne v2, v3, :cond_ad

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_ad

    :cond_3e
    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v0, v0

    div-int/lit8 v7, v0, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_48
    if-lt v5, v7, :cond_5e

    if-nez v0, :cond_4e

    if-eqz v1, :cond_56

    :cond_4e
    if-eqz v0, :cond_52

    if-nez v1, :cond_16

    :cond_52
    if-eqz v0, :cond_58

    move v0, v4

    goto :goto_6

    :cond_56
    if-eqz v2, :cond_5a

    :cond_58
    :goto_58
    const/4 v0, 0x1

    goto :goto_6

    :cond_5a
    if-eqz v3, :cond_24

    move v0, v4

    goto :goto_6

    :cond_5e
    iget-object v8, p0, Lsun1/security/x509/IPAddressName;->address:[B

    aget-byte v9, v8, v5

    add-int v10, v5, v7

    aget-byte v11, v8, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v8, v5

    if-eq v9, v11, :cond_6d

    const/4 v0, 0x1

    :cond_6d
    aget-byte v9, v6, v5

    aget-byte v11, v6, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v6, v5

    if-eq v9, v11, :cond_78

    const/4 v1, 0x1

    :cond_78
    aget-byte v9, v8, v10

    aget-byte v11, v6, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v8, v10

    if-ne v9, v11, :cond_90

    aget-byte v9, v8, v5

    aget-byte v11, v8, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v6, v5

    aget-byte v12, v8, v10

    and-int/2addr v11, v12

    int-to-byte v11, v11

    if-eq v9, v11, :cond_91

    :cond_90
    const/4 v2, 0x0

    :cond_91
    aget-byte v9, v6, v10

    aget-byte v11, v8, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v11, v6, v10

    if-ne v9, v11, :cond_a9

    aget-byte v9, v6, v5

    aget-byte v11, v6, v10

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aget-byte v8, v8, v5

    aget-byte v10, v6, v10

    and-int/2addr v8, v10

    int-to-byte v8, v8

    if-eq v9, v8, :cond_aa

    :cond_a9
    const/4 v3, 0x0

    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_ad
    array-length v2, v6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_b7

    array-length v2, v6

    const/16 v3, 0x20

    if-ne v2, v3, :cond_c1

    :cond_b7
    array-length v1, v6

    div-int/lit8 v1, v1, 0x2

    :goto_ba
    if-lt v0, v1, :cond_e6

    :cond_bc
    if-ne v0, v1, :cond_24

    move v0, v4

    goto/16 :goto_6

    :cond_c1
    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v2, v0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_cd

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_24

    :cond_cd
    array-length v0, v0

    div-int/lit8 v2, v0, 0x2

    move v0, v1

    :goto_d1
    if-lt v0, v2, :cond_d6

    :cond_d3
    if-ne v0, v2, :cond_24

    goto :goto_58

    :cond_d6
    aget-byte v1, v6, v0

    iget-object v3, p0, Lsun1/security/x509/IPAddressName;->address:[B

    add-int v4, v0, v2

    aget-byte v4, v3, v4

    and-int/2addr v1, v4

    aget-byte v3, v3, v0

    if-ne v1, v3, :cond_d3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_e6
    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    aget-byte v2, v2, v0

    add-int v3, v0, v1

    aget-byte v3, v6, v3

    and-int/2addr v2, v3

    aget-byte v3, v6, v0

    if-ne v2, v3, :cond_bc

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba
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

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    instance-of v0, p1, Lsun1/security/x509/IPAddressName;

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lsun1/security/x509/IPAddressName;

    iget-object v3, p1, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v0, v3

    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v4, v2

    if-eq v0, v4, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    array-length v0, v2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_21

    array-length v0, v2

    const/16 v4, 0x20

    if-ne v0, v4, :cond_34

    :cond_21
    array-length v0, v2

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_25
    if-lt v2, v0, :cond_3c

    :goto_27
    iget-object v2, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-byte v2, v2, v0

    aget-byte v4, v3, v0

    if-eq v2, v4, :cond_39

    move v0, v1

    goto :goto_4

    :cond_34
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_4

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3c
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

    if-eq v4, v5, :cond_50

    move v0, v1

    goto :goto_4

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_25
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

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    iget-boolean v0, p0, Lsun1/security/x509/IPAddressName;->isIPv4:Z

    if-eqz v0, :cond_52

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

    if-ne v2, v3, :cond_4f

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

    :cond_4f
    iget-object v0, p0, Lsun1/security/x509/IPAddressName;->name:Ljava/lang/String;

    goto :goto_c

    :cond_52
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

    if-ne v0, v6, :cond_4f

    new-array v3, v2, [B

    move v0, v2

    :goto_6b
    if-lt v0, v6, :cond_bb

    new-instance v2, Lsun1/security/util/BitArray;

    invoke-direct {v2, v5, v3}, Lsun1/security/util/BitArray;-><init>(I[B)V

    move v0, v1

    :goto_73
    if-lt v0, v5, :cond_99

    :cond_75
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

    :goto_8e
    if-ge v0, v5, :cond_4f

    invoke-virtual {v2, v0}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_a2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_99
    invoke-virtual {v2, v0}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_75

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_a2
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

    :cond_bb
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

    goto :goto_6b
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

    :goto_3
    iget-object v1, p0, Lsun1/security/x509/IPAddressName;->address:[B

    array-length v3, v1

    if-lt v0, v3, :cond_9

    return v2

    :cond_9
    aget-byte v1, v1, v0

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3
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
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
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

    goto :goto_12
.end method
