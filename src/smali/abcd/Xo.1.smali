.class public final Labcd/Xo;
.super Labcd/Gp;


# instance fields
.field private v5:Labcd/Wo;


# direct methods
.method public constructor <init>(Labcd/Wo;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Xo;->v5:Labcd/Wo;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 6

    iget-object v0, p0, Labcd/Xo;->v5:Labcd/Wo;

    invoke-virtual {v0}, Labcd/Gp;->we()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  annotations_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->a8:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Xo;->v5:Labcd/Wo;

    invoke-virtual {v0}, Labcd/Wo;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v0

    iget-object v1, p0, Labcd/Xo;->v5:Labcd/Wo;

    invoke-virtual {v0, v1}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Wo;

    iput-object v0, p0, Labcd/Xo;->v5:Labcd/Wo;

    return-void
.end method
