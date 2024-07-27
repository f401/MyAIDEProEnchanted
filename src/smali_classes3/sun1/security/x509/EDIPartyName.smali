.class public Lsun1/security/x509/EDIPartyName;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/GeneralNameInterface;


# instance fields
.field private assigner:Ljava/lang/String;

.field private myhash:I

.field private party:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iput-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v0, v5}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v3

    array-length v4, v3

    if-lt v4, v6, :cond_5

    if-gt v4, v5, :cond_5

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v6}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate nameAssigner found in EDIPartyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate partyName found in EDIPartyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of EDIPartyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing, widening, and matching of names not supported for EDIPartyName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, -0x80

    const/4 v4, 0x0

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    invoke-static {v5, v4, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    :cond_0
    iget-object v2, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v5, v4, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot have null partyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lsun1/security/x509/EDIPartyName;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    check-cast p1, Lsun1/security/x509/EDIPartyName;

    iget-object v0, p1, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p1, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    iget-object v1, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    :cond_0
    iget v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "EDIPartyName: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  partyName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  nameAssigner = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
