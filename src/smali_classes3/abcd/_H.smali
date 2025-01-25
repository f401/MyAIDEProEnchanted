.class public Labcd/_H;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_H$a;
    }
.end annotation


# static fields
.field private static final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljavax/crypto/spec/SecretKeySpec;

.field private final Hw:Ljava/net/ProxySelector;

.field private final VH:Labcd/NJ;

.field private final Zo:I

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Labcd/_H;->j6:Ljava/util/Set;

    const-string v1, "content-type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "content-md5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "date"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "accesskey"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/_H;->DW:Ljava/lang/String;

    if-eqz v0, :cond_c1

    const-string v0, "secretkey"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b5

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Labcd/_H;->FH:Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "acl"

    const-string v1, "PRIVATE"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v0, "private"

    iput-object v0, p0, Labcd/_H;->v5:Ljava/lang/String;

    goto :goto_54

    :cond_35
    const-string v1, "PUBLIC"

    invoke-static {v1, v0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "public-read"

    if-eqz v1, :cond_42

    :goto_3f
    iput-object v2, p0, Labcd/_H;->v5:Ljava/lang/String;

    goto :goto_54

    :cond_42
    const-string v1, "PUBLIC-READ"

    invoke-static {v1, v0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_3f

    :cond_4b
    const-string v1, "PUBLIC_READ"

    invoke-static {v1, v0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    goto :goto_3f

    :goto_54
    :try_start_54
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    const-string v1, "crypto.algorithm"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_62
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_54 .. :try_end_62} :catch_94
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_62} :catch_87

    if-nez v1, :cond_66

    const-string v1, "PBEWithMD5AndDES"

    :cond_66
    :try_start_66
    new-instance v2, Labcd/NJ$b;

    invoke-direct {v2, v1, v0}, Labcd/NJ$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Labcd/_H;->VH:Labcd/NJ;

    goto :goto_72

    :cond_6e
    sget-object v0, Labcd/NJ;->j6:Labcd/NJ;

    iput-object v0, p0, Labcd/_H;->VH:Labcd/NJ;
    :try_end_72
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_66 .. :try_end_72} :catch_94
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_66 .. :try_end_72} :catch_87

    :goto_72
    const-string v0, "httpclient.retry-max"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Labcd/_H;->Zo:I

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p1

    iput-object p1, p0, Labcd/_H;->Hw:Ljava/net/ProxySelector;

    return-void

    :catch_87
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidEncryption:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_94
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidEncryption:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid acl: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->missingSecretkey:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->missingAccesskey:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ce

    :goto_cd
    throw p1

    :goto_ce
    goto :goto_cd
.end method

.method private static DW()Ljava/security/MessageDigest;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->JRELacksMD5Implementation:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;
    .registers 7

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->amazonS3ActionFailedGivingUp:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    iget p1, p0, Labcd/_H;->Zo:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic j6(Labcd/_H;)I
    .registers 1

    iget p0, p0, Labcd/_H;->Zo:I

    return p0
.end method

