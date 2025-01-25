.class public Labcd/GA;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/GA$a;
    }
.end annotation


# static fields
.field private static DW:Ljava/util/regex/Pattern;

.field public static final FH:[Ljava/lang/String;

.field static j6:Labcd/tA;


# instance fields
.field private Hw:Z

.field VH:Labcd/BA;

.field Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/BA;",
            ">;"
        }
    .end annotation
.end field

.field gn:Ljava/lang/String;

.field tp:Labcd/GA$a;

.field u7:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Labcd/DA;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "^META-INF/(.*)[.](SF|RSA|DSA)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/GA;->DW:Ljava/util/regex/Pattern;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto-testkey"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "auto-none"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "media"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "platform"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "shared"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "testkey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "none"

    aput-object v2, v0, v1

    sput-object v0, Labcd/GA;->FH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/GA;->Hw:Z

    new-instance v0, Labcd/DA;

    invoke-direct {v0}, Labcd/DA;-><init>()V

    iput-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/GA;->Zo:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    const-string v0, "testkey"

    iput-object v0, p0, Labcd/GA;->gn:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Labcd/GA;->u7:Ljava/util/Map;

    new-instance v1, Labcd/GA$a;

    invoke-direct {v1}, Labcd/GA$a;-><init>()V

    iput-object v1, p0, Labcd/GA;->tp:Labcd/GA$a;

    iget-object v1, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v2, "aa9852bc5a53272ac8031d49b65e4b0e"

    const-string v3, "media"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v2, "e60418c4b638f20d0721e115674ca11f"

    const-string v3, "platform"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v2, "3e24e49741b60c215c010dc6048fca7d"

    const-string v3, "shared"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v2, "dab2cead827ef5313f28e22b6fa8479f"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j6()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/GA;->j6:Labcd/tA;

    if-nez v0, :cond_10

    const-class v0, Labcd/GA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/GA;->j6:Labcd/tA;

    :cond_10
    sget-object v0, Labcd/GA;->j6:Labcd/tA;

    return-object v0
.end method

