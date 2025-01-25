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

    if-ne v0, v2, :cond_e1

    :goto_b
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_24

    :cond_17
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-nez v0, :cond_23

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-nez v0, :cond_23

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_d9

    :cond_23
    return-void

    :cond_24
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-nez v1, :cond_7c

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-nez v1, :cond_7c

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun1/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    goto :goto_b

    :cond_5b
    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_74

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun1/security/x509/RDN;

    invoke-direct {v1, v0}, Lsun1/security/x509/RDN;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    goto :goto_b

    :cond_74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_ac

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-nez v1, :cond_a4

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    goto/16 :goto_b

    :cond_a4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate Reasons in DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-nez v1, :cond_c9

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun1/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    goto/16 :goto_b

    :cond_c9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of DistributionPoint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of DistributionPoint."

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

.method private static reasonToString(I)Ljava/lang/String;
    .registers 3

    if-lez p0, :cond_a

    sget-object v0, Lsun1/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object v0, v0, p0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
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

    if-nez v0, :cond_11

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_32

    :cond_11
    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_68

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v5, v4, v6}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    :goto_28
    invoke-virtual {v3, v1, v0}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_2b
    invoke-static {v5, v4, v6}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {v2, v0, v3}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    :cond_32
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v0, :cond_4c

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/BitArray;

    iget-object v3, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-direct {v1, v3}, Lsun1/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun1/security/util/BitArray;)V

    invoke-static {v5, v6, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v2, v1, v0}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_4c
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_62

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    const/4 v1, 0x2

    invoke-static {v5, v4, v1}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v2, v1, v0}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_62
    const/16 v0, 0x30

    invoke-virtual {p1, v0, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_68
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_2b

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    invoke-virtual {v1, v0}, Lsun1/security/x509/RDN;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v5, v4, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    goto :goto_28
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/DistributionPoint;

    if-eqz v0, :cond_32

    check-cast p1, Lsun1/security/x509/DistributionPoint;

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    invoke-static {v0, v1}, Lsun1/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    iget-object v1, p1, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_32
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lsun1/security/x509/DistributionPoint;->hashCode:I

    if-nez v0, :cond_2d

    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    const/4 v0, 0x1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lsun1/security/x509/GeneralNames;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_f
    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lsun1/security/x509/RDN;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lsun1/security/x509/GeneralNames;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    :goto_26
    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v3, v2

    if-lt v1, v3, :cond_2e

    :cond_2b
    iput v0, p0, Lsun1/security/x509/DistributionPoint;->hashCode:I

    :cond_2d
    return v0

    :cond_2e
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_33

    add-int/2addr v0, v1

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->fullName:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_21

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

    :cond_21
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->relativeName:Lsun1/security/x509/RDN;

    if-eqz v0, :cond_3d

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

    :cond_3d
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v0, :cond_4c

    const-string v0, "   ReasonFlags:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_47
    iget-object v2, p0, Lsun1/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v3, v2

    if-lt v0, v3, :cond_6d

    :cond_4c
    iget-object v0, p0, Lsun1/security/x509/DistributionPoint;->crlIssuer:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_68

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

    :cond_68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6d
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_8b

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

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method
