.class public Lsun1/security/x509/ExtendedKeyUsageExtension;
.super Lsun1/security/x509/Extension;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
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
.field private static final OCSPSigningOidData:[I

.field private static final anyExtendedKeyUsageOidData:[I

.field private static final clientAuthOidData:[I

.field private static final codeSigningOidData:[I

.field private static final emailProtectionOidData:[I

.field private static final ipsecEndSystemOidData:[I

.field private static final ipsecTunnelOidData:[I

.field private static final ipsecUserOidData:[I

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serverAuthOidData:[I

.field private static final timeStampingOidData:[I


# instance fields
.field private keyUsages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun1/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x1d

    aput v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x25

    aput v3, v1, v2

    sput-object v1, Lsun1/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    const/16 v2, 0x9

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x6

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x7

    aput v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x3

    aput v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v4, v2, v3

    sput-object v2, Lsun1/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x7

    aput v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x3

    aput v5, v3, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    aput v5, v3, v4

    sput-object v3, Lsun1/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    const/16 v4, 0x9

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x1

    aput v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x7

    aput v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x3

    aput v6, v4, v5

    const/16 v5, 0x8

    const/4 v6, 0x3

    aput v6, v4, v5

    sput-object v4, Lsun1/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    const/16 v5, 0x9

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x6

    aput v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    aput v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x5

    aput v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    const/4 v7, 0x7

    aput v7, v5, v6

    const/4 v6, 0x7

    const/4 v7, 0x3

    aput v7, v5, v6

    const/16 v6, 0x8

    const/4 v7, 0x4

    aput v7, v5, v6

    sput-object v5, Lsun1/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x6

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x5

    aput v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x5

    aput v8, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x7

    aput v8, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x3

    aput v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x5

    aput v8, v6, v7

    sput-object v6, Lsun1/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    const/16 v7, 0x9

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    aput v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x6

    aput v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    aput v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x5

    aput v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x5

    aput v9, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x7

    aput v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x3

    aput v9, v7, v8

    const/16 v8, 0x8

    const/4 v9, 0x6

    aput v9, v7, v8

    sput-object v7, Lsun1/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    const/16 v8, 0x9

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x3

    aput v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x6

    aput v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x5

    aput v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x5

    aput v10, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x7

    aput v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x3

    aput v10, v8, v9

    const/16 v9, 0x8

    const/4 v10, 0x7

    aput v10, v8, v9

    sput-object v8, Lsun1/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    const/16 v9, 0x9

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x3

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x6

    aput v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x1

    aput v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x5

    aput v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x5

    aput v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x7

    aput v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x3

    aput v11, v9, v10

    const/16 v10, 0x8

    const/16 v11, 0x8

    aput v11, v9, v10

    sput-object v9, Lsun1/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    const/16 v10, 0x9

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x3

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x6

    aput v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    aput v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x5

    aput v12, v10, v11

    const/4 v11, 0x5

    const/4 v12, 0x5

    aput v12, v10, v11

    const/4 v11, 0x6

    const/4 v12, 0x7

    aput v12, v10, v11

    const/4 v11, 0x7

    const/4 v12, 0x3

    aput v12, v10, v11

    const/16 v11, 0x8

    const/16 v12, 0x9

    aput v12, v10, v11

    sput-object v10, Lsun1/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    invoke-static {v1}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v11, "anyExtendedKeyUsage"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "serverAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "clientAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "codeSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "emailProtection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "ipsecEndSystem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "ipsecTunnel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "ipsecUser"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "timeStamping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lsun1/security/util/ObjectIdentifier;->newInternal([I)Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "OCSPSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3e

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    :goto_25
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_2e

    return-void

    :cond_2e
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    iget-object v2, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_25

    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for ExtendedKeyUsageExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Vector",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object p2, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lsun1/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun1/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/util/Vector;)V

    return-void
.end method

.method private encodeThis()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    :goto_d
    return-void

    :cond_e
    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    iget-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2e

    const/16 v0, 0x30

    invoke-virtual {v2, v0, v3}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    goto :goto_d

    :cond_2e
    iget-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v3, v0}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a
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

    iget-object v1, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "ExtendedKeyUsage"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lsun1/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x1

    const-string v2, "  "

    move v3, v0

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ExtendedKeyUsages [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsun1/security/util/ObjectIdentifier;

    if-nez v3, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_50
    sget-object v0, Lsun1/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6a
    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    goto :goto_f

    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6a
.end method
