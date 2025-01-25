.class public Lsun1/security/x509/RDN;
.super Ljava/lang/Object;


# instance fields
.field final assertion:[Lsun1/security/x509/AVA;

.field private volatile canonicalString:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lsun1/security/x509/AVA;

    iput-object v0, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x2b

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v1, v2

    move v0, v2

    move v4, v2

    :goto_13
    if-gez v3, :cond_54

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Lsun1/security/x509/AVA;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Lsun1/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lsun1/security/x509/AVA;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun1/security/x509/AVA;

    iput-object v0, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    return-void

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty AVA in RDN \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    invoke-static {p1, v4, v3}, Lsun1/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v1, v4

    if-lez v3, :cond_82

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5c

    if-eq v4, v6, :cond_82

    const/4 v4, 0x1

    if-eq v1, v4, :cond_82

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_89

    new-instance v1, Lsun1/security/x509/AVA;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, p2}, Lsun1/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v1, v2

    :cond_82
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_13

    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty AVA in RDN \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2f

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [Lsun1/security/x509/AVA;

    iput-object v0, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    const/4 v0, 0x0

    :goto_1d
    array-length v2, v1

    if-lt v0, v2, :cond_21

    return-void

    :cond_21
    iget-object v2, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    new-instance v3, Lsun1/security/x509/AVA;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lsun1/security/x509/AVA;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "X500 RDN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    if-eqz p1, :cond_10

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lsun1/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_17
    if-eqz p1, :cond_26

    invoke-virtual {v0}, [Lsun1/security/x509/AVA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun1/security/x509/AVA;

    invoke-static {}, Lsun1/security/x509/AVAComparator;->getInstance()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    :goto_2c
    array-length v1, v0

    if-lt v2, v1, :cond_34

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_34
    if-lez v2, :cond_3b

    const-string v1, "+"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    if-eqz p1, :cond_4a

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    :goto_43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2c

    :cond_4a
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Lsun1/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_43
.end method


# virtual methods
.method encode(Lsun1/security/util/DerOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x31

    iget-object v1, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lsun1/security/x509/RDN;

    if-eqz v1, :cond_1f

    check-cast p1, Lsun1/security/x509/RDN;

    iget-object v1, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v1, v1

    iget-object v2, p1, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v2, v2

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0, v0}, Lsun1/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lsun1/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_1f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun1/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun1/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Z)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_c

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun1/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lsun1/security/x509/RDN;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun1/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/RDN;->canonicalString:Ljava/lang/String;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lsun1/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    iget-object v2, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    array-length v2, v2

    if-lt v0, v2, :cond_1d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1d
    if-eqz v0, :cond_24

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget-object v2, p0, Lsun1/security/x509/RDN;->assertion:[Lsun1/security/x509/AVA;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun1/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
