.class Labcd/ZP;
.super Ljava/security/cert/CertificateEncodingException;


# instance fields
.field j6:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Labcd/ZP;->j6:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Labcd/ZP;->j6:Ljava/lang/Throwable;

    return-object v0
.end method
