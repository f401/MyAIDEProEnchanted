.class public Labcd/UN;
.super Labcd/SN;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yN;->j6(Ljava/lang/Object;)Labcd/yN;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/SN;-><init>(Labcd/yN;)V

    return-void
.end method
