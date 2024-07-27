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
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Map",
            "<",
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
    .registers 4

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/GA;->u7:Ljava/util/Map;

    new-instance v0, Labcd/GA$a;

    invoke-direct {v0}, Labcd/GA$a;-><init>()V

    iput-object v0, p0, Labcd/GA;->tp:Labcd/GA$a;

    iget-object v0, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v1, "aa9852bc5a53272ac8031d49b65e4b0e"

    const-string v2, "media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v1, "e60418c4b638f20d0721e115674ca11f"

    const-string v2, "platform"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v1, "3e24e49741b60c215c010dc6048fca7d"

    const-string v2, "shared"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/GA;->u7:Ljava/util/Map;

    const-string v1, "dab2cead827ef5313f28e22b6fa8479f"

    const-string v2, "testkey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j6()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/GA;->j6:Labcd/tA;

    if-nez v0, :cond_0

    const-class v0, Labcd/GA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/GA;->j6:Labcd/tA;

    :cond_0
    sget-object v0, Labcd/GA;->j6:Labcd/tA;

    return-object v0
.end method

.method private j6([BLjava/lang/String;)Ljava/security/spec/KeySpec;
    .registers 8

    :try_start_0
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p1}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    const-string v2, "signapk: Password for private key may be bad."

    invoke-interface {v1, v2}, Labcd/tA;->j6(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Ljava/util/Map;)Ljava/util/jar/Manifest;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;)",
            "Ljava/util/jar/Manifest;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v11, 0x0

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/IA;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v0}, Labcd/IA;->u7()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    :goto_0
    new-instance v3, Ljava/util/jar/Manifest;

    invoke-direct {v3}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    :goto_1
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const/16 v0, 0x200

    new-array v5, v0, [B

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v6

    invoke-interface {v6}, Labcd/tA;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v7

    const-string v8, "Manifest entries:"

    invoke-interface {v7, v8}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/IA;

    iget-boolean v8, p0, Labcd/GA;->Hw:Z

    if-eqz v8, :cond_5

    :cond_2
    return-object v3

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    const-string v4, "Manifest-Version"

    const-string v5, "1.0"

    invoke-virtual {v0, v4, v5}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "Created-By"

    const-string v5, "1.0 (Android SignApk)"

    invoke-virtual {v0, v4, v5}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_6

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v9

    invoke-interface {v9, v8}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Labcd/IA;->j3()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "META-INF/MANIFEST.MF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "META-INF/CERT.SF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "META-INF/CERT.RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Labcd/GA;->DW:Ljava/util/regex/Pattern;

    if-eqz v9, :cond_7

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_7
    iget-object v9, p0, Labcd/GA;->v5:Labcd/DA;

    const-string v10, "Generating manifest"

    invoke-virtual {v9, v11, v10}, Labcd/DA;->j6(ILjava/lang/String;)V

    invoke-virtual {v0}, Labcd/IA;->u7()Ljava/io/InputStream;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_8

    invoke-virtual {v4, v5, v11, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_a

    invoke-virtual {v1, v8}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0, v9}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    :goto_4
    if-nez v0, :cond_9

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    :cond_9
    const-string v9, "SHA1-Digest"

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Labcd/yA;->j6([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    move-object v0, v2

    goto :goto_4
.end method

.method private j6(Ljava/util/Map;Labcd/NA;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;",
            "Labcd/NA;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/IA;

    iget-boolean v4, p0, Labcd/GA;->Hw:Z

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Labcd/GA;->v5:Labcd/DA;

    const-string v5, "Copying zip entry %d of %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Labcd/DA;->j6(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0}, Labcd/NA;->j6(Labcd/IA;)V

    goto :goto_0
.end method

.method private j6(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .registers 11

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

    move-result-object v2

    new-instance v3, Ljava/io/PrintStream;

    new-instance v0, Ljava/security/DigestOutputStream;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    const/4 v1, 0x1

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v1, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA1-Digest-Manifest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Labcd/yA;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-boolean v1, p0, Labcd/GA;->Hw:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v5, 0x0

    const-string v6, "Generating signature file"

    invoke-virtual {v1, v5, v6}, Labcd/DA;->j6(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA1-Digest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Labcd/yA;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0
.end method

.method private j6(Ljava/util/jar/Manifest;Ljava/util/Map;Labcd/NA;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Manifest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;",
            "Labcd/NA;",
            "J)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v5, p0, Labcd/GA;->Hw:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Labcd/GA;->v5:Labcd/DA;

    const-string v6, "Copying zip entry %d of %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Labcd/DA;->j6(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/IA;

    invoke-virtual {v0, p4, p5}, Labcd/IA;->j6(J)V

    invoke-virtual {p3, v0}, Labcd/NA;->j6(Labcd/IA;)V

    goto :goto_0
.end method

.method private j6([B[BLjava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
    .registers 10

    if-eqz p1, :cond_0

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "kellinwood.sigblock.SignatureBlockWriter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "writeSignatureBlock"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [B

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/io/OutputStream;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Labcd/tA;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke writeSignatureBlock(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "writeSignatureBlock() method not found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public DW(Ljava/net/URL;)Ljava/security/cert/X509Certificate;
    .registers 4

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iput-object p1, p0, Labcd/GA;->gn:Ljava/lang/String;

    iget-object v0, p0, Labcd/GA;->gn:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v0}, Labcd/DA;->j6()V

    iget-object v0, p0, Labcd/GA;->gn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Labcd/GA;->j6(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected j6(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v12, 0x5b2

    const/4 v11, 0x1

    const/4 v4, 0x0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v5

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "META-INF/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ".RSA"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/IA;

    invoke-virtual {v0}, Labcd/IA;->v5()[B

    move-result-object v0

    array-length v7, v0

    if-ge v7, v12, :cond_4

    :cond_2
    const-string v0, "auto-testkey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v5, :cond_3

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Falling back to key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_3
    const-string p1, "testkey"

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0, v4, v12}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v1

    move v0, v4

    :goto_2
    if-ge v0, v7, :cond_5

    const-string v8, "%02x"

    new-array v9, v11, [Ljava/lang/Object;

    aget-byte v10, v1, v0

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Labcd/GA;->u7:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v5, :cond_6

    if-eqz v0, :cond_7

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v2

    const-string v7, "Auto-determined key=%s using md5=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v1, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v0, :cond_8

    move-object p1, v0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v2

    const-string v7, "Auto key determination failed for md5=%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v2, v0

    goto/16 :goto_1

    :cond_9
    const-string v0, "auto-none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v5, :cond_a

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v0

    const-string v1, "Unable to determine key, returning: none"

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_a
    const-string p1, "none"

    goto/16 :goto_0

    :cond_b
    move-object p1, v3

    goto/16 :goto_0
.end method

.method public j6(Ljava/net/URL;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6

    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p0, v1}, Labcd/GA;->j6(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2, p2}, Labcd/GA;->j6([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/GA;->Zo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/BA;

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    iget-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Labcd/BA;

    invoke-direct {v0}, Labcd/BA;-><init>()V

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    iget-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v0, p1}, Labcd/BA;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/GA;->Zo:Ljava/util/Map;

    iget-object v1, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v1, 0x1

    const-string v2, "Loading certificate and private key"

    invoke-virtual {v0, v1, v2}, Labcd/DA;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/assets/keys/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pk8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Labcd/GA;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Labcd/GA;->VH:Labcd/BA;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Labcd/GA;->j6(Ljava/net/URL;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/BA;->j6(Ljava/security/PrivateKey;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/assets/keys/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".x509.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Labcd/GA;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {p0, v0}, Labcd/GA;->DW(Ljava/net/URL;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/BA;->j6(Ljava/security/cert/X509Certificate;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/assets/keys/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sbt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Labcd/GA;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {p0, v0}, Labcd/GA;->j6(Ljava/net/URL;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/BA;->j6([B)V

    goto/16 :goto_0
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

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v0}, Labcd/DA;->j6()V

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v1, 0x1

    const-string v2, "Parsing the input\'s central directory"

    invoke-virtual {v0, v1, v2}, Labcd/DA;->j6(ILjava/lang/String;)V

    invoke-static {p1}, Labcd/LA;->j6(Ljava/lang/String;)Labcd/LA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/LA;->j6()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p2}, Labcd/GA;->j6(Ljava/util/Map;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input and output files are the same.  Specify a different name for the output."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[B)V
    .registers 6

    new-instance v0, Labcd/BA;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/BA;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[B)V

    iput-object v0, p0, Labcd/GA;->VH:Labcd/BA;

    return-void
.end method

.method public j6(Ljava/util/Map;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v1

    invoke-interface {v1}, Labcd/tA;->isDebugEnabled()Z

    move-result v2

    iget-object v1, p0, Labcd/GA;->v5:Labcd/DA;

    invoke-virtual {v1}, Labcd/DA;->j6()V

    iget-object v1, p0, Labcd/GA;->VH:Labcd/BA;

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/GA;->gn:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Labcd/GA;->gn:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Labcd/GA;->j6(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Labcd/GA;->tp:Labcd/GA$a;

    invoke-virtual {v3, v1}, Labcd/GA$a;->notifyObservers(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Labcd/GA;->j6(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v3, Labcd/NA;

    invoke-direct {v3, p2}, Labcd/NA;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "none"

    iget-object v4, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v4}, Labcd/BA;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/DA;->DW(I)V

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/DA;->j6(I)V

    invoke-direct {p0, p1, v3}, Labcd/GA;->j6(Ljava/util/Map;Labcd/NA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to auto-select key for signing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/xA;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/xA;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No keys configured for signing the file!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
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

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/IA;

    invoke-virtual {v0}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Labcd/IA;->j3()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "META-INF/CERT.SF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "META-INF/CERT.RSA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Labcd/GA;->DW:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_6

    sget-object v0, Labcd/GA;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Labcd/DA;->DW(I)V

    iget-object v0, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/DA;->j6(I)V

    const-wide/32 v0, 0x36ee80

    iget-object v4, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v4}, Labcd/BA;->FH()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-direct {p0, p1}, Labcd/GA;->j6(Ljava/util/Map;)Ljava/util/jar/Manifest;

    move-result-object v1

    iget-boolean v0, p0, Labcd/GA;->Hw:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
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

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_5
    new-instance v0, Labcd/IA;

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v6}, Labcd/IA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Labcd/IA;->j6(J)V

    invoke-virtual {v0}, Labcd/IA;->J0()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Labcd/NA;->j6(Labcd/IA;)V

    new-instance v0, Labcd/FA;

    invoke-direct {v0}, Labcd/FA;-><init>()V

    iget-object v6, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v6}, Labcd/BA;->DW()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-virtual {v0, v6}, Labcd/FA;->j6(Ljava/security/PrivateKey;)V

    new-instance v6, Labcd/IA;

    const-string v7, "META-INF/CERT.SF"

    invoke-direct {v6, v7}, Labcd/IA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Labcd/IA;->j6(J)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v1, v7}, Labcd/GA;->j6(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    iget-boolean v8, p0, Labcd/GA;->Hw:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
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

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    if-eqz v2, :cond_a

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature File: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v6}, Labcd/IA;->J0()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v6}, Labcd/NA;->j6(Labcd/IA;)V

    invoke-virtual {v0, v7}, Labcd/FA;->j6([B)V

    invoke-virtual {v0}, Labcd/FA;->j6()[B

    move-result-object v0

    if-eqz v2, :cond_b

    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sig File SHA1: \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Labcd/tA;->FH(Ljava/lang/String;)V

    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v6, 0x2

    iget-object v7, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v7}, Labcd/BA;->FH()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signature Decrypted: \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/zA;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_b
    iget-object v2, p0, Labcd/GA;->v5:Labcd/DA;

    const/4 v6, 0x0

    const-string v7, "Generating signature block file"

    invoke-virtual {v2, v6, v7}, Labcd/DA;->j6(ILjava/lang/String;)V

    new-instance v2, Labcd/IA;

    const-string v6, "META-INF/CERT.RSA"

    invoke-direct {v2, v6}, Labcd/IA;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Labcd/IA;->j6(J)V

    iget-object v6, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v6}, Labcd/BA;->Hw()[B

    move-result-object v6

    iget-object v7, p0, Labcd/GA;->VH:Labcd/BA;

    invoke-virtual {v7}, Labcd/BA;->FH()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v2}, Labcd/IA;->J0()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {p0, v6, v0, v7, v8}, Labcd/GA;->j6([B[BLjava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Labcd/NA;->j6(Labcd/IA;)V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
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

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, p0

    move-object v2, p1

    :try_start_9
    invoke-direct/range {v0 .. v5}, Labcd/GA;->j6(Ljava/util/jar/Manifest;Ljava/util/Map;Labcd/NA;J)V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
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

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v0, p0, Labcd/GA;->Hw:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :catch_5
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

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v3}, Labcd/NA;->j6()V

    iget-boolean v1, p0, Labcd/GA;->Hw:Z

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_e
    :goto_3
    throw v0

    :catch_6
    move-exception v1

    invoke-static {}, Labcd/GA;->j6()Labcd/tA;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Labcd/tA;->DW(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public j6(Ljava/io/InputStream;)[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x800

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/net/URL;)[B
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/GA;->j6(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method
