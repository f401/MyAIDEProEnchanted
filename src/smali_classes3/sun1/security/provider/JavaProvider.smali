.class public Lsun1/security/provider/JavaProvider;
.super Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "JKS"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "Java KeyStore"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "KeyStore.JKS"

    const-class v1, Lsun1/security/provider/JavaKeyStore$JKS;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun1/security/provider/JavaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyStore.CaseExactJKS"

    const-class v1, Lsun1/security/provider/JavaKeyStore$CaseExactJKS;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun1/security/provider/JavaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyStore.PKCS12"

    const-class v1, Lsun1/security/pkcs12/PKCS12KeyStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsun1/security/provider/JavaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keystore.type"

    const-string v1, "jks"

    invoke-static {v0, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
