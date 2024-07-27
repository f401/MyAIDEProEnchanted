.class public Lsun1/security/x509/GeneralSubtree;
.super Ljava/lang/Object;


# instance fields
.field private maximum:I

.field private minimum:I

.field private myhash:I

.field private name:Lsun1/security/x509/GeneralName;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    new-instance v0, Lsun1/security/x509/GeneralName;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lsun1/security/x509/GeneralName;-><init>(Lsun1/security/util/DerValue;Z)V

    iput-object v0, p0, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    :goto_0
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v0

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v0

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of GeneralSubtree."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for GeneralSubtree."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, -0x80

    const/4 v3, 0x0

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralName;->encode(Lsun1/security/util/DerOutputStream;)V

    iget v1, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    if-eqz v1, :cond_0

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v2, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    invoke-static {v4, v3, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_0
    iget v1, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v2, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    const/4 v2, 0x1

    invoke-static {v4, v3, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lsun1/security/x509/GeneralSubtree;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    check-cast p1, Lsun1/security/x509/GeneralSubtree;

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    if-nez v0, :cond_3

    iget-object v0, p1, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    if-nez v0, :cond_0

    :cond_2
    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    iget v1, p1, Lsun1/security/x509/GeneralSubtree;->minimum:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    iget v1, p1, Lsun1/security/x509/GeneralSubtree;->maximum:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    invoke-virtual {v0, v1}, Lsun1/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    const/4 v2, -0x1

    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0x11

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun1/security/x509/GeneralName;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    :cond_0
    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    if-eqz v0, :cond_1

    iget v1, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    :cond_1
    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    if-eq v0, v2, :cond_2

    iget v1, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    :cond_2
    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\n   GeneralSubtree: [\n    GeneralName: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtree;->name:Lsun1/security/x509/GeneralName;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    Minimum: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->minimum:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\t    Maximum: undefined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    ]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lsun1/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\t    Maximum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun1/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