.method static synthetic j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/_H;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;
    .registers 8

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->amazonS3ActionFailed:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {p3}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const/4 p1, 0x3

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p2, 0x800

    new-array p2, p2, [B

    :cond_33
    :goto_33
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_60

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_5f

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_5f
    return-object v0

    :cond_60
    if-lez v1, :cond_33

    invoke-virtual {p1, p2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_33
.end method

.method private static j6()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_25

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method private static j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const-string p0, ""

    :goto_b
    return-object p0
.end method

.method static synthetic j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "s3.amazonaws.com"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_25

    invoke-static {v0, p3}, Labcd/AK;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_25
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_68

    const/16 p2, 0x3f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_38
    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3f

    goto :goto_68

    :cond_3f
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x3d

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p3}, Labcd/AK;->j6(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_38

    const/16 p3, 0x26

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_68
    :goto_68
    new-instance p2, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Labcd/_H;->Hw:Ljava/net/ProxySelector;

    invoke-static {p3, p2}, Labcd/AK;->j6(Ljava/net/ProxySelector;Ljava/net/URL;)Ljava/net/Proxy;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "User-Agent"

    const-string p3, "jgit/1.0"

    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Date"

    invoke-static {}, Labcd/_H;->j6()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method static j6(Ljava/io/File;)Ljava/util/Properties;
    .registers 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_11
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method static synthetic j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;[BLabcd/RK;Labcd/LE;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;[BLabcd/RK;Labcd/LE;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Labcd/_H;Ljava/net/HttpURLConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/_H;->j6(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;[BLabcd/RK;Labcd/LE;Ljava/lang/String;)V
    .registers 15

    if-nez p5, :cond_4

    sget-object p5, Labcd/vE;->j6:Labcd/vE;

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_16

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p6

    iget-object p6, p6, Lorg/eclipse/jgit/JGitText;->progressMonUploading:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {p6, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    :cond_16
    invoke-static {p3}, Labcd/kK;->j6([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Labcd/RK;->DW()J

    move-result-wide v2

    :goto_1e
    iget v4, p0, Labcd/_H;->Zo:I

    const-string v5, "Writing"

    if-ge v0, v4, :cond_82

    const-string v4, "PUT"

    invoke-direct {p0, v4, p1, p2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const-string v6, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-MD5"

    invoke-virtual {v4, v6, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "x-amz-acl"

    iget-object v7, p0, Labcd/_H;->v5:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Labcd/_H;->VH:Labcd/NJ;

    const-string v7, "x-amz-meta-"

    invoke-virtual {v6, v4, v7}, Labcd/NJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Labcd/_H;->j6(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    long-to-int v6, v2

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-wide/16 v6, 0x400

    div-long v6, v2, v6

    long-to-int v7, v6

    invoke-interface {p5, p6, v7}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    :try_start_5c
    invoke-virtual {p4, v6, p5}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_7a

    invoke-interface {p5}, Labcd/LE;->j6()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-static {v4}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_79

    const/16 v7, 0x1f4

    if-ne v6, v7, :cond_74

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_74
    invoke-direct {p0, v5, p2, v4}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_79
    return-void

    :catchall_7a
    move-exception p1

    invoke-interface {p5}, Labcd/LE;->j6()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    throw p1

    :cond_82
    invoke-direct {p0, v5, p2}, Labcd/_H;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_88

    :goto_87
    throw p1

    :goto_88
    goto :goto_87
.end method

.method private j6(Ljava/net/HttpURLConnection;)V
    .registers 8

    const-string v0, "HmacSHA1"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_114

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "content-md5"

    invoke-static {v2, v1}, Labcd/_H;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "content-type"

    invoke-static {v2, v1}, Labcd/_H;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "date"

    invoke-static {v2, v1}, Labcd/_H;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x10

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_84
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iget-object v2, p0, Labcd/_H;->FH:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Labcd/kK;->j6([B)Ljava/lang/String;

    move-result-object v0
    :try_end_9f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_84 .. :try_end_9f} :catch_d6
    .catch Ljava/security/InvalidKeyException; {:try_start_84 .. :try_end_9f} :catch_bd

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AWS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/_H;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Authorization"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_bd
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidKey:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d6
    move-exception p1

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->noHMACsupport:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_56

    :cond_114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Labcd/_H;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v4}, Labcd/NK;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Labcd/_H;->j6(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Labcd/NK;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Labcd/_H;->j6:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "x-amz-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Labcd/_H;->Zo:I

    const-string v2, "Reading"

    if-ge v0, v1, :cond_36

    const-string v1, "GET"

    invoke-direct {p0, v1, p1, p2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/_H;->j6(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x194

    if-eq v3, v4, :cond_28

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    invoke-direct {p0, v2, p2, v1}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_28
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    iget-object p1, p0, Labcd/_H;->VH:Labcd/NJ;

    const-string p2, "x-amz-meta-"

    invoke-virtual {p1, v1, p2}, Labcd/NJ;->DW(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    return-object v1

    :cond_36
    invoke-direct {p0, v2, p2}, Labcd/_H;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3c

    :goto_3b
    throw p1

    :goto_3c
    goto :goto_3b
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1e
    new-instance v0, Labcd/_H$a;

    invoke-direct {v0, p0, p1, p2}, Labcd/_H$a;-><init>(Labcd/_H;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-virtual {v0}, Labcd/_H$a;->j6()V

    iget-boolean p1, v0, Labcd/_H$a;->Hw:Z

    if-nez p1, :cond_23

    iget-object p1, v0, Labcd/_H$a;->j6:Ljava/util/List;

    return-object p1
.end method

.method public j6(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Labcd/_H;->VH:Labcd/NJ;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/NJ;->j6(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 14

    invoke-static {}, Labcd/_H;->DW()Ljava/security/MessageDigest;

    move-result-object v7

    new-instance v8, Labcd/ZH;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Labcd/ZH;-><init>(Labcd/_H;Ljava/lang/String;Ljava/lang/String;Ljava/security/MessageDigest;Labcd/LE;Ljava/lang/String;)V

    iget-object p1, p0, Labcd/_H;->VH:Labcd/NJ;

    new-instance p2, Ljava/security/DigestOutputStream;

    invoke-direct {p2, v8, v7}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-virtual {p1, p2}, Labcd/NJ;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Labcd/_H;->Zo:I

    const-string v2, "Deletion"

    if-ge v0, v1, :cond_25

    const-string v1, "DELETE"

    invoke-direct {p0, v1, p1, p2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/_H;->j6(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_24

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    invoke-direct {p0, v2, p2, v1}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_24
    return-void

    :cond_25
    invoke-direct {p0, v2, p2}, Labcd/_H;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 11

    iget-object v0, p0, Labcd/_H;->VH:Labcd/NJ;

    sget-object v1, Labcd/NJ;->j6:Labcd/NJ;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_12
    invoke-static {}, Labcd/_H;->DW()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Labcd/kK;->j6([B)Ljava/lang/String;

    move-result-object v0

    array-length v1, p3

    const/4 v2, 0x0

    :goto_20
    iget v3, p0, Labcd/_H;->Zo:I

    const-string v4, "Writing"

    if-ge v2, v3, :cond_70

    const-string v3, "PUT"

    invoke-direct {p0, v3, p1, p2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    const-string v5, "Content-Length"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-MD5"

    invoke-virtual {v3, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "x-amz-acl"

    iget-object v6, p0, Labcd/_H;->v5:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Labcd/_H;->j6(Ljava/net/HttpURLConnection;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    :try_start_50
    invoke-virtual {v5, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_6b

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-static {v3}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_6a

    const/16 v6, 0x1f4

    if-ne v5, v6, :cond_65

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_65
    invoke-direct {p0, v4, p2, v3}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6a
    return-void

    :catchall_6b
    move-exception p1

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw p1

    :cond_70
    invoke-direct {p0, v4, p2}, Labcd/_H;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_76

    :goto_75
    throw p1

    :goto_76
    goto :goto_75
.end method
