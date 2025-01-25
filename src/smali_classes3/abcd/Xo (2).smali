.class public final Labcd/Xo;
.super Labcd/Gp;


# instance fields
.field private v5:Labcd/Wo;


# direct methods
.method public constructor <init>(Labcd/Wo;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_9

    iput-object p1, p0, Labcd/Xo;->v5:Labcd/Wo;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotations == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 5

    iget-object p1, p0, Labcd/Xo;->v5:Labcd/Wo;

    invoke-virtual {p1}, Labcd/Gp;->we()I

    move-result p1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  annotations_off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_25
    invoke-interface {p2, p1}, Labcd/ku;->writeInt(I)V

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
    .registers 3

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object p1

    iget-object v0, p0, Labcd/Xo;->v5:Labcd/Wo;

    invoke-virtual {p1, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object p1

    check-cast p1, Labcd/Wo;

    iput-object p1, p0, Labcd/Xo;->v5:Labcd/Wo;

    return-void
.end method
