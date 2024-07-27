.class public final Lsun1/security/x509/AccessDescription;
.super Ljava/lang/Object;


# static fields
.field public static final Ad_CAISSUERS_Id:Lsun1/security/util/ObjectIdentifier;

.field public static final Ad_CAREPOSITORY_Id:Lsun1/security/util/ObjectIdentifier;

.field public static final Ad_OCSP_Id:Lsun1/security/util/ObjectIdentifier;

.field public static final Ad_TIMESTAMPING_Id:Lsun1/security/util/ObjectIdentifier;


# instance fields
.field private accessLocation:Lsun1/security/x509/GeneralName;

.field private accessMethod:Lsun1/security/util/ObjectIdentifier;

.field private myhash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun1/security/util/ObjectIdentifier;

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun1/security/util/ObjectIdentifier;

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun1/security/util/ObjectIdentifier;

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun1/security/util/ObjectIdentifier;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x5
    .end array-data
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lsun1/security/x509/AccessDescription;->myhash:I

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getData()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    new-instance v1, Lsun1/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/x509/GeneralName;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/AccessDescription;->accessLocation:Lsun1/security/x509/GeneralName;

    return-void
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget-object v1, p0, Lsun1/security/x509/AccessDescription;->accessLocation:Lsun1/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralName;->encode(Lsun1/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_0

    instance-of v0, p1, Lsun1/security/x509/AccessDescription;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lsun1/security/x509/AccessDescription;

    if-eq p0, p1, :cond_2

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Lsun1/security/x509/AccessDescription;->getAccessMethod()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessLocation:Lsun1/security/x509/GeneralName;

    invoke-virtual {p1}, Lsun1/security/x509/AccessDescription;->getAccessLocation()Lsun1/security/x509/GeneralName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessLocation()Lsun1/security/x509/GeneralName;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessLocation:Lsun1/security/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Lsun1/security/util/ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lsun1/security/x509/AccessDescription;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun1/security/x509/AccessDescription;->accessLocation:Lsun1/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun1/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/security/x509/AccessDescription;->myhash:I

    :cond_0
    iget v0, p0, Lsun1/security/x509/AccessDescription;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "caIssuers"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n   accessMethod: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n   accessLocation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessLocation:Lsun1/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun1/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "caRepository"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "timeStamping"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ocsp"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsun1/security/x509/AccessDescription;->accessMethod:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
