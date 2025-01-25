.class public Labcd/UN;
.super Labcd/SN;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Labcd/yN;->j6(Ljava/lang/Object;)Labcd/yN;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/SN;-><init>(Labcd/yN;)V

    return-void
.end method
