.class Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/pkcs12/PKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertEntry"
.end annotation


# instance fields
.field final alias:Ljava/lang/String;

.field final cert:Ljava/security/cert/X509Certificate;

.field final keyId:[B


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;[BLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->cert:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->keyId:[B

    iput-object p3, p0, Lsun1/security/pkcs12/PKCS12KeyStore$CertEntry;->alias:Ljava/lang/String;

    return-void
.end method
