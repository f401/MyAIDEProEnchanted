.class public Lorg/spongycastle/jcajce/provider/digest/a;
.super Ljava/security/MessageDigest;


# instance fields
.field protected j6:Labcd/sO;


# direct methods
.method protected constructor <init>(Labcd/sO;)V
    .registers 3

    invoke-interface {p1}, Labcd/sO;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .registers 4

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    invoke-interface {v0}, Labcd/sO;->DW()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Labcd/sO;->j6([BI)I

    return-object v0
.end method

.method public engineReset()V
    .registers 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    invoke-interface {v0}, Labcd/sO;->reset()V

    return-void
.end method

.method public engineUpdate(B)V
    .registers 3

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    invoke-interface {v0, p1}, Labcd/sO;->j6(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 5

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    invoke-interface {v0, p1, p2, p3}, Labcd/sO;->update([BII)V

    return-void
.end method
