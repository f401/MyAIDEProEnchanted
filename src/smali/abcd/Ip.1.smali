.class public final Labcd/Ip;
.super Labcd/up;


# instance fields
.field private final DW:Labcd/Os;

.field private final FH:Labcd/Js;

.field private Hw:Labcd/Rp;


# direct methods
.method public constructor <init>(Labcd/Os;)V
    .registers 4

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-static {p1}, Labcd/Ip;->j6(Labcd/Os;)Labcd/Js;

    move-result-object v0

    iput-object v0, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {p1}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/Ip;->Hw:Labcd/Rp;

    return-void

    :cond_0
    new-instance v0, Labcd/Rp;

    invoke-direct {v0, v1}, Labcd/Rp;-><init>(Labcd/Ss;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Labcd/Qs;)C
    .registers 3

    invoke-virtual {p0}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4c

    :cond_0
    return v0
.end method

.method private static j6(Labcd/Os;)Labcd/Js;
    .registers 6

    invoke-virtual {p0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v0

    invoke-static {v0}, Labcd/Ip;->j6(Labcd/Qs;)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Labcd/Ps;->getType(I)Labcd/Qs;

    move-result-object v4

    invoke-static {v4}, Labcd/Ip;->j6(Labcd/Qs;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Js;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Js;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->Hw:Labcd/wp;

    return-object v0
.end method

.method public VH()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 6

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jp;->QX()Labcd/Fp;

    move-result-object v2

    iget-object v3, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v3}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/Qp;->DW(Labcd/Qs;)Labcd/Pp;

    iget-object v1, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    iget-object v0, p0, Labcd/Ip;->Hw:Labcd/Rp;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Rp;

    iput-object v0, p0, Labcd/Ip;->Hw:Labcd/Rp;

    :cond_0
    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v9, 0x4

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    iget-object v2, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {v0, v2}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v2

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    iget-object v3, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v3}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/Qp;->j6(Labcd/Qs;)I

    move-result v3

    iget-object v0, p0, Labcd/Ip;->Hw:Labcd/Rp;

    invoke-static {v0}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v4

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v0}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " proto("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v7

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_1

    if-eqz v0, :cond_0

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v6, v0}, Labcd/Ps;->getType(I)Labcd/Qs;

    move-result-object v8

    invoke-virtual {v8}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  shorty_idx:      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  return_type_idx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v1}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  parameters_off:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v4}, Labcd/ku;->writeInt(I)V

    return-void
.end method
