.class public Labcd/nO;
.super Ljava/lang/Object;


# instance fields
.field private j6:Labcd/lO;


# direct methods
.method public constructor <init>(Labcd/AP;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/lO;

    invoke-direct {v0, p1}, Labcd/lO;-><init>(Labcd/AP;)V

    iput-object v0, p0, Labcd/nO;->j6:Labcd/lO;

    return-void
.end method


# virtual methods
.method public DW(Labcd/WN;)Labcd/nO;
    .registers 3

    iget-object v0, p0, Labcd/nO;->j6:Labcd/lO;

    invoke-virtual {v0, p1}, Labcd/lO;->DW(Labcd/WN;)Labcd/lO;

    return-object p0
.end method

.method public j6(Labcd/vP;Labcd/SN;)Labcd/kO;
    .registers 4

    iget-object v0, p0, Labcd/nO;->j6:Labcd/lO;

    invoke-virtual {v0, p1, p2}, Labcd/lO;->j6(Labcd/vP;Labcd/SN;)Labcd/kO;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/vP;Ljava/security/cert/X509Certificate;)Labcd/kO;
    .registers 4

    new-instance v0, Labcd/UN;

    invoke-direct {v0, p2}, Labcd/UN;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p1, v0}, Labcd/nO;->j6(Labcd/vP;Labcd/SN;)Labcd/kO;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/vP;[B)Labcd/kO;
    .registers 4

    iget-object v0, p0, Labcd/nO;->j6:Labcd/lO;

    invoke-virtual {v0, p1, p2}, Labcd/lO;->j6(Labcd/vP;[B)Labcd/kO;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/WN;)Labcd/nO;
    .registers 3

    iget-object v0, p0, Labcd/nO;->j6:Labcd/lO;

    invoke-virtual {v0, p1}, Labcd/lO;->j6(Labcd/WN;)Labcd/lO;

    return-object p0
.end method

.method public j6(Z)Labcd/nO;
    .registers 3

    iget-object v0, p0, Labcd/nO;->j6:Labcd/lO;

    invoke-virtual {v0, p1}, Labcd/lO;->j6(Z)Labcd/lO;

    return-object p0
.end method
