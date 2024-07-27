.class public Lsun1/security/x509/DistributionPoint;
.super Ljava/lang/Object;


# static fields
.field private static final REASON_STRINGS:[Ljava/lang/String;


# instance fields
.field private crlIssuer:Lsun1/security/x509/GeneralNames;

.field private fullName:Lsun1/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private reasonFlags:[Z

.field private relativeName:Lsun1/security/x509/RDN;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "key compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CA compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliation changed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessation of operation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificate hold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "privilege withdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AA compromise"

    aput-object v2, v0, v1

    sput-object v0, Lsun1/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x30

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v2, :cond_c

    :goto_0
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_b

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-nez v1, :cond_5

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-nez v1, :cond_5

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun1/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v0}, Lsun1/security/x509/RDN;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-nez v1, :cond_7

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate Reasons in DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-nez v1, :cond_9

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun1/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static reasonToString(I)Ljava/lang/String;
    .registers 3

    if-lez p0, :cond_0

    sget-object v0, Lsun1/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, -0x80

    const/4 v4, 0x1

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_5

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v5, v4, v6}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    :goto_0
    invoke-virtual {v3, v1, v0}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_1
    invoke-static {v5, v4, v6}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {v2, v0, v3}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    :cond_2
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v0, :cond_3

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/BitArray;

    iget-object v3, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-direct {v1, v3}, Lsun1/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun1/security/util/BitArray;)V

    invoke-static {v5, v6, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v2, v1, v0}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_3
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_4

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    const/4 v1, 0x2

    invoke-static {v5, v4, v1}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v2, v1, v0}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p1, v0, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_5
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_1

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    invoke-virtual {v1, v0}, Lsun1/security/x509/RDN;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v5, v4, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

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
    instance-of v0, p1, Lsun1/security/x509/DistributionPoint;

    if-eqz v0, :cond_2

    check-cast p1, Lsun1/security/x509/DistributionPoint;

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lsun1/security/x509/DistributionPoint;->hashCode:I

    if-nez v0, :cond_4

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsun1/security/x509/GeneralNames;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsun1/security/x509/RDN;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lsun1/security/x509/GeneralNames;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v3, v2

    if-lt v1, v3, :cond_5

    :cond_3
    iput v0, p0, Lsun1/security/x509/DistributionPoint;->hashCode:I

    :cond_4
    return v0

    :cond_5
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_6

    add-int/2addr v0, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DistributionPoint:\n     "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DistributionPoint:\n     "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v0, :cond_2

    const-string v0, "   ReasonFlags:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v3, v2

    if-lt v0, v3, :cond_4

    :cond_2
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "   CRLIssuer:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsun1/security/x509/DistributionPoint;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
