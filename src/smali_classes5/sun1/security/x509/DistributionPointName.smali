.class public Lsun1/security/x509/DistributionPointName;
.super Ljava/lang/Object;


# instance fields
.field private fullName:Lsun1/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private relativeName:Lsun1/security/x509/RDN;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    iput-object v0, p0, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/GeneralNames;

    invoke-direct {v0, p1}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun1/security/x509/RDN;

    invoke-direct {v0, p1}, Lsun1/security/x509/RDN;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    goto :goto_21

    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for DistributionPointName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, -0x80

    const/4 v2, 0x1

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    const/4 v0, 0x0

    invoke-static {v3, v2, v0}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    :goto_14
    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_18
    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    invoke-virtual {v0, v1}, Lsun1/security/x509/RDN;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v3, v2, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    goto :goto_14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/DistributionPointName;

    if-eqz v0, :cond_1e

    check-cast p1, Lsun1/security/x509/DistributionPointName;

    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    iget-object v1, p1, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPointName;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    iget-object v1, p1, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPointName;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lsun1/security/x509/DistributionPointName;->hashCode:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lsun1/security/x509/GeneralNames;->hashCode()I

    move-result v0

    :goto_c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun1/security/x509/DistributionPointName;->hashCode:I

    :cond_10
    return v0

    :cond_11
    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    invoke-virtual {v0}, Lsun1/security/x509/RDN;->hashCode()I

    move-result v0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistributionPointName:\n     "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/DistributionPointName;->fullName:Lsun1/security/x509/GeneralNames;

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistributionPointName:\n     "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/DistributionPointName;->relativeName:Lsun1/security/x509/RDN;

    goto :goto_12
.end method
