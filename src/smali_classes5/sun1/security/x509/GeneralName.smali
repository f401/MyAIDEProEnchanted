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

    packed-switch v0, :pswitch_data_126

    :pswitch_12  #0x3
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

    :pswitch_2b  #0x8
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/OIDName;

    invoke-direct {v0, p1}, Lsun1/security/x509/OIDName;-><init>(Lsun1/security/util/DerValue;)V

    :goto_40
    iput-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    :goto_42
    return-void

    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of OID name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4b  #0x7
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/IPAddressName;

    invoke-direct {v0, p1}, Lsun1/security/x509/IPAddressName;-><init>(Lsun1/security/util/DerValue;)V

    goto :goto_40

    :cond_61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of IP address"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_69  #0x6
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {p1, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    if-eqz p2, :cond_81

    invoke-static {p1}, Lsun1/security/x509/URIName;->nameConstraint(Lsun1/security/util/DerValue;)Lsun1/security/x509/URIName;

    move-result-object v0

    :goto_7e
    iput-object v0, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    goto :goto_42

    :cond_81
    new-instance v0, Lsun1/security/x509/URIName;

    invoke-direct {v0, p1}, Lsun1/security/x509/URIName;-><init>(Lsun1/security/util/DerValue;)V

    goto :goto_7e

    :cond_87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of URI"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8f  #0x5
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p1, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/EDIPartyName;

    invoke-direct {v0, p1}, Lsun1/security/x509/EDIPartyName;-><init>(Lsun1/security/util/DerValue;)V

    goto :goto_40

    :cond_a4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of EDI name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ac  #0x4
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_c3

    new-instance v0, Lsun1/security/x509/X500Name;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getData()Lsun1/security/util/DerInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/X500Name;-><init>(Lsun1/security/util/DerInputStream;)V

    goto/16 :goto_40

    :cond_c3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of Directory name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_cb  #0x2
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_e1

    invoke-virtual {p1, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/DNSName;

    invoke-direct {v0, p1}, Lsun1/security/x509/DNSName;-><init>(Lsun1/security/util/DerValue;)V

    goto/16 :goto_40

    :cond_e1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of DNS name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e9  #0x1
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-virtual {p1, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/RFC822Name;

    invoke-direct {v0, p1}, Lsun1/security/x509/RFC822Name;-><init>(Lsun1/security/util/DerValue;)V

    goto/16 :goto_40

    :cond_ff
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of RFC822 name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_107  #0x0
    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-virtual {p1, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/OtherName;

    invoke-direct {v0, p1}, Lsun1/security/x509/OtherName;-><init>(Lsun1/security/util/DerValue;)V

    goto/16 :goto_40

    :cond_11d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of Other-Name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_107  #00000000
        :pswitch_e9  #00000001
        :pswitch_cb  #00000002
        :pswitch_12  #00000003
        :pswitch_ac  #00000004
        :pswitch_8f  #00000005
        :pswitch_69  #00000006
        :pswitch_4b  #00000007
        :pswitch_2b  #00000008
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

    if-eqz v2, :cond_1b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x5

    if-ne v2, v3, :cond_24

    :cond_1b
    :goto_1b
    int-to-byte v2, v2

    invoke-static {v4, v0, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :goto_23
    return-void

    :cond_24
    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    int-to-byte v2, v2

    invoke-static {v4, v0, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    goto :goto_23

    :cond_30
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/GeneralName;

    if-eqz v0, :cond_14

    check-cast p1, Lsun1/security/x509/GeneralName;

    iget-object v0, p1, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    :try_start_c
    iget-object v1, p0, Lsun1/security/x509/GeneralName;->name:Lsun1/security/x509/GeneralNameInterface;

    invoke-interface {v1, v0}, Lsun1/security/x509/GeneralNameInterface;->constrains(Lsun1/security/x509/GeneralNameInterface;)I
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_11} :catch_16

    move-result v0

    if-eqz v0, :cond_2

    :cond_14
    :goto_14
    const/4 v0, 0x0

    goto :goto_3

    :catch_16
    move-exception v0

    goto :goto_14
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