.method private j6([BLjava/lang/String;)Ljava/security/spec/KeySpec;
    .registers 6

    :try_start_0
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p1}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_3a

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {p2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {p2, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    :try_start_2a
    invoke-virtual {v0, p2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object p1
    :try_end_2e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2a .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    move-exception p1

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object p2

    const-string v0, "signapk: Password for private key may be bad."

    invoke-interface {p2, v0}, Labcd/tA;->j6(Ljava/lang/String;)V

    throw p1

    :catch_3a
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private j6(Ljava/util/Map;)Ljava/util/jar/Manifest;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;)",
            "Ljava/util/jar/Manifest;"
        }
    .end annotation

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/IA;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    new-instance v3, Ljava/util/jar/Manifest;

    invoke-direct {v3}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v1}, Labcd/IA;->u7()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    goto :goto_19

    :cond_18
    move-object v3, v2

    :goto_19
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v4

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    goto :goto_3a

    :cond_2c
    const-string v5, "Manifest-Version"

    const-string v6, "1.0"

    invoke-virtual {v4, v5, v6}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "Created-By"

    const-string v6, "1.0 (Android SignApk)"

    invoke-virtual {v4, v5, v6}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_3a
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const/16 v5, 0x200

    new-array v5, v5, [B

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object p1

    invoke-interface {p1}, Labcd/tA;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v7

    const-string v8, "Manifest entries:"

    invoke-interface {v7, v8}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_5f
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_67
    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/IA;

    iget-boolean v8, p0, Labcd/GA;->Hw:Z

    if-eqz v8, :cond_79

    goto/16 :goto_f2

    :cond_79
    invoke-virtual {v7}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_86

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v9

    invoke-interface {v9, v8}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_86
    invoke-virtual {v7}, Labcd/IA;->j3()Z

    move-result v9

    if-nez v9, :cond_67

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_67

    const-string v9, "META-INF/CERT.SF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_67

    const-string v9, "META-INF/CERT.RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_67

    sget-object v9, Labcd/GA;->DW:Ljava/util/regex/Pattern;

    if-eqz v9, :cond_b0

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_67

    :cond_b0
    iget-object v9, p0, Labcd/GA;->v5:Labcd/DA;

    const-string v10, "Generating manifest"

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Labcd/DA;->j6(ILjava/lang/String;)V

    invoke-virtual {v7}, Labcd/IA;->u7()Ljava/io/InputStream;

    move-result-object v7

    :goto_bc
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_c6

    invoke-virtual {v4, v5, v11, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_bc

    :cond_c6
    if-eqz v3, :cond_d4

    invoke-virtual {v3, v8}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v7

    if-eqz v7, :cond_d4

    new-instance v9, Ljava/util/jar/Attributes;

    invoke-direct {v9, v7}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    goto :goto_d5

    :cond_d4
    move-object v9, v2

    :goto_d5
    if-nez v9, :cond_dc

    new-instance v9, Ljava/util/jar/Attributes;

    invoke-direct {v9}, Ljava/util/jar/Attributes;-><init>()V

    :cond_dc
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Labcd/yA;->j6([B)Ljava/lang/String;

    move-result-object v7

    const-string v10, "SHA1-Digest"

    invoke-virtual {v9, v10, v7}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_67

    :cond_f2
    :goto_f2
    return-object v1
.end method

.method private j6(Ljava/util/Map;Labcd/NA;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;",
            "Labcd/NA;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/IA;

    iget-boolean v4, p0, Labcd/GA;->Hw:Z

    if-eqz v4, :cond_1b

    goto :goto_3f

    :cond_1b
    iget-object v4, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Copying zip entry %d of %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Labcd/DA;->j6(ILjava/lang/String;)V

    add-int/2addr v2, v1

    invoke-virtual {p2, v3}, Labcd/NA;->j6(Labcd/IA;)V

    goto :goto_a

    :cond_3f
    :goto_3f
    return-void
.end method

.method private j6(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .registers 12

    const-string v0, "Signature-Version: 1.0\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "Created-By: 1.0 (Android SignApk)\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/security/DigestOutputStream;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v2, v3, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHA1-Digest-Manifest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Labcd/yA;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-boolean v4, p0, Labcd/GA;->Hw:Z

    if-eqz v4, :cond_73

    goto/16 :goto_109

    :cond_73
    iget-object v4, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v5, 0x0

    const-string v6, "Generating signature file"

    invoke-virtual {v4, v5, v6}, Labcd/DA;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    invoke-virtual {v2}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_a8

    :cond_d7
    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHA1-Digest: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Labcd/yA;->j6([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_61

    :cond_109
    :goto_109
    return-void
.end method

.method private j6(Ljava/util/jar/Manifest;Ljava/util/Map;Labcd/NA;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Manifest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;",
            "Labcd/NA;",
            "J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p0, Labcd/GA;->Hw:Z

    if-eqz v4, :cond_27

    goto :goto_54

    :cond_27
    iget-object v4, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Copying zip entry %d of %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Labcd/DA;->j6(ILjava/lang/String;)V

    add-int/2addr v2, v1

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/IA;

    invoke-virtual {v3, p4, p5}, Labcd/IA;->j6(J)V

    invoke-virtual {p3, v3}, Labcd/NA;->j6(Labcd/IA;)V

    goto :goto_16

    :cond_54
    :goto_54
    return-void
.end method

.method private j6([B[BLjava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
    .registers 12

    if-eqz p1, :cond_9

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_39

    :cond_9
    :try_start_9
    const-string p1, "kellinwood.sigblock.SignatureBlockWriter"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "writeSignatureBlock"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-class v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    const-class v4, Ljava/io/OutputStream;

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3a

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p3, v0, v3

    aput-object p4, v0, v6

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_39
    return-void

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "writeSignatureBlock() method not found."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_42} :catch_42

    :catch_42
    move-exception p1

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Labcd/tA;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to invoke writeSignatureBlock(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(Ljava/net/URL;)Ljava/security/cert/X509Certificate;
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_4
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_14
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeymode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_22
    iput-object p1, p0, Labcd/GA;->gn:Ljava/lang/String;

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/GA;->VH:Labcd/BA;

    goto :goto_3a

    :cond_30
    iget-object p1, p0, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {p1}, Labcd/DA;->j6()V

    iget-object p1, p0, Labcd/GA;->gn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/GA;->j6(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method protected j6(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    return-object p1

    :cond_11
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1b
    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, ".RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/IA;

    invoke-virtual {v3}, Labcd/IA;->v5()[B

    move-result-object v3

    array-length v5, v3

    const/16 v6, 0x5b2

    if-ge v5, v6, :cond_53

    goto :goto_b0

    :cond_53
    const/4 v2, 0x0

    invoke-virtual {v4, v3, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_62
    const/4 v7, 0x1

    if-ge v6, v5, :cond_7b

    new-array v7, v7, [Ljava/lang/Object;

    aget-byte v8, v3, v6

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%02x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/GA;->u7:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_aa

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v5

    if-eqz v4, :cond_9d

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v3, v6, v7

    const-string v2, "Auto-determined key=%s using md5=%s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a7

    :cond_9d
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v2, "Auto key determination failed for md5=%s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_a7
    invoke-interface {v5, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_aa
    if-eqz v4, :cond_ad

    return-object v4

    :cond_ad
    move-object v2, v4

    goto/16 :goto_1b

    :cond_b0
    :goto_b0
    const-string p2, "auto-testkey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d5

    if-eqz v0, :cond_d2

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Falling back to key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_d2
    const-string p1, "testkey"

    return-object p1

    :cond_d5
    const-string p2, "auto-none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    if-eqz v0, :cond_e8

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object p1

    const-string p2, "Unable to determine key, returning: none"

    invoke-interface {p1, p2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_e8
    const-string p1, "none"

    return-object p1

    :cond_eb
    return-object v1
.end method

.method public j6(Ljava/net/URL;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_9
    invoke-virtual {p0, v0}, Labcd/GA;->j6(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Labcd/GA;->j6([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object p2

    if-nez p2, :cond_18

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_35

    :cond_18
    :try_start_18
    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_22
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_18 .. :try_end_22} :catch_26
    .catchall {:try_start_18 .. :try_end_22} :catchall_35

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object p1

    :catch_26
    move-exception p1

    :try_start_27
    const-string p1, "DSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_35

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object p1

    :catchall_35
    move-exception p1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Labcd/GA;->Zo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/BA;

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Labcd/BA;

    invoke-direct {v0}, Labcd/BA;-><init>()V

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v0, p1}, Labcd/BA;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/GA;->Zo:Ljava/util/Map;

    iget-object v1, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    :cond_27
    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v1, 0x1

    const-string v2, "Loading certificate and private key"

    invoke-virtual {v0, v1, v2}, Labcd/DA;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/assets/keys/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pk8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Labcd/GA;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iget-object v3, p0, Labcd/GA;->VH:Labcd/BA;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Labcd/GA;->j6(Ljava/net/URL;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/BA;->j6(Ljava/security/PrivateKey;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".x509.pem"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iget-object v3, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {p0, v0}, Labcd/GA;->DW(Ljava/net/URL;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/BA;->j6(Ljava/security/cert/X509Certificate;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".sbt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_99

    iget-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {p0, p1}, Labcd/GA;->j6(Ljava/net/URL;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/BA;->j6([B)V

    :cond_99
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v0}, Labcd/DA;->j6()V

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v1, 0x1

    const-string v2, "Parsing the input\'s central directory"

    invoke-virtual {v0, v1, v2}, Labcd/DA;->j6(ILjava/lang/String;)V

    invoke-static {p1}, Labcd/LA;->j6(Ljava/lang/String;)Labcd/LA;

    move-result-object p1

    invoke-virtual {p1}, Labcd/LA;->j6()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2}, Labcd/GA;->j6(Ljava/util/Map;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input and output files are the same.  Specify a different name for the output."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[B)V
    .registers 6

    new-instance v0, Labcd/BA;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/BA;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[B)V

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    return-void
.end method

.method public j6(Ljava/util/Map;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    const-string v9, ":"

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    invoke-interface {v1}, Labcd/tA;->isDebugEnabled()Z

    move-result v1

    iget-object v2, v7, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v2}, Labcd/DA;->j6()V

    iget-object v2, v7, Labcd/GA;->VH:Labcd/BA;

    if-nez v2, :cond_5c

    iget-object v2, v7, Labcd/GA;->gn:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, v7, Labcd/GA;->gn:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Labcd/GA;->j6(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v3, v7, Labcd/GA;->tp:Labcd/GA$a;

    invoke-virtual {v3, v2}, Labcd/GA$a;->notifyObservers(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Labcd/GA;->j6(Ljava/lang/String;)V

    goto :goto_5c

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to auto-select key for signing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/xA;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/xA;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No keys configured for signing the file!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    :goto_5c
    :try_start_5c
    new-instance v10, Labcd/NA;

    move-object/from16 v2, p2

    invoke-direct {v10, v2}, Labcd/NA;-><init>(Ljava/io/OutputStream;)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_368

    :try_start_63
    const-string v2, "none"

    iget-object v3, v7, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v3}, Labcd/BA;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_bc

    iget-object v1, v7, Labcd/GA;->v5:Labcd/DA;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/DA;->DW(I)V

    iget-object v1, v7, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v1, v3}, Labcd/DA;->j6(I)V

    invoke-direct {v7, v0, v10}, Labcd/GA;->j6(Ljava/util/Map;Labcd/NA;)V
    :try_end_83
    .catchall {:try_start_63 .. :try_end_83} :catchall_366

    invoke-virtual {v10}, Labcd/NA;->j6()V

    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_bb

    if-eqz v8, :cond_bb

    :try_start_8c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_95

    goto :goto_bb

    :catchall_95
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    :try_start_bc
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_c5
    :goto_c5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_c9
    .catchall {:try_start_bc .. :try_end_c9} :catchall_366

    const-string v6, "META-INF/CERT.RSA"

    const-string v11, "META-INF/CERT.SF"

    const-string v12, "META-INF/MANIFEST.MF"

    if-eqz v5, :cond_104

    :try_start_d1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/IA;

    invoke-virtual {v5}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Labcd/IA;->j3()Z

    move-result v5

    if-nez v5, :cond_c5

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    sget-object v5, Labcd/GA;->DW:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_101

    invoke-virtual {v5, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_c5

    :cond_101
    add-int/lit8 v4, v4, 0x3

    goto :goto_c5

    :cond_104
    iget-object v2, v7, Labcd/GA;->v5:Labcd/DA;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Labcd/DA;->DW(I)V

    iget-object v2, v7, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v2, v3}, Labcd/DA;->j6(I)V

    iget-object v2, v7, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v2}, Labcd/BA;->FH()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v13, 0x36ee80

    add-long/2addr v13, v4

    invoke-direct/range {p0 .. p1}, Labcd/GA;->j6(Ljava/util/Map;)Ljava/util/jar/Manifest;

    move-result-object v2

    iget-boolean v4, v7, Labcd/GA;->Hw:Z
    :try_end_128
    .catchall {:try_start_d1 .. :try_end_128} :catchall_366

    if-eqz v4, :cond_163

    invoke-virtual {v10}, Labcd/NA;->j6()V

    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_162

    if-eqz v8, :cond_162

    :try_start_133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13b
    .catchall {:try_start_133 .. :try_end_13b} :catchall_13c

    goto :goto_162

    :catchall_13c
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_162
    :goto_162
    return-void

    :cond_163
    :try_start_163
    new-instance v4, Labcd/IA;

    invoke-direct {v4, v12}, Labcd/IA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Labcd/IA;->j6(J)V

    invoke-virtual {v4}, Labcd/IA;->J0()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v10, v4}, Labcd/NA;->j6(Labcd/IA;)V

    new-instance v4, Labcd/FA;

    invoke-direct {v4}, Labcd/FA;-><init>()V

    iget-object v5, v7, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v5}, Labcd/BA;->DW()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/FA;->j6(Ljava/security/PrivateKey;)V

    new-instance v5, Labcd/IA;

    invoke-direct {v5, v11}, Labcd/IA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Labcd/IA;->j6(J)V

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v7, v2, v11}, Labcd/GA;->j6(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    iget-boolean v12, v7, Labcd/GA;->Hw:Z
    :try_end_195
    .catchall {:try_start_163 .. :try_end_195} :catchall_366

    if-eqz v12, :cond_1d0

    invoke-virtual {v10}, Labcd/NA;->j6()V

    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1cf

    if-eqz v8, :cond_1cf

    :try_start_1a0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1a8
    .catchall {:try_start_1a0 .. :try_end_1a8} :catchall_1a9

    goto :goto_1cf

    :catchall_1a9
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_1cf
    :goto_1cf
    return-void

    :cond_1d0
    :try_start_1d0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    if-eqz v1, :cond_1ff

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature File: \n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1ff
    invoke-virtual {v5}, Labcd/IA;->J0()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v10, v5}, Labcd/NA;->j6(Labcd/IA;)V

    invoke-virtual {v4, v11}, Labcd/FA;->j6([B)V

    invoke-virtual {v4}, Labcd/FA;->j6()[B

    move-result-object v3

    if-eqz v1, :cond_287

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sig File SHA1: \n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v4, v7, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v4}, Labcd/BA;->FH()Ljava/security/cert/X509Certificate;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Signature Decrypted: \n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_287
    iget-object v1, v7, Labcd/GA;->v5:Labcd/DA;

    const-string v4, "Generating signature block file"

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Labcd/DA;->j6(ILjava/lang/String;)V

    new-instance v1, Labcd/IA;

    invoke-direct {v1, v6}, Labcd/IA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Labcd/IA;->j6(J)V

    iget-object v4, v7, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v4}, Labcd/BA;->Hw()[B

    move-result-object v4

    iget-object v5, v7, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v5}, Labcd/BA;->FH()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v1}, Labcd/IA;->J0()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v7, v4, v3, v5, v6}, Labcd/GA;->j6([B[BLjava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    invoke-virtual {v10, v1}, Labcd/NA;->j6(Labcd/IA;)V

    iget-boolean v1, v7, Labcd/GA;->Hw:Z
    :try_end_2af
    .catchall {:try_start_1d0 .. :try_end_2af} :catchall_366

    if-eqz v1, :cond_2ea

    invoke-virtual {v10}, Labcd/NA;->j6()V

    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_2e9

    if-eqz v8, :cond_2e9

    :try_start_2ba
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2c2
    .catchall {:try_start_2ba .. :try_end_2c2} :catchall_2c3

    goto :goto_2e9

    :catchall_2c3
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_2e9
    :goto_2e9
    return-void

    :cond_2ea
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v4, v10

    move-wide v5, v13

    :try_start_2f0
    invoke-direct/range {v1 .. v6}, Labcd/GA;->j6(Ljava/util/jar/Manifest;Ljava/util/Map;Labcd/NA;J)V

    iget-boolean v0, v7, Labcd/GA;->Hw:Z
    :try_end_2f5
    .catchall {:try_start_2f0 .. :try_end_2f5} :catchall_366

    invoke-virtual {v10}, Labcd/NA;->j6()V

    if-eqz v0, :cond_330

    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_32f

    if-eqz v8, :cond_32f

    :try_start_300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_308
    .catchall {:try_start_300 .. :try_end_308} :catchall_309

    goto :goto_32f

    :catchall_309
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_32f
    :goto_32f
    return-void

    :cond_330
    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_365

    if-eqz v8, :cond_365

    :try_start_336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_33e
    .catchall {:try_start_336 .. :try_end_33e} :catchall_33f

    goto :goto_365

    :catchall_33f
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_365
    :goto_365
    return-void

    :catchall_366
    move-exception v0

    goto :goto_36a

    :catchall_368
    move-exception v0

    const/4 v10, 0x0

    :goto_36a
    move-object v1, v0

    invoke-virtual {v10}, Labcd/NA;->j6()V

    iget-boolean v0, v7, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_3a3

    if-eqz v8, :cond_3a3

    :try_start_374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_37c
    .catchall {:try_start_374 .. :try_end_37c} :catchall_37d

    goto :goto_3a3

    :catchall_37d
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    :cond_3a3
    :goto_3a3
    goto :goto_3a5

    :goto_3a4
    throw v1

    :goto_3a5
    goto :goto_3a4
.end method

.method public j6(Ljava/io/InputStream;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/net/URL;)[B
    .registers 2

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/GA;->j6(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method
