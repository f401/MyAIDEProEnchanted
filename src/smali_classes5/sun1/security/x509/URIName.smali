.class public Lsun1/security/x509/URIName;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/GeneralNameInterface;


# instance fields
.field private host:Ljava/lang/String;

.field private hostDNS:Lsun1/security/x509/DNSName;

.field private hostIP:Lsun1/security/x509/IPAddressName;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_a} :catch_8b

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    if-eqz v0, :cond_37

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_30
    new-instance v1, Lsun1/security/x509/IPAddressName;

    invoke-direct {v1, v0}, Lsun1/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsun1/security/x509/URIName;->hostIP:Lsun1/security/x509/IPAddressName;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid URI name (host portion is not a valid IPv6 address):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    :try_start_4d
    new-instance v0, Lsun1/security/x509/DNSName;

    iget-object v1, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun1/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun1/security/x509/URIName;->hostDNS:Lsun1/security/x509/DNSName;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_56} :catch_57

    goto :goto_37

    :catch_57
    move-exception v0

    :try_start_58
    new-instance v0, Lsun1/security/x509/IPAddressName;

    iget-object v1, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun1/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun1/security/x509/URIName;->hostIP:Lsun1/security/x509/IPAddressName;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_62

    goto :goto_37

    :catch_62
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid URI name (host portion is not a valid DNS name, IPv4 address, or IPv6 address):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URI name must include scheme:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_8b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid URI name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method constructor <init>(Ljava/net/URI;Ljava/lang/String;Lsun1/security/x509/DNSName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    iput-object p2, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    iput-object p3, p0, Lsun1/security/x509/URIName;->hostDNS:Lsun1/security/x509/DNSName;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun1/security/x509/URIName;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static nameConstraint(Lsun1/security/util/DerValue;)Lsun1/security/x509/URIName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_9} :catch_60

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :try_start_13
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lsun1/security/x509/DNSName;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lsun1/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    :goto_25
    new-instance v4, Lsun1/security/x509/URIName;

    invoke-direct {v4, v2, v3, v0}, Lsun1/security/x509/URIName;-><init>(Ljava/net/URI;Ljava/lang/String;Lsun1/security/x509/DNSName;)V

    return-object v4

    :cond_2b
    new-instance v0, Lsun1/security/x509/DNSName;

    invoke-direct {v0, v3}, Lsun1/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_31

    goto :goto_25

    :catch_31
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid URI name constraint:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid URI name constraint (should not include scheme):"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_60
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid URI name constraint:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method


# virtual methods
.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/16 v7, 0x2e

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez p1, :cond_a

    :cond_8
    const/4 v2, -0x1

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    check-cast p1, Lsun1/security/x509/URIName;

    invoke-virtual {p1}, Lsun1/security/x509/URIName;->getHost()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {p1}, Lsun1/security/x509/URIName;->getHostObject()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/x509/URIName;->hostDNS:Lsun1/security/x509/DNSName;

    if-eqz v1, :cond_5e

    instance-of v1, v0, Lsun1/security/x509/DNSName;

    if-nez v1, :cond_2d

    move v2, v4

    goto :goto_9

    :cond_2d
    iget-object v1, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_56

    move v1, v2

    :goto_36
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3d

    move v3, v2

    :cond_3d
    check-cast v0, Lsun1/security/x509/DNSName;

    iget-object v6, p0, Lsun1/security/x509/URIName;->hostDNS:Lsun1/security/x509/DNSName;

    invoke-virtual {v6, v0}, Lsun1/security/x509/DNSName;->constrains(Lsun1/security/x509/GeneralNameInterface;)I

    move-result v0

    if-nez v1, :cond_4e

    if-nez v3, :cond_4e

    if-eq v0, v5, :cond_5c

    if-ne v0, v2, :cond_4e

    move v0, v4

    :cond_4e
    :goto_4e
    if-eq v1, v3, :cond_5a

    if-nez v0, :cond_5a

    if-eqz v1, :cond_9

    move v2, v5

    goto :goto_9

    :cond_56
    move v1, v3

    goto :goto_36

    :cond_58
    move v2, v3

    goto :goto_9

    :cond_5a
    move v2, v0

    goto :goto_9

    :cond_5c
    move v0, v4

    goto :goto_4e

    :cond_5e
    move v2, v4

    goto :goto_9
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/URIName;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lsun1/security/x509/URIName;

    iget-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Lsun1/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/URIName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/URIName;->hostIP:Lsun1/security/x509/IPAddressName;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lsun1/security/x509/URIName;->hostDNS:Lsun1/security/x509/DNSName;

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URIName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
