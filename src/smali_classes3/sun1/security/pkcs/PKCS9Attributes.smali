.class public Lsun1/security/pkcs/PKCS9Attributes;
.super Ljava/lang/Object;


# instance fields
.field private final attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Lsun1/security/pkcs/PKCS9Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final derEncoding:[B

.field private ignoreUnsupportedAttributes:Z

.field private final permittedAttributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun1/security/pkcs/PKCS9Attributes;-><init>(Lsun1/security/util/DerInputStream;Z)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    iput-boolean p2, p0, Lsun1/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    invoke-direct {p0, p1}, Lsun1/security/pkcs/PKCS9Attributes;->decode(Lsun1/security/util/DerInputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->derEncoding:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    return-void
.end method

.method static castToDerEncoder([Ljava/lang/Object;)[Lsun1/security/util/DerEncoder;
    .registers 5

    array-length v2, p0

    new-array v3, v2, [Lsun1/security/util/DerEncoder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    aget-object v0, p0, v1

    check-cast v0, Lsun1/security/util/DerEncoder;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private decode(Lsun1/security/util/DerInputStream;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    const/16 v2, 0x31

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    new-instance v2, Lsun1/security/util/DerInputStream;

    invoke-direct {v2, v3}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Lsun1/security/util/DerInputStream;->getSet(IZ)[Lsun1/security/util/DerValue;

    move-result-object v4

    move v2, v1

    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_1

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lsun1/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v5, Lsun1/security/pkcs/PKCS9Attribute;

    aget-object v6, v4, v2

    invoke-direct {v5, v6}, Lsun1/security/pkcs/PKCS9Attribute;-><init>(Lsun1/security/util/DerValue;)V
    :try_end_0
    .catch Lsun1/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lsun1/security/pkcs/PKCS9Attribute;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v6

    iget-object v7, p0, Lsun1/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lsun1/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lsun1/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v7, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not permitted in this attribute set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate PKCS9 attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    iget-boolean v5, p0, Lsun1/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    if-eqz v5, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    throw v0
.end method

.method private generateDerEncoding()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v1, 0x31

    iget-object v2, p0, Lsun1/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsun1/security/pkcs/PKCS9Attributes;->castToDerEncoder([Ljava/lang/Object;)[Lsun1/security/util/DerEncoder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encode(BLjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->derEncoding:[B

    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public getAttribute(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/pkcs/PKCS9Attribute;
    .registers 3

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public getAttributeValue(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lsun1/security/pkcs/PKCS9Attributes;->getAttribute(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/pkcs/PKCS9Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No value found for attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDerEncoding()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/PKCS9Attributes;->derEncoding:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0xc8

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "PKCS9 Attributes: [\n\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move v2, v1

    :goto_0
    sget-object v1, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const-string v0, "\n\t] (end PKCS9 Attributes)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lsun1/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun1/security/util/ObjectIdentifier;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lsun1/security/pkcs/PKCS9Attributes;->getAttribute(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/pkcs/PKCS9Attribute;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Lsun1/security/pkcs/PKCS9Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_1

    :cond_2
    const-string v4, ";\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
