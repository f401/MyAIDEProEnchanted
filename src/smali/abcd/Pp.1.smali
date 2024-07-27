.class public final Labcd/Pp;
.super Labcd/tp;


# direct methods
.method public constructor <init>(Labcd/Ks;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/tp;-><init>(Labcd/Ks;)V

    return-void
.end method


# virtual methods
.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->FH:Labcd/wp;

    return-object v0
.end method

.method public VH()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {p0}, Labcd/tp;->aM()Labcd/Ks;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ks;->we()Labcd/Js;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 7

    invoke-virtual {p0}, Labcd/tp;->aM()Labcd/Ks;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ks;->we()Labcd/Js;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  descriptor_idx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method
