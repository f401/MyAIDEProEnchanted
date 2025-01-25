.class public Lsun1/security/x509/OIDName;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/GeneralNameInterface;


# instance fields
.field private oid:Lsun1/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-nez p1, :cond_4

    :cond_2
    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    check-cast p1, Lsun1/security/x509/OIDName;

    invoke-virtual {p0, p1}, Lsun1/security/x509/OIDName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_3

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing and widening are not supported for OIDNames"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/OIDName;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lsun1/security/x509/OIDName;

    iget-object v0, p0, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    iget-object v1, p1, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getOID()Lsun1/security/util/ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OIDName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/OIDName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
