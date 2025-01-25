.class public Lsun1/security/x509/NetscapeCertTypeExtension;
.super Lsun1/security/x509/Extension;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun1/security/x509/Extension;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CertType_data:[I

.field public static NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final mAttributeNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapData:[Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v0

    const/16 v2, 0x10

    aput v2, v1, v4

    const/16 v2, 0x348

    aput v2, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x4

    const v3, 0x1bc42

    aput v3, v1, v2

    aput v4, v1, v7

    const/4 v2, 0x6

    aput v4, v1, v2

    sput-object v1, Lsun1/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    :try_start_21
    new-instance v2, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v2, v1}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v2, Lsun1/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_89

    :goto_28
    const/4 v1, 0x7

    new-array v1, v1, [Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    new-instance v2, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "ssl_client"

    invoke-direct {v2, v3, v0}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v0

    new-instance v2, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "ssl_server"

    invoke-direct {v2, v3, v4}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "s_mime"

    invoke-direct {v2, v3, v5}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "object_signing"

    invoke-direct {v2, v3, v6}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    const/4 v2, 0x4

    new-instance v3, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v4, "ssl_ca"

    invoke-direct {v3, v4, v7}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    new-instance v2, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "s_mime_ca"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    const/4 v2, 0x6

    new-instance v3, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v4, "object_signing_ca"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    sput-object v1, Lsun1/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lsun1/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    sget-object v1, Lsun1/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v2, v1

    :goto_7a
    if-lt v0, v2, :cond_7d

    return-void

    :cond_7d
    aget-object v3, v1, v0

    sget-object v4, Lsun1/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    iget-object v3, v3, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :catch_89
    move-exception v1

    goto :goto_28
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    sget-object v0, Lsun1/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->critical:Z

    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    sget-object v0, Lsun1/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    new-instance v0, Lsun1/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun1/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    sget-object v0, Lsun1/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    return-void
.end method

.method public constructor <init>([Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object p1, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    sget-object v0, Lsun1/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/BitArray;

    iget-object v2, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun1/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun1/security/util/BitArray;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    return-void
.end method

.method private isSet(I)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_b

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun1/security/x509/NetscapeCertTypeExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "NetscapeCertType"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NetscapeCertType [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "   SSL client\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "   SSL server\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "   S/MIME\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "   Object Signing\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "   SSL CA\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "   S/MIME CA\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun1/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "   Object Signing CA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
