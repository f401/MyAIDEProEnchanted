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
    .registers 6

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_38

    if-eqz p4, :cond_30

    iput-object p1, p0, Labcd/bp;->DW:Labcd/Ks;

    iput p2, p0, Labcd/bp;->FH:I

    iput-object p3, p0, Labcd/bp;->Hw:Labcd/Ks;

    invoke-interface {p4}, Labcd/Ss;->size()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_16

    move-object p2, p3

    goto :goto_1b

    :cond_16
    new-instance p2, Labcd/Rp;

    invoke-direct {p2, p4}, Labcd/Rp;-><init>(Labcd/Ss;)V

    :goto_1b
    iput-object p2, p0, Labcd/bp;->v5:Labcd/Rp;

    iput-object p5, p0, Labcd/bp;->Zo:Labcd/Js;

    new-instance p2, Labcd/ap;

    invoke-direct {p2, p1}, Labcd/ap;-><init>(Labcd/Ks;)V

    iput-object p2, p0, Labcd/bp;->VH:Labcd/ap;

    iput-object p3, p0, Labcd/bp;->gn:Labcd/kp;

    new-instance p1, Labcd/Zo;

    invoke-direct {p1}, Labcd/Zo;-><init>()V

    iput-object p1, p0, Labcd/bp;->u7:Labcd/Zo;

    return-void

    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interfaces == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "thisClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-nez v0, :cond_7

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    return-object v0

    :cond_7
    invoke-virtual {v0}, Labcd/Rp;->j3()Labcd/Ss;

    move-result-object v0

    return-object v0
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
    .registers 8

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->j6()Labcd/Fp;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v2

    invoke-virtual {p1}, Labcd/jp;->QX()Labcd/Fp;

    move-result-object v3

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v4

    iget-object v5, p0, Labcd/bp;->DW:Labcd/Ks;

    invoke-virtual {v0, v5}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    iget-object v5, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v5}, Labcd/ap;->Mr()Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {p1}, Labcd/jp;->DW()Labcd/Fp;

    move-result-object p1

    iget-object v5, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {p1, v5}, Labcd/Fp;->j6(Labcd/Gp;)V

    iget-object p1, p0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {p1}, Labcd/ap;->j3()Labcd/ps;

    move-result-object p1

    if-eqz p1, :cond_3f

    new-instance v5, Labcd/kp;

    invoke-direct {v5, p1}, Labcd/kp;-><init>(Labcd/ps;)V

    invoke-virtual {v1, v5}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object p1

    check-cast p1, Labcd/kp;

    iput-object p1, p0, Labcd/bp;->gn:Labcd/kp;

    :cond_3f
    iget-object p1, p0, Labcd/bp;->Hw:Labcd/Ks;

    if-eqz p1, :cond_46

    invoke-virtual {v0, p1}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    :cond_46
    iget-object p1, p0, Labcd/bp;->v5:Labcd/Rp;

    if-eqz p1, :cond_52

    invoke-virtual {v3, p1}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object p1

    check-cast p1, Labcd/Rp;

    iput-object p1, p0, Labcd/bp;->v5:Labcd/Rp;

    :cond_52
    iget-object p1, p0, Labcd/bp;->Zo:Labcd/Js;

    if-eqz p1, :cond_59

    invoke-virtual {v4, p1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    :cond_59
    iget-object p1, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {p1}, Labcd/Zo;->j3()Z

    move-result p1

    if-nez p1, :cond_79

    iget-object p1, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {p1}, Labcd/Zo;->Mr()Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v2, p1}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object p1

    check-cast p1, Labcd/Zo;

    iput-object p1, p0, Labcd/bp;->u7:Labcd/Zo;

    goto :goto_79

    :cond_74
    iget-object p1, p0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v2, p1}, Labcd/Fp;->j6(Labcd/Gp;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Labcd/Lt;->Hw()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v3

    iget-object v4, v0, Labcd/bp;->DW:Labcd/Ks;

    invoke-virtual {v3, v4}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v4

    iget-object v5, v0, Labcd/bp;->Hw:Labcd/Ks;

    const/4 v6, -0x1

    if-nez v5, :cond_19

    const/4 v3, -0x1

    goto :goto_1d

    :cond_19
    invoke-virtual {v3, v5}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v3

    :goto_1d
    iget-object v5, v0, Labcd/bp;->v5:Labcd/Rp;

    invoke-static {v5}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v5

    iget-object v7, v0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v7}, Labcd/Zo;->j3()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2e

    const/4 v7, 0x0

    goto :goto_34

    :cond_2e
    iget-object v7, v0, Labcd/bp;->u7:Labcd/Zo;

    invoke-virtual {v7}, Labcd/Gp;->we()I

    move-result v7

    :goto_34
    iget-object v9, v0, Labcd/bp;->Zo:Labcd/Js;

    if-nez v9, :cond_39

    goto :goto_43

    :cond_39
    invoke-virtual/range {p1 .. p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v6

    iget-object v9, v0, Labcd/bp;->Zo:Labcd/Js;

    invoke-virtual {v6, v9}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v6

    :goto_43
    iget-object v9, v0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v9}, Labcd/ap;->Mr()Z

    move-result v9

    if-eqz v9, :cond_4d

    const/4 v9, 0x0

    goto :goto_53

    :cond_4d
    iget-object v9, v0, Labcd/bp;->VH:Labcd/ap;

    invoke-virtual {v9}, Labcd/Gp;->we()I

    move-result v9

    :goto_53
    iget-object v10, v0, Labcd/bp;->gn:Labcd/kp;

    invoke-static {v10}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v10

    if-eqz v2, :cond_194

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Labcd/bp;->DW:Labcd/Ks;

    invoke-virtual {v11}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_idx:           "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x4

    invoke-interface {v1, v11, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  access_flags:        "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Labcd/bp;->FH:I

    invoke-static {v12}, Labcd/Mr;->j6(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  superclass_idx:      "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " // "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Labcd/bp;->Hw:Labcd/Ks;

    const-string v14, "<none>"

    if-nez v13, :cond_cd

    move-object v13, v14

    goto :goto_d1

    :cond_cd
    invoke-virtual {v13}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v13

    :goto_d1
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  interfaces_off:      "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    if-eqz v5, :cond_124

    iget-object v2, v0, Labcd/bp;->v5:Labcd/Rp;

    invoke-virtual {v2}, Labcd/Rp;->j3()Labcd/Ss;

    move-result-object v2

    invoke-interface {v2}, Labcd/Ss;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_100
    if-ge v15, v13, :cond_124

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v15}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v8

    invoke-virtual {v8}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v1, v11, v8}, Labcd/Lt;->j6(ILjava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto :goto_100

    :cond_124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  source_file_idx:     "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Labcd/bp;->Zo:Labcd/Js;

    if-nez v8, :cond_13d

    goto :goto_141

    :cond_13d
    invoke-virtual {v8}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v14

    :goto_141
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-interface {v1, v8, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  annotations_off:     "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_data_off:      "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  static_values_off:   "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_194
    invoke-interface {v1, v4}, Labcd/ku;->writeInt(I)V

    iget v2, v0, Labcd/bp;->FH:I

    invoke-interface {v1, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {v1, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {v1, v5}, Labcd/ku;->writeInt(I)V

    invoke-interface {v1, v6}, Labcd/ku;->writeInt(I)V

    invoke-interface {v1, v7}, Labcd/ku;->writeInt(I)V

    invoke-interface {v1, v9}, Labcd/ku;->writeInt(I)V

    invoke-interface {v1, v10}, Labcd/ku;->writeInt(I)V

    return-void
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
