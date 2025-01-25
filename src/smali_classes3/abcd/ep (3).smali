.class public final Labcd/ep;
.super Labcd/Gp;


# instance fields
.field private VH:Labcd/_o;

.field private final Zo:Labcd/Un;

.field private final gn:Z

.field private tp:Labcd/ip;

.field private final u7:Labcd/Ss;

.field private final v5:Labcd/Gs;


# direct methods
.method public constructor <init>(Labcd/Gs;Labcd/Un;ZLabcd/Ss;)V
    .registers 7

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_29

    if-eqz p2, :cond_21

    if-eqz p4, :cond_19

    iput-object p1, p0, Labcd/ep;->v5:Labcd/Gs;

    iput-object p2, p0, Labcd/ep;->Zo:Labcd/Un;

    iput-boolean p3, p0, Labcd/ep;->gn:Z

    iput-object p4, p0, Labcd/ep;->u7:Labcd/Ss;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/ep;->VH:Labcd/_o;

    iput-object p1, p0, Labcd/ep;->tp:Labcd/ip;

    return-void

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH(Labcd/jp;Labcd/Lt;)V
    .registers 4

    iget-object p1, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {p1}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object p1

    :try_start_6
    invoke-virtual {p1, p2}, Labcd/Wn;->j6(Labcd/Lt;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing instructions for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object p1

    throw p1
.end method

.method private Mr()I
    .registers 2

    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Wn;->er()I

    move-result v0

    return v0
.end method

.method private U2()I
    .registers 2

    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Wn;->yS()I

    move-result v0

    return v0
.end method

.method private j3()I
    .registers 3

    iget-object v0, p0, Labcd/ep;->v5:Labcd/Gs;

    iget-boolean v1, p0, Labcd/ep;->gn:Z

    invoke-virtual {v0, v1}, Labcd/qs;->j6(Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected DW(Labcd/Kp;I)V
    .registers 4

    invoke-virtual {p1}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object p1

    iget-object p2, p0, Labcd/ep;->Zo:Labcd/Un;

    new-instance v0, Labcd/dp;

    invoke-direct {v0, p0, p1}, Labcd/dp;-><init>(Labcd/ep;Labcd/jp;)V

    invoke-virtual {p2, v0}, Labcd/Un;->j6(Labcd/Un$a;)V

    iget-object p2, p0, Labcd/ep;->VH:Labcd/_o;

    if-eqz p2, :cond_1c

    invoke-virtual {p2, p1}, Labcd/_o;->j6(Labcd/jp;)V

    iget-object p1, p0, Labcd/ep;->VH:Labcd/_o;

    invoke-virtual {p1}, Labcd/_o;->DW()I

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iget-object p2, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {p2}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Wn;->rN()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2d

    add-int/lit8 p2, p2, 0x1

    :cond_2d
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Labcd/Gp;->j6(I)V

    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 16

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    invoke-direct {p0}, Labcd/ep;->U2()I

    move-result v1

    invoke-direct {p0}, Labcd/ep;->Mr()I

    move-result v2

    invoke-direct {p0}, Labcd/ep;->j3()I

    move-result v3

    iget-object v4, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v4}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Wn;->rN()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    iget-object v7, p0, Labcd/ep;->VH:Labcd/_o;

    if-nez v7, :cond_28

    const/4 v7, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {v7}, Labcd/_o;->j6()I

    move-result v7

    :goto_2c
    iget-object v8, p0, Labcd/ep;->tp:Labcd/ip;

    if-nez v8, :cond_32

    const/4 v8, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v8}, Labcd/Gp;->we()I

    move-result v8

    :goto_36
    const/4 v9, 0x2

    if-eqz v0, :cond_10d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-virtual {v11}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  registers_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ins_size:       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  outs_size:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  tries_size:     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  debug_off:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  insns_size:     "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v10, p0, Labcd/ep;->u7:Labcd/Ss;

    invoke-interface {v10}, Labcd/Ss;->size()I

    move-result v10

    if-eqz v10, :cond_10d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  throws "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Labcd/ep;->u7:Labcd/Ss;

    invoke-static {v11}, Labcd/Ps;->DW(Labcd/Ss;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_10d
    invoke-interface {p2, v1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v7}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v8}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v4}, Labcd/ku;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Labcd/ep;->FH(Labcd/jp;Labcd/Lt;)V

    iget-object v1, p0, Labcd/ep;->VH:Labcd/_o;

    if-eqz v1, :cond_137

    if-eqz v5, :cond_132

    if-eqz v0, :cond_12f

    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_12f
    invoke-interface {p2, v6}, Labcd/ku;->writeShort(I)V

    :cond_132
    iget-object v1, p0, Labcd/ep;->VH:Labcd/_o;

    invoke-virtual {v1, p1, p2}, Labcd/_o;->j6(Labcd/jp;Labcd/Lt;)V

    :cond_137
    if-eqz v0, :cond_149

    iget-object v0, p0, Labcd/ep;->tp:Labcd/ip;

    if-eqz v0, :cond_149

    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v0, p0, Labcd/ep;->tp:Labcd/ip;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Labcd/ip;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;)V

    :cond_149
    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->J0:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 8

    invoke-virtual {p1}, Labcd/jp;->j6()Labcd/Fp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v1

    iget-object v2, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v2}, Labcd/Un;->u7()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v2}, Labcd/Un;->gn()Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_18
    new-instance v2, Labcd/ip;

    iget-object v3, p0, Labcd/ep;->Zo:Labcd/Un;

    iget-boolean v4, p0, Labcd/ep;->gn:Z

    iget-object v5, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-direct {v2, v3, v4, v5}, Labcd/ip;-><init>(Labcd/Un;ZLabcd/Gs;)V

    iput-object v2, p0, Labcd/ep;->tp:Labcd/ip;

    invoke-virtual {v0, v2}, Labcd/Fp;->j6(Labcd/Gp;)V

    :cond_28
    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->VH()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->j6()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Qs;

    invoke-virtual {v1, v2}, Labcd/Qp;->DW(Labcd/Qs;)Labcd/Pp;

    goto :goto_3a

    :cond_4a
    new-instance v0, Labcd/_o;

    iget-object v1, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-direct {v0, v1}, Labcd/_o;-><init>(Labcd/Un;)V

    iput-object v0, p0, Labcd/ep;->VH:Labcd/_o;

    :cond_53
    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->FH()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ms;

    invoke-virtual {p1, v1}, Labcd/jp;->DW(Labcd/ms;)V

    goto :goto_5d

    :cond_6d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/ep;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
