.class public final Labcd/bp;
.super Labcd/up;


# instance fields
.field private final DW:Labcd/Ks;

.field private final FH:I

.field private final Hw:Labcd/Ks;

.field private final VH:Labcd/ap;

.field private final Zo:Labcd/Js;

.field private gn:Labcd/kp;

.field private u7:Labcd/Zo;

.field private v5:Labcd/Rp;


# direct methods
.method public constructor <init>(Labcd/Ks;ILabcd/Ks;Labcd/Ss;Labcd/Js;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    iput-object p1, p0, Labcd/bp;->DW:Labcd/Ks;

    iput p2, p0, Labcd/bp;->FH:I

    iput-object p3, p0, Labcd/bp;->Hw:Labcd/Ks;

    invoke-interface {p4}, Labcd/Ss;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Labcd/bp;->v5:Labcd/Rp;

    iput-object p5, p0, Labcd/bp;->Zo:Labcd/Js;

    new-instance v0, Labcd/ap;

    invoke-direct {v0, p1}, Labcd/ap;-><init>(Labcd/Ks;)V

    iput-object v0, p0, Labcd/bp;->VH:Labcd/ap;

    iput-object v1, p0, Labcd/bp;->gn:Labcd/kp;

    new-instance v0, Labcd/Zo;

    invoke-direct {v0}, Labcd/Zo;-><init>()V

    iput-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    return-void

    :cond_0
    new-instance v0, Labcd/Rp;

    invoke-direct {v0, p4}, Labcd/Rp;-><init>(Labcd/Ss;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "interfaces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(Labcd/np;)V
    .registers 3

    iget-object v0, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v0, p1}, Labcd/ap;->DW(Labcd/np;)V

    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->VH:Labcd/wp;

    return-object v0
.end method

.method public Mr()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/bp;->DW:Labcd/Ks;

    return-object v0
.end method

.method public VH()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public aM()Labcd/Ss;
    .registers 2

    iget-object v0, p0, Labcd/bp;->v5:Labcd/Rp;

    if-nez v0, :cond_0

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/Rp;->j3()Labcd/Ss;

    move-result-object v0

    goto :goto_0
.end method

.method public j3()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/bp;->Hw:Labcd/Ks;

    return-object v0
.end method

.method public j6(Labcd/Gs;Labcd/Jr;)V
    .registers 4

    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v0, p1, p2}, Labcd/Zo;->j6(Labcd/Gs;Labcd/Jr;)V

    return-void
.end method

.method public j6(Labcd/Gs;Labcd/Kr;)V
    .registers 4

    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v0, p1, p2}, Labcd/Zo;->j6(Labcd/Gs;Labcd/Kr;)V

    return-void
.end method

.method public j6(Labcd/Jr;)V
    .registers 3

    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v0, p1}, Labcd/Zo;->j6(Labcd/Jr;)V

    return-void
.end method

.method public j6(Labcd/jp;)V
    .registers 9

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jp;->j6()Labcd/Fp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v2

    invoke-virtual {p1}, Labcd/jp;->QX()Labcd/Fp;

    move-result-object v3

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v4

    iget-object v5, p0, Labcd/bp;->DW:Labcd/Ks;

    invoke-virtual {v1, v5}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    iget-object v5, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v5}, Labcd/ap;->Mr()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Labcd/jp;->DW()Labcd/Fp;

    move-result-object v5

    iget-object v6, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v5, v6}, Labcd/Fp;->j6(Labcd/Gp;)V

    iget-object v5, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v5}, Labcd/ap;->j3()Labcd/ps;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Labcd/kp;

    invoke-direct {v6, v5}, Labcd/kp;-><init>(Labcd/ps;)V

    invoke-virtual {v0, v6}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/kp;

    iput-object v0, p0, Labcd/bp;->gn:Labcd/kp;

    :cond_0
    iget-object v0, p0, Labcd/bp;->Hw:Labcd/Ks;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    :cond_1
    iget-object v0, p0, Labcd/bp;->v5:Labcd/Rp;

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Rp;

    iput-object v0, p0, Labcd/bp;->v5:Labcd/Rp;

    :cond_2
    iget-object v0, p0, Labcd/bp;->Zo:Labcd/Js;

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    :cond_3
    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v0}, Labcd/Zo;->j3()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v0}, Labcd/Zo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v2, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Zo;

    iput-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v2, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    goto :goto_0
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 16

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v4

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    iget-object v1, p0, Labcd/bp;->DW:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v6

    iget-object v1, p0, Labcd/bp;->Hw:Labcd/Ks;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Labcd/bp;->v5:Labcd/Rp;

    invoke-static {v1}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v7

    iget-object v1, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v1}, Labcd/Zo;->j3()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Labcd/bp;->Zo:Labcd/Js;

    if-nez v3, :cond_2

    :goto_2
    iget-object v3, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v3}, Labcd/ap;->Mr()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Labcd/bp;->gn:Labcd/kp;

    invoke-static {v5}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v8

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/bp;->DW:Labcd/Ks;

    invoke-virtual {v5}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  class_idx:           "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  access_flags:        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Labcd/bp;->FH:I

    invoke-static {v5}, Labcd/Mr;->j6(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  superclass_idx:      "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/bp;->Hw:Labcd/Ks;

    const-string v5, "<none>"

    if-nez v4, :cond_4

    const-string v4, "<none>"

    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v4, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  interfaces_off:      "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v9, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    if-eqz v7, :cond_5

    iget-object v4, p0, Labcd/bp;->v5:Labcd/Rp;

    invoke-virtual {v4}, Labcd/Rp;->j3()Labcd/Ss;

    move-result-object v9

    invoke-interface {v9}, Labcd/Ss;->size()I

    move-result v10

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v4}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v12

    invoke-virtual {v12}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v12, v11}, Labcd/Lt;->j6(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_0
    invoke-virtual {v0, v1}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v1}, Labcd/Gp;->we()I

    move-result v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v2

    iget-object v3, p0, Labcd/bp;->Zo:Labcd/Js;

    invoke-virtual {v2, v3}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v2

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v3}, Labcd/Gp;->we()I

    move-result v3

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v4}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  source_file_idx:     "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/bp;->Zo:Labcd/Js;

    if-nez v4, :cond_7

    move-object v4, v5

    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  annotations_off:     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  class_data_off:      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  static_values_off:   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_6
    invoke-interface {p2, v6}, Labcd/ku;->writeInt(I)V

    iget v4, p0, Labcd/bp;->FH:I

    invoke-interface {p2, v4}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v7}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v8}, Labcd/ku;->writeInt(I)V

    return-void

    :cond_7
    invoke-virtual {v4}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    goto :goto_6
.end method

.method public j6(Labcd/lp;)V
    .registers 3

    iget-object v0, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v0, p1}, Labcd/ap;->j6(Labcd/lp;)V

    return-void
.end method

.method public j6(Labcd/lp;Labcd/ms;)V
    .registers 4

    iget-object v0, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v0, p1, p2}, Labcd/ap;->j6(Labcd/lp;Labcd/ms;)V

    return-void
.end method

.method public j6(Labcd/np;)V
    .registers 3

    iget-object v0, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v0, p1}, Labcd/ap;->j6(Labcd/np;)V

    return-void
.end method

.method public j6(Labcd/ws;Labcd/Jr;)V
    .registers 4

    iget-object v0, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v0, p1, p2}, Labcd/Zo;->j6(Labcd/ws;Labcd/Jr;)V

    return-void
.end method
