.class Labcd/Mz;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final j6:[Ljava/security/cert/X509Certificate;


# instance fields
.field private final DW:[Ljavax/net/ssl/TrustManager;

.field private final FH:Labcd/Nz;

.field private final Hw:J

.field private final Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Labcd/Mz;->j6:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Labcd/Nz;Labcd/Lz;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/Mz;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/Mz;->Zo:Ljava/util/Set;

    invoke-direct {p0, p1}, Labcd/Mz;->j6(Labcd/Nz;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    iput-object v0, p0, Labcd/Mz;->DW:[Ljavax/net/ssl/TrustManager;

    iput-object p1, p0, Labcd/Mz;->FH:Labcd/Nz;

    invoke-interface {p2}, Labcd/Lz;->Hw()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Mz;->Hw:J

    invoke-interface {p2}, Labcd/Lz;->FH()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_29
    if-ge v0, p2, :cond_39

    aget-object v1, p1, v0

    iget-object v2, p0, Labcd/Mz;->v5:Ljava/util/List;

    invoke-direct {p0, v1}, Labcd/Mz;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_39
    return-void
.end method

.method private j6([Ljava/security/cert/X509Certificate;)V
    .registers 10

    iget-wide v0, p0, Labcd/Mz;->Hw:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_47

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/Mz;->Hw:J

    sub-long/2addr v0, v2

    const-wide v2, 0x39ef8b000L

    cmp-long v4, v0, v2

    if-lez v4, :cond_47

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate pins are stale, ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Labcd/Mz;->Hw:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis) falling back to system trust."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Fabric"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    iget-object v0, p0, Labcd/Mz;->FH:Labcd/Nz;

    invoke-static {p1, v0}, Labcd/Cz;->j6([Ljava/security/cert/X509Certificate;Labcd/Nz;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v0, :cond_5d

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Labcd/Mz;->j6(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_5a

    return-void

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_5d
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "No valid pins found in chain!"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method private j6([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Labcd/Mz;->DW:[Ljavax/net/ssl/TrustManager;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private j6(Ljava/security/cert/X509Certificate;)Z
    .registers 4

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iget-object v0, p0, Labcd/Mz;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_28} :catch_2e

    if-eqz v1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1

    :catch_2e
    move-exception p1

    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_36

    :goto_35
    throw v0

    :goto_36
    goto :goto_35
.end method

.method private j6(Ljava/lang/String;)[B
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method private j6(Labcd/Nz;)[Ljavax/net/ssl/TrustManager;
    .registers 3

    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    iget-object p1, p1, Labcd/Nz;->j6:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_17
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_17
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Client certificates not supported!"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Labcd/Mz;->Zo:Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0, p1, p2}, Labcd/Mz;->j6([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Labcd/Mz;->j6([Ljava/security/cert/X509Certificate;)V

    iget-object p2, p0, Labcd/Mz;->Zo:Ljava/util/Set;

    aget-object p1, p1, v1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    sget-object v0, Labcd/Mz;->j6:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
