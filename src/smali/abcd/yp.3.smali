.class public abstract Labcd/yp;
.super Labcd/tp;


# instance fields
.field private final FH:Labcd/Fs;


# direct methods
.method public constructor <init>(Labcd/Fs;)V
    .registers 3

    invoke-virtual {p1}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/tp;-><init>(Labcd/Ks;)V

    iput-object p1, p0, Labcd/yp;->FH:Labcd/Fs;

    return-void
.end method


# virtual methods
.method protected abstract DW(Labcd/jp;)I
.end method

.method protected abstract Mr()Ljava/lang/String;
.end method

.method public VH()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final j3()Labcd/Fs;
    .registers 2

    iget-object v0, p0, Labcd/yp;->FH:Labcd/Fs;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-super {p0, p1}, Labcd/tp;->j6(Labcd/jp;)V

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {p0}, Labcd/yp;->j3()Labcd/Fs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    return-void
.end method

.method public final j6(Labcd/jp;Labcd/Lt;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v1

    iget-object v2, p0, Labcd/yp;->FH:Labcd/Fs;

    invoke-virtual {v2}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/tp;->aM()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v0

    invoke-virtual {v2}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v1

    invoke-virtual {p0, p1}, Labcd/yp;->DW(Labcd/jp;)I

    move-result v2

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/yp;->FH:Labcd/Fs;

    invoke-virtual {v4}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/yp;->Mr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "  %-10s %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  name_idx:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method
