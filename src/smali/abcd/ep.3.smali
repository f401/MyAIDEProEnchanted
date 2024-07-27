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
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Labcd/ep;->v5:Labcd/Gs;

    iput-object p2, p0, Labcd/ep;->Zo:Labcd/Un;

    iput-boolean p3, p0, Labcd/ep;->gn:Z

    iput-object p4, p0, Labcd/ep;->u7:Labcd/Ss;

    iput-object v2, p0, Labcd/ep;->VH:Labcd/_o;

    iput-object v2, p0, Labcd/ep;->tp:Labcd/ip;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "throwsList == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH(Labcd/jp;Labcd/Lt;)V
    .registers 6

    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Labcd/Wn;->j6(Labcd/Lt;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while writing instructions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-virtual {v2}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0
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
    .registers 6

    invoke-virtual {p1}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v0

    iget-object v1, p0, Labcd/ep;->Zo:Labcd/Un;

    new-instance v2, Labcd/dp;

    invoke-direct {v2, p0, v0}, Labcd/dp;-><init>(Labcd/ep;Labcd/jp;)V

    invoke-virtual {v1, v2}, Labcd/Un;->j6(Labcd/Un$a;)V

    iget-object v1, p0, Labcd/ep;->VH:Labcd/_o;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Labcd/_o;->j6(Labcd/jp;)V

    iget-object v0, p0, Labcd/ep;->VH:Labcd/_o;

    invoke-virtual {v0}, Labcd/_o;->DW()I

    move-result v0

    :goto_0
    iget-object v1, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v1}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Wn;->rN()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Labcd/Gp;->j6(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 16

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v1, 0x0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v4

    invoke-direct {p0}, Labcd/ep;->U2()I

    move-result v5

    invoke-direct {p0}, Labcd/ep;->Mr()I

    move-result v6

    invoke-direct {p0}, Labcd/ep;->j3()I

    move-result v7

    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->Hw()Labcd/Wn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Wn;->rN()I

    move-result v8

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Labcd/ep;->VH:Labcd/_o;

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    iget-object v3, p0, Labcd/ep;->tp:Labcd/ip;

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    if-eqz v4, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-virtual {v10}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v1, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  registers_size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  ins_size:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  outs_size:      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  tries_size:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  debug_off:      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v12, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  insns_size:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v12, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v9, p0, Labcd/ep;->u7:Labcd/Ss;

    invoke-interface {v9}, Labcd/Ss;->size()I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  throws "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Labcd/ep;->u7:Labcd/Ss;

    invoke-static {v10}, Labcd/Ps;->DW(Labcd/Ss;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v1, v9}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v5}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v7}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v6}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v8}, Labcd/ku;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Labcd/ep;->FH(Labcd/jp;Labcd/Lt;)V

    iget-object v2, p0, Labcd/ep;->VH:Labcd/_o;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    const-string v0, "  padding: 0"

    invoke-interface {p2, v11, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, v1}, Labcd/ku;->writeShort(I)V

    :cond_2
    iget-object v0, p0, Labcd/ep;->VH:Labcd/_o;

    invoke-virtual {v0, p1, p2}, Labcd/_o;->j6(Labcd/jp;Labcd/Lt;)V

    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Labcd/ep;->tp:Labcd/ip;

    if-eqz v0, :cond_4

    const-string v0, "  debug info"

    invoke-interface {p2, v1, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v0, p0, Labcd/ep;->tp:Labcd/ip;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Labcd/ip;->j6(Labcd/jp;Labcd/Lt;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Labcd/_o;->j6()I

    move-result v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v3}, Labcd/Gp;->we()I

    move-result v3

    goto/16 :goto_2
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

    if-nez v2, :cond_0

    iget-object v2, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v2}, Labcd/Un;->gn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Labcd/ip;

    iget-object v3, p0, Labcd/ep;->Zo:Labcd/Un;

    iget-boolean v4, p0, Labcd/ep;->gn:Z

    iget-object v5, p0, Labcd/ep;->v5:Labcd/Gs;

    invoke-direct {v2, v3, v4, v5}, Labcd/ip;-><init>(Labcd/Un;ZLabcd/Gs;)V

    iput-object v2, p0, Labcd/ep;->tp:Labcd/ip;

    iget-object v2, p0, Labcd/ep;->tp:Labcd/ip;

    invoke-virtual {v0, v2}, Labcd/Fp;->j6(Labcd/Gp;)V

    :cond_1
    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->VH()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->j6()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qs;

    invoke-virtual {v1, v0}, Labcd/Qp;->DW(Labcd/Qs;)Labcd/Pp;

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/_o;

    iget-object v1, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-direct {v0, v1}, Labcd/_o;-><init>(Labcd/Un;)V

    iput-object v0, p0, Labcd/ep;->VH:Labcd/_o;

    :cond_3
    iget-object v0, p0, Labcd/ep;->Zo:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->FH()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ms;

    invoke-virtual {p1, v0}, Labcd/jp;->DW(Labcd/ms;)V

    goto :goto_1

    :cond_4
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
