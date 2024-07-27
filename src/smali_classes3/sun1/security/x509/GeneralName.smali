.class public Lsun1/security/x509/GeneralName;
.super Ljava/lang/Object;


# instance fields
.field private name:Lsun1/security/x509/GeneralNameInterface;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun1/security/x509/GeneralName;-><init>(Lsun1/security/util/DerValue;Z)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x30

    const/16 v1, 0x16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized GeneralName tag, ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/OIDName;

    invoke-direct {v0, p1}, Lsun1/security/x509/OIDName;-><init>(Lsun1/security/util/DerValue;)V

    :goto_0
    iput-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of OID name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/IPAddressName;

    invoke-direct {v0, p1}, Lsun1/security/x509/IPAddressName;-><init>(Lsun1/security/util/DerValue;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of IP address"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    if-eqz p2, :cond_2

    invoke-static {p1}, Lsun1/security/x509/URIName;->nameConstraint(Lsun1/security/util/DerValue;)Lsun1/security/x509/URIName;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    goto :goto_1

    :cond_2
    new-instance v0, Lsun1/security/x509/URIName;

    invoke-direct {v0, p1}, Lsun1/security/x509/URIName;-><init>(Lsun1/security/util/DerValue;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of URI"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/EDIPartyName;

    invoke-direct {v0, p1}, Lsun1/security/x509/EDIPartyName;-><init>(Lsun1/security/util/DerValue;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of EDI name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lsun1/security/x509/X500Name;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getData()Lsun1/security/util/DerInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/X500Name;-><init>(Lsun1/security/util/DerInputStream;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of Directory name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/DNSName;

    invoke-direct {v0, p1}, Lsun1/security/x509/DNSName;-><init>(Lsun1/security/util/DerValue;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of DNS name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/RFC822Name;

    invoke-direct {v0, p1}, Lsun1/security/x509/RFC822Name;-><init>(Lsun1/security/util/DerValue;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of RFC822 name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/OtherName;

    invoke-direct {v0, p1}, Lsun1/security/x509/OtherName;-><init>(Lsun1/security/util/DerValue;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of Other-Name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v4, -0x80

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    invoke-interface {v2, v1}, Lsun1/security/x509/GeneralNameInterface;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v2, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    invoke-interface {v2}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    int-to-byte v2, v2

    invoke-static {v4, v0, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    int-to-byte v2, v2

    invoke-static {v4, v0, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lsun1/security/x509/GeneralName;

    if-eqz v0, :cond_2

    check-cast p1, Lsun1/security/x509/GeneralName;

    iget-object v0, p1, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    :try_start_0
    iget-object v1, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    invoke-interface {v1, v0}, Lsun1/security/x509/GeneralNameInterface;->constrains(Lsun1/security/x509/GeneralNameInterface;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getName()Lsun1/security/x509/GeneralNameInterface;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
