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

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

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

    if-lt v4, v6, :cond_72

    if-gt v4, v5, :cond_72

    move v1, v2

    :goto_21
    if-lt v1, v4, :cond_24

    return-void

    :cond_24
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v5, :cond_62

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    :cond_42
    invoke-virtual {v0, v6}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_5e

    iget-object v5, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v5, :cond_6a

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    :cond_5e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate nameAssigner found in EDIPartyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate partyName found in EDIPartyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
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

    if-nez p1, :cond_4

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

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

    if-eqz v2, :cond_22

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    invoke-static {v5, v4, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    :cond_22
    iget-object v2, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-eqz v2, :cond_37

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v5, v4, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot have null partyName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lsun1/security/x509/EDIPartyName;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lsun1/security/x509/EDIPartyName;

    iget-object v0, p1, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v1, :cond_1a

    if-nez v0, :cond_4

    :cond_10
    iget-object v0, p1, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v1, :cond_21

    if-nez v0, :cond_4

    :cond_18
    const/4 v0, 0x1

    goto :goto_5

    :cond_1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    :cond_21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4
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

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_a
    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    iget-object v1, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v1, :cond_1b

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    :cond_1b
    iget v0, p0, Lsun1/security/x509/EDIPartyName;->myhash:I

    return v0

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "EDIPartyName: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string v0, ""

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  partyName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  nameAssigner = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method
