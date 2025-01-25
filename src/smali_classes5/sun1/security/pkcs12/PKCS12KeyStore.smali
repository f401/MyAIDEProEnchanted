.class public final Lsun1/security/pkcs12/PKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;,
        Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;
    }
.end annotation


# static fields
.field private static CertBag_OID:Lsun1/security/util/ObjectIdentifier;

.field private static PKCS8ShroudedKeyBag_OID:Lsun1/security/util/ObjectIdentifier;

.field private static PKCS9CertType_OID:Lsun1/security/util/ObjectIdentifier;

.field private static PKCS9FriendlyName_OID:Lsun1/security/util/ObjectIdentifier;

.field private static PKCS9LocalKeyId_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final certBag:[I

.field private static final debug:Lsun1/security/util/Debug;

.field private static final keyBag:[I

.field private static final pbeWithSHAAnd3KeyTripleDESCBC:[I

.field private static pbeWithSHAAnd3KeyTripleDESCBC_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final pbeWithSHAAnd40BitRC2CBC:[I

.field private static pbeWithSHAAnd40BitRC2CBC_OID:Lsun1/security/util/ObjectIdentifier;

.field private static final pkcs9KeyId:[I

.field private static final pkcs9Name:[I

.field private static final pkcs9certType:[I


# instance fields
.field private certEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;",
            ">;"
        }
    .end annotation
.end field

.field private certsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private counter:I

.field private entries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private keyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyCount:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v0, "pkcs12"

    invoke-static {v0}, Lsun1/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun1/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->debug:Lsun1/security/util/Debug;

    const/16 v0, 0x9

    new-array v0, v0, [I

    aput v9, v0, v12

    aput v8, v0, v9

    const/16 v1, 0x348

    aput v1, v0, v8

    const v1, 0x1bb8d

    aput v1, v0, v10

    const/4 v1, 0x4

    aput v9, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v11

    const/4 v1, 0x7

    aput v9, v0, v1

    const/16 v1, 0x8

    aput v8, v0, v1

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->keyBag:[I

    const/16 v1, 0x9

    new-array v1, v1, [I

    aput v9, v1, v12

    aput v8, v1, v9

    const/16 v2, 0x348

    aput v2, v1, v8

    const v2, 0x1bb8d

    aput v2, v1, v10

    const/4 v2, 0x4

    aput v9, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xc

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v2, v1, v11

    const/4 v2, 0x7

    aput v9, v1, v2

    const/16 v2, 0x8

    aput v10, v1, v2

    sput-object v1, Lsun1/security/pkcs12/PKCS12KeyStore;->certBag:[I

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v9, v2, v12

    aput v8, v2, v9

    const/16 v3, 0x348

    aput v3, v2, v8

    const v3, 0x1bb8d

    aput v3, v2, v10

    const/4 v3, 0x4

    aput v9, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x9

    aput v4, v2, v3

    const/16 v3, 0x14

    aput v3, v2, v11

    sput-object v2, Lsun1/security/pkcs12/PKCS12KeyStore;->pkcs9Name:[I

    const/4 v3, 0x7

    new-array v3, v3, [I

    aput v9, v3, v12

    aput v8, v3, v9

    const/16 v4, 0x348

    aput v4, v3, v8

    const v4, 0x1bb8d

    aput v4, v3, v10

    const/4 v4, 0x4

    aput v9, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x9

    aput v5, v3, v4

    const/16 v4, 0x15

    aput v4, v3, v11

    sput-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->pkcs9KeyId:[I

    const/16 v4, 0x8

    new-array v4, v4, [I

    aput v9, v4, v12

    aput v8, v4, v9

    const/16 v5, 0x348

    aput v5, v4, v8

    const v5, 0x1bb8d

    aput v5, v4, v10

    const/4 v5, 0x4

    aput v9, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x9

    aput v6, v4, v5

    const/16 v5, 0x16

    aput v5, v4, v11

    const/4 v5, 0x7

    aput v9, v4, v5

    sput-object v4, Lsun1/security/pkcs12/PKCS12KeyStore;->pkcs9certType:[I

    const/16 v5, 0x8

    new-array v5, v5, [I

    aput v9, v5, v12

    aput v8, v5, v9

    const/16 v6, 0x348

    aput v6, v5, v8

    const v6, 0x1bb8d

    aput v6, v5, v10

    const/4 v6, 0x4

    aput v9, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0xc

    aput v7, v5, v6

    aput v9, v5, v11

    const/4 v6, 0x7

    aput v11, v5, v6

    sput-object v5, Lsun1/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd40BitRC2CBC:[I

    const/16 v6, 0x8

    new-array v6, v6, [I

    aput v9, v6, v12

    aput v8, v6, v9

    const/16 v7, 0x348

    aput v7, v6, v8

    const v7, 0x1bb8d

    aput v7, v6, v10

    const/4 v7, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/16 v8, 0xc

    aput v8, v6, v7

    aput v9, v6, v11

    const/4 v7, 0x7

    aput v10, v6, v7

    sput-object v6, Lsun1/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd3KeyTripleDESCBC:[I

    :try_start_f7
    new-instance v7, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v7, v0}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v7, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS8ShroudedKeyBag_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v1}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->CertBag_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v2}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9FriendlyName_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v3}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9LocalKeyId_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v4}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9CertType_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v5}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd40BitRC2CBC_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, v6}, Lsun1/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lsun1/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd3KeyTripleDESCBC_OID:Lsun1/security/util/ObjectIdentifier;
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_128} :catch_129

    :goto_128
    return-void

    :catch_129
    move-exception v0

    goto :goto_128
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    iput v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->counter:I

    iput v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMac([C[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lsun1/security/pkcs12/PKCS12KeyStore;->getSalt()[B

    move-result-object v0

    const-string v1, "HmacPBESHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const v3, 0x186a0

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-direct {p0, p1}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    new-instance v2, Lsun1/security/pkcs12/MacData;

    const-string v3, "SHA1"

    const v4, 0x186a0

    invoke-direct {v2, v3, v1, v0, v4}, Lsun1/security/pkcs12/MacData;-><init>(Ljava/lang/String;[B[BI)V

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2}, Lsun1/security/pkcs12/MacData;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    return-object v0

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calculateMac failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createEncryptedData([C)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    const/16 v12, -0x80

    const/16 v11, 0x30

    const/4 v3, 0x0

    new-instance v5, Lsun1/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :cond_11
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v0, v11, v5}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lsun1/security/pkcs12/PKCS12KeyStore;->encryptContent([B[C)[B

    move-result-object v0

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v3}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    invoke-virtual {v2, v11, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3f
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    iget-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_b3

    move v2, v3

    :goto_52
    move v4, v3

    :goto_53
    if-ge v4, v2, :cond_11

    new-instance v7, Lsun1/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v1, Lsun1/security/pkcs12/PKCS12KeyStore;->CertBag_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v7, v1}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    new-instance v8, Lsun1/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v1, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9CertType_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v8, v1}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    new-instance v9, Lsun1/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v1, v1, v4

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-static {v12, v13, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v10

    invoke-virtual {v8, v10, v9}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    new-instance v9, Lsun1/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v9, v11, v8}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v9}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    new-instance v9, Lsun1/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v9, v8}, Lsun1/security/util/DerOutputStream;->write([B)V

    invoke-static {v12, v13, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v8

    invoke-virtual {v7, v8, v9}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    if-nez v4, :cond_b8

    iget-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v8, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    invoke-direct {p0, v1, v8}, Lsun1/security/pkcs12/PKCS12KeyStore;->getBagAttributes(Ljava/lang/String;[B)[B

    move-result-object v1

    :goto_a7
    if-eqz v1, :cond_ac

    invoke-virtual {v7, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    :cond_ac
    invoke-virtual {v5, v11, v7}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_53

    :cond_b3
    iget-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v1, v1

    move v2, v1

    goto :goto_52

    :cond_b8
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-direct {p0, v1, v8}, Lsun1/security/pkcs12/PKCS12KeyStore;->getBagAttributes(Ljava/lang/String;[B)[B

    move-result-object v1

    goto :goto_a7
.end method

.method private createSafeContent()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x30

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v0, v9, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_20
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v5, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS8ShroudedKeyBag_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v4, v5}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget-object v5, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    :try_start_3a
    new-instance v6, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v6, v5}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_63

    new-instance v5, Lsun1/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v6}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun1/security/util/DerOutputStream;->write([B)V

    const/16 v6, -0x80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v4, v6, v5}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    iget-object v1, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    invoke-direct {p0, v0, v1}, Lsun1/security/pkcs12/PKCS12KeyStore;->getBagAttributes(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    invoke-virtual {v2, v9, v4}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    goto :goto_d

    :catch_63
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Private key not stored as PKCS#8 EncryptedPrivateKeyInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encryptContent([B[C)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "PBEWithSHA1AndRC2_40"

    invoke-direct {p0, v0}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun1/security/x509/AlgorithmId;

    sget-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd40BitRC2CBC_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v2, v3, v0}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v2, v1}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_1a
    invoke-direct {p0, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v3, "PBEWithSHA1AndRC2_40"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_59

    move-result-object v0

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v3, Lsun1/security/pkcs/ContentInfo;->DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    invoke-virtual {v2, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v0, -0x80

    invoke-static {v0, v5, v5}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {v2, v0, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_59
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to encrypt safe contents entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private encryptPrivateKey([B[C)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "PBEWithSHA1AndDESede"

    invoke-direct {p0, v0}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    invoke-direct {p0, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "PBEWithSHA1AndDESede"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v2, Lsun1/security/x509/AlgorithmId;

    sget-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->pbeWithSHAAnd3KeyTripleDESCBC_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v2, v3, v0}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    new-instance v0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v0, v2, v1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>(Lsun1/security/x509/AlgorithmId;[B)V

    invoke-virtual {v0}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    move-result-object v0

    return-object v0

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encrypt Private Key failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method private findMatchedCertificate(Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;)Ljava/security/cert/X509Certificate;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    move-object v3, v2

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz v1, :cond_14

    iget-object v2, v1, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    :cond_13
    :goto_13
    return-object v2

    :cond_14
    if-eqz v3, :cond_13

    iget-object v2, v3, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    goto :goto_13

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;

    iget-object v5, p1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    iget-object v6, v0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->keyId:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v1, p1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v5, v0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->alias:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v2, v0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    goto :goto_13

    :cond_36
    move-object v1, v0

    goto :goto_9

    :cond_38
    iget-object v5, p1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v6, v0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->alias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v3, v0

    goto :goto_9
.end method

.method private getBagAttributes(Ljava/lang/String;[B)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x30

    const/16 v5, 0x31

    const/4 v0, 0x0

    if-nez p1, :cond_a

    if-nez p2, :cond_a

    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    if-eqz p1, :cond_6c

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9FriendlyName_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v3}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v3, p1}, Lsun1/security/util/DerOutputStream;->putBMPString(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v3}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v4, v6, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v4}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    :goto_32
    if-eqz p2, :cond_55

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9LocalKeyId_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v3, p2}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v0, v5, v3}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v4, v6, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v4}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_55
    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    if-eqz v1, :cond_5f

    invoke-virtual {v3, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    :cond_5f
    if-eqz v0, :cond_64

    invoke-virtual {v3, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    :cond_64
    invoke-virtual {v2, v5, v3}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9

    :cond_6c
    move-object v1, v0

    goto :goto_32
.end method

.method private getPBEAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {p0}, Lsun1/security/pkcs12/PKCS12KeyStore;->getSalt()[B

    move-result-object v1

    const v2, 0xc350

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    :try_start_c
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPBEAlgorithmParameters failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getPBEKey([C)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    const-string v1, "PBE"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSecretKey failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getSalt()[B
    .registers 3

    const/16 v0, 0x14

    new-array v0, v0, [B

    iget-object v1, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_f

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    :cond_f
    iget-object v1, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private getUnfriendlyName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->counter:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadSafeContents(Lsun1/security/util/DerInputStream;[C)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v4, v0

    :goto_8
    if-lt v4, v8, :cond_b

    return-void

    :cond_b
    aget-object v0, v7, v4

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_1b5

    iget-object v2, v2, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    sget-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS8ShroudedKeyBag_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_a8

    new-instance v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>(Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;)V

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    iget v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    :goto_41
    const/4 v2, 0x2

    :try_start_42
    invoke-virtual {v1, v2}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_10a

    move-result-object v1

    move-object v6, v1

    :goto_47
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v6, :cond_1ce

    const/4 v2, 0x0

    :goto_4d
    array-length v9, v6

    if-lt v2, v9, :cond_10f

    :goto_50
    instance-of v2, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz v2, :cond_17f

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-nez v3, :cond_65

    iget v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a3

    const-string v2, "01"

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    :cond_65
    iput-object v3, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    new-instance v6, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v6, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "Time "

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cb

    :try_start_76
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_84} :catch_17b

    :goto_84
    if-nez v2, :cond_8b

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :cond_8b
    iput-object v2, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    iget-object v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_98

    invoke-direct {p0}, Lsun1/security/pkcs12/PKCS12KeyStore;->getUnfriendlyName()Ljava/lang/String;

    move-result-object v1

    :cond_98
    iput-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    :goto_a3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_8

    :cond_a8
    sget-object v3, Lsun1/security/pkcs12/PKCS12KeyStore;->CertBag_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_ee

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    const-string v2, "X509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto/16 :goto_41

    :cond_ee
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported PKCS12 cert value type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-byte v0, v0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_107
    const/4 v0, 0x0

    goto/16 :goto_41

    :catch_10a
    move-exception v1

    const/4 v1, 0x0

    move-object v6, v1

    goto/16 :goto_47

    :cond_10f
    new-instance v9, Lsun1/security/util/DerInputStream;

    aget-object v10, v6, v2

    invoke-virtual {v10}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v10

    new-instance v11, Lsun1/security/util/DerInputStream;

    const/4 v12, 0x1

    aget-object v9, v9, v12

    invoke-virtual {v9}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v11, v9}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v9, 0x1

    :try_start_133
    invoke-virtual {v11, v9}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_15a

    move-result-object v9

    sget-object v11, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9FriendlyName_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v10, v11}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14a

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v1

    :cond_146
    :goto_146
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4d

    :cond_14a
    sget-object v11, Lsun1/security/pkcs12/PKCS12KeyStore;->PKCS9LocalKeyId_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v10, v11}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_146

    const/4 v3, 0x0

    aget-object v3, v9, v3

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v3

    goto :goto_146

    :catch_15a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " should have a value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_17b
    move-exception v2

    move-object v2, v5

    goto/16 :goto_84

    :cond_17f
    instance-of v2, v0, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_a3

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_196

    iget v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_196

    if-nez v4, :cond_196

    const-string v2, "01"

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    :cond_196
    iget-object v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    new-instance v5, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;

    invoke-direct {v5, v0, v3, v1}, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;-><init>(Ljava/security/cert/X509Certificate;[BLjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz v1, :cond_a3

    iget-object v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget-object v2, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a3

    :cond_1b5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported PKCS12 bag value type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, v2, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1cb
    move-object v2, v5

    goto/16 :goto_84

    :cond_1ce
    move-object v3, v2

    goto/16 :goto_50
.end method

.method private parseAlgParameters(Lsun1/security/util/DerInputStream;)Ljava/security/AlgorithmParameters;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_18

    :goto_7
    move-object v1, v0

    :cond_8
    if-eqz v1, :cond_17

    const-string v0, "PBE"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    :cond_17
    return-object v0

    :cond_18
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    iget-byte v2, v1, Lsun1/security/util/DerValue;->tag:B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    goto :goto_7

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseAlgParameters failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private validateChain([Ljava/security/cert/Certificate;)Z
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_19

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2

    :cond_19
    aget-object v0, p1, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    aget-object v0, p1, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_13
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move-object v2, v3

    :goto_8
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-object v3

    :cond_f
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    iget-object v5, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-eqz v5, :cond_2e

    iget-object v1, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_26
    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object v3, v0

    goto :goto_e

    :cond_2e
    move-object v1, v2

    goto :goto_26

    :cond_30
    move-object v2, v1

    goto :goto_8
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    goto :goto_13
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz v0, :cond_1b

    new-instance v1, Ljava/util/Date;

    iget-object v0, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    :try_start_12
    new-instance v1, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v1, v0}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>([B)V

    invoke-virtual {v1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v2

    new-instance v0, Lsun1/security/util/DerValue;

    invoke-virtual {v1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getAlgorithm()Lsun1/security/x509/AlgorithmId;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/x509/AlgorithmId;->encode()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-direct {p0, v0}, Lsun1/security/pkcs12/PKCS12KeyStore;->parseAlgParameters(Lsun1/security/util/DerInputStream;)Ljava/security/AlgorithmParameters;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_b7

    move-result-object v3

    if-eqz v3, :cond_47

    :try_start_36
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_3e
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_36 .. :try_end_3e} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_92

    :try_start_3e
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v0

    const v4, 0x4c4b40

    if-gt v0, v4, :cond_8a

    :cond_47
    invoke-direct {p0, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    new-instance v2, Lsun1/security/util/DerValue;

    invoke-direct {v2, v0}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getInteger()I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    new-instance v2, Lsun1/security/x509/AlgorithmId;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-direct {v2, v0}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;)V

    invoke-virtual {v2}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_f

    :cond_8a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PBE iteration count too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_92} :catch_92

    :catch_92
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get Key failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_ae
    move-exception v0

    :try_start_af
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid PBE algorithm parameters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b7} :catch_92

    :catch_b7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Private key not stored as PKCS#8 EncryptedPrivateKeyInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_7
    iput v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->counter:I

    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun1/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun1/security/util/DerInputStream;->getInteger()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a2

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v0, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v0, v3}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/DerInputStream;)V

    invoke-virtual {v0}, Lsun1/security/pkcs/ContentInfo;->getContentType()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    sget-object v4, Lsun1/security/pkcs/ContentInfo;->DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v4}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29a

    invoke-virtual {v0}, Lsun1/security/pkcs/ContentInfo;->getData()[B

    move-result-object v4

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-direct {v0, v4}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    iput v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->privateKeyCount:I

    const/4 v0, 0x0

    move v1, v0

    :goto_43
    if-lt v1, v6, :cond_185

    if-eqz p2, :cond_b0

    invoke-virtual {v3}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-lez v0, :cond_b0

    new-instance v1, Lsun1/security/pkcs12/MacData;

    invoke-direct {v1, v3}, Lsun1/security/pkcs12/MacData;-><init>(Lsun1/security/util/DerInputStream;)V

    invoke-virtual {v1}, Lsun1/security/pkcs12/MacData;->getIterations()I
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_d2

    move-result v3

    const v0, 0x4c4b40

    if-gt v3, v0, :cond_f2

    :try_start_5b
    invoke-virtual {v1}, Lsun1/security/pkcs12/MacData;->getDigestAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SHA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "SHA1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "SHA-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_78} :catch_dd
    .catchall {:try_start_5b .. :try_end_78} :catchall_d2

    move-result v5

    if-eqz v5, :cond_7d

    :cond_7b
    const-string v0, "SHA1"

    :cond_7d
    :try_start_7d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HmacPBE"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1}, Lsun1/security/pkcs12/MacData;->getSalt()[B

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-direct {p0, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-virtual {v1}, Lsun1/security/pkcs12/MacData;->getDigest()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_ad} :catch_dd
    .catchall {:try_start_7d .. :try_end_ad} :catchall_d2

    move-result v0

    if-eqz v0, :cond_d5

    :cond_b0
    :try_start_b0
    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    :goto_be
    array-length v1, v0

    if-lt v2, v1, :cond_106

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_d0
    .catchall {:try_start_b0 .. :try_end_d0} :catchall_d2

    goto/16 :goto_3

    :catchall_d2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d5
    :try_start_d5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Failed PKCS12 integrity checking"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_dd} :catch_dd
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_d2

    :catch_dd
    move-exception v0

    :try_start_de
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Integrity check failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f2
    .catchall {:try_start_de .. :try_end_f2} :catchall_d2

    :cond_f2
    :try_start_f2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAC iteration count too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_106} :catch_dd
    .catchall {:try_start_f2 .. :try_end_106} :catchall_d2

    :cond_106
    aget-object v4, v0, v2

    :try_start_108
    iget-object v1, v4, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    if-eqz v1, :cond_12c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v4}, Lsun1/security/pkcs12/PKCS12KeyStore;->findMatchedCertificate(Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    move-object v3, v1

    :goto_116
    if-nez v3, :cond_130

    :cond_118
    :goto_118
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    iput-object v1, v4, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_12c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_be

    :cond_130
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_140

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15b

    :cond_140
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    iget-object v3, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->certsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    move-object v3, v1

    goto :goto_116

    :cond_15b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    sget-object v1, Lsun1/security/pkcs12/PKCS12KeyStore;->debug:Lsun1/security/util/Debug;

    if-eqz v1, :cond_118

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loop detected in certificate chain. Skip adding repeated cert to chain. Subject: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun1/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_118

    :cond_185
    new-instance v0, Lsun1/security/util/DerInputStream;

    aget-object v7, v5, v1

    invoke-virtual {v7}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lsun1/security/util/DerInputStream;-><init>([B)V

    new-instance v7, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v7, v0}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/DerInputStream;)V

    invoke-virtual {v7}, Lsun1/security/pkcs/ContentInfo;->getContentType()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    sget-object v8, Lsun1/security/pkcs/ContentInfo;->DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v8}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b2

    invoke-virtual {v7}, Lsun1/security/pkcs/ContentInfo;->getData()[B

    move-result-object v0

    :goto_1a5
    new-instance v7, Lsun1/security/util/DerInputStream;

    invoke-direct {v7, v0}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v7, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->loadSafeContents(Lsun1/security/util/DerInputStream;[C)V

    :cond_1ad
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_43

    :cond_1b2
    sget-object v8, Lsun1/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v8}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_292

    if-eqz p2, :cond_1ad

    invoke-virtual {v7}, Lsun1/security/pkcs/ContentInfo;->getContent()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getInteger()I

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v7

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    const/4 v0, 0x2

    aget-object v0, v7, v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_28a

    const/4 v0, 0x4

    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v8}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v8

    if-eqz v8, :cond_1ef

    const/16 v0, 0x24

    int-to-byte v0, v0

    :cond_1ef
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v8, v0}, Lsun1/security/util/DerValue;->resetTag(B)V

    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-direct {p0, v0}, Lsun1/security/pkcs12/PKCS12KeyStore;->parseAlgParameters(Lsun1/security/util/DerInputStream;)Ljava/security/AlgorithmParameters;
    :try_end_20a
    .catchall {:try_start_108 .. :try_end_20a} :catchall_d2

    move-result-object v9

    if-eqz v9, :cond_270

    :try_start_20d
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v9, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_215
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_20d .. :try_end_215} :catch_267
    .catchall {:try_start_20d .. :try_end_215} :catchall_d2

    :try_start_215
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v0

    const v10, 0x4c4b40

    if-gt v0, v10, :cond_25f

    :goto_21e
    sget-object v10, Lsun1/security/pkcs12/PKCS12KeyStore;->debug:Lsun1/security/util/Debug;

    if-eqz v10, :cond_249

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Loading PKCS#7 encryptedData ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Lsun1/security/x509/AlgorithmId;

    invoke-direct {v12, v7}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;)V

    invoke-virtual {v12}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " iterations: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lsun1/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_249
    .catchall {:try_start_215 .. :try_end_249} :catchall_d2

    :cond_249
    :try_start_249
    invoke-direct {p0, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->getPBEKey([C)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v7}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v0, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_25c} :catch_272
    .catchall {:try_start_249 .. :try_end_25c} :catchall_d2

    move-result-object v0

    goto/16 :goto_1a5

    :cond_25f
    :try_start_25f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PBE iteration count too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_267
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid PBE algorithm parameters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_270
    const/4 v0, 0x0

    goto :goto_21e

    :catch_272
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to decrypt safe contents entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_28a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "encrypted content not present!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_292
    new-instance v0, Ljava/io/IOException;

    const-string v1, "public key protected PKCS12 not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "public key protected PKCS12 not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PKCS12 keystore not in version 3 format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2aa
    .catchall {:try_start_25f .. :try_end_2aa} :catchall_d2
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Cannot overwrite own certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "TrustedCertEntry not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>(Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_9d

    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PKCS#8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PKCS8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_2a
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lsun1/security/pkcs12/PKCS12KeyStore;->encryptPrivateKey([B[C)[B

    move-result-object v0

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p4, :cond_48

    array-length v0, p4

    const/4 v2, 0x1

    if-le v0, v2, :cond_40

    invoke-direct {p0, p4}, Lsun1/security/pkcs12/PKCS12KeyStore;->validateChain([Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_40
    invoke-virtual {p4}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Time "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_7d
    .catchall {:try_start_1 .. :try_end_73} :catchall_92

    monitor-exit p0

    return-void

    :cond_75
    :try_start_75
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Private key is not encodedas PKCS#8"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7d} :catch_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_92

    :catch_7d
    move-exception v0

    :try_start_7e
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key protection  algorithm not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_95
    :try_start_95
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Certificate chain is not validate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Key is not a PrivateKey"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a5} :catch_7d
    .catchall {:try_start_95 .. :try_end_a5} :catchall_92
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p2}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_67
    .catchall {:try_start_1 .. :try_end_6} :catchall_64

    :try_start_6
    new-instance v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>(Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_64

    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Time "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->keyId:[B
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_2f} :catch_7c
    .catchall {:try_start_13 .. :try_end_2f} :catchall_64

    :goto_2f
    :try_start_2f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->alias:Ljava/lang/String;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->protectedPrivKey:[B

    if-eqz p3, :cond_51

    array-length v0, p3

    const/4 v2, 0x1

    if-le v0, v2, :cond_49

    invoke-direct {p0, p3}, Lsun1/security/pkcs12/PKCS12KeyStore;->validateChain([Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_49
    invoke-virtual {p3}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, v1, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;->chain:[Ljava/security/cert/Certificate;

    :cond_51
    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_64

    monitor-exit p0

    return-void

    :cond_5c
    :try_start_5c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Certificate chain is not valid"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_67
    move-exception v0

    :try_start_68
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Private key is not stored as PKCS#8 EncryptedPrivateKeyInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_64

    :catch_7c
    move-exception v0

    goto :goto_2f
.end method

.method public engineSize()I
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs12/PKCS12KeyStore;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_7b

    :try_start_3
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-direct {p0}, Lsun1/security/pkcs12/PKCS12KeyStore;->createSafeContent()[B

    move-result-object v3

    new-instance v4, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v4, v3}, Lsun1/security/pkcs/ContentInfo;-><init>([B)V

    invoke-virtual {v4, v2}, Lsun1/security/pkcs/ContentInfo;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-direct {p0, p2}, Lsun1/security/pkcs12/PKCS12KeyStore;->createEncryptedData([C)[B

    move-result-object v3

    new-instance v4, Lsun1/security/pkcs/ContentInfo;

    sget-object v5, Lsun1/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    new-instance v6, Lsun1/security/util/DerValue;

    invoke-direct {v6, v3}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    invoke-virtual {v4, v2}, Lsun1/security/pkcs/ContentInfo;->encode(Lsun1/security/util/DerOutputStream;)V

    new-instance v3, Lsun1/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v3}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v3, v2}, Lsun1/security/pkcs/ContentInfo;-><init>([B)V

    invoke-virtual {v3, v1}, Lsun1/security/pkcs/ContentInfo;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    invoke-direct {p0, p2, v2}, Lsun1/security/pkcs12/PKCS12KeyStore;->calculateMac([C[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_83

    monitor-exit p0

    return-void

    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method
