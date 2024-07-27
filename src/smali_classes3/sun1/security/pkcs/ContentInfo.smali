.class public Lsun1/security/pkcs/ContentInfo;
.super Ljava/lang/Object;


# static fields
.field public static DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static DIGESTED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static ENCRYPTED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static ENVELOPED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static NETSCAPE_CERT_SEQUENCE_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final OLD_DATA:[I

.field public static OLD_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final OLD_SDATA:[I

.field public static OLD_SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static PKCS7_OID:Lsun1/security/util/ObjectIdentifier;

.field public static SIGNED_AND_ENVELOPED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

.field public static TIMESTAMP_TOKEN_INFO_OID:Lsun1/security/util/ObjectIdentifier;

.field private static crdata:[I

.field private static data:[I

.field private static ddata:[I

.field private static edata:[I

.field private static nsdata:[I

.field private static pkcs7:[I

.field private static sdata:[I

.field private static sedata:[I

.field private static tstInfo:[I


# instance fields
.field content:Lsun1/security/util/DerValue;

.field contentType:Lsun1/security/util/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v5, v0, v3

    aput v6, v0, v5

    const/16 v1, 0x348

    aput v1, v0, v6

    const v1, 0x1bb8d

    aput v1, v0, v7

    const/4 v1, 0x4

    aput v5, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->pkcs7:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->data:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->sdata:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->edata:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->sedata:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->ddata:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->crdata:[I

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->nsdata:[I

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->tstInfo:[I

    new-array v1, v4, [I

    aput v5, v1, v3

    aput v6, v1, v5

    const/16 v2, 0x348

    aput v2, v1, v6

    const v2, 0x10fdcd

    aput v2, v1, v7

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v6, v1, v2

    sput-object v1, Lsun1/security/pkcs/ContentInfo;->OLD_SDATA:[I

    new-array v2, v4, [I

    aput v5, v2, v3

    aput v6, v2, v5

    const/16 v3, 0x348

    aput v3, v2, v6

    const v3, 0x10fdcd

    aput v3, v2, v7

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    sput-object v2, Lsun1/security/pkcs/ContentInfo;->OLD_DATA:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->PKCS7_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->data:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->DATA_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->sdata:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->edata:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->ENVELOPED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->sedata:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->SIGNED_AND_ENVELOPED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->ddata:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->DIGESTED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->crdata:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v1}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v2}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->nsdata:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun1/security/util/ObjectIdentifier;

    sget-object v0, Lsun1/security/pkcs/ContentInfo;->tstInfo:[I

    invoke-static {v0}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun1/security/util/ObjectIdentifier;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x2
        0x5
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x1
        0x4
    .end array-data
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/DerInputStream;Z)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    new-instance v1, Lsun1/security/util/DerInputStream;

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    if-eqz p2, :cond_1

    aget-object v0, v0, v3

    :goto_0
    iput-object v0, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    :cond_0
    return-void

    :cond_1
    array-length v1, v0

    if-le v1, v3, :cond_0

    new-instance v1, Lsun1/security/util/DerInputStream;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1, v3, v3}, Lsun1/security/util/DerInputStream;->getSet(IZ)[Lsun1/security/util/DerValue;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_0
.end method

.method public constructor <init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/util/DerValue;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lsun1/security/util/DerValue;-><init>(B[B)V

    sget-object v1, Lsun1/security/pkcs/ContentInfo;->DATA_OID:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    return-void
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget-object v1, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    if-eqz v1, :cond_0

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    invoke-virtual {v2, v1}, Lsun1/security/util/DerValue;->encode(Lsun1/security/util/DerOutputStream;)V

    new-instance v2, Lsun1/security/util/DerValue;

    const/16 v3, -0x60

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lsun1/security/util/DerValue;-><init>(B[B)V

    invoke-virtual {v0, v2}, Lsun1/security/util/DerOutputStream;->putDerValue(Lsun1/security/util/DerValue;)V

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public getContent()Lsun1/security/util/DerValue;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    return-object v0
.end method

.method public getContentBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getContentType()Lsun1/security/util/ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getData()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/pkcs/ContentInfo;->DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content type is not DATA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Content Info Sequence\n\tContent type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tContent: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/ContentInfo;->content:Lsun1/security/util/DerValue;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
