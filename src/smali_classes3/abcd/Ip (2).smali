.class public final Labcd/Ip;
.super Labcd/up;


# instance fields
.field private final DW:Labcd/Os;

.field private final FH:Labcd/Js;

.field private Hw:Labcd/Rp;


# direct methods
.method public constructor <init>(Labcd/Os;)V
    .registers 3

    invoke-direct {p0}, Labcd/up;-><init>()V

    if-eqz p1, :cond_22

    iput-object p1, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-static {p1}, Labcd/Ip;->j6(Labcd/Os;)Labcd/Js;

    move-result-object v0

    iput-object v0, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {p1}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    goto :goto_1f

    :cond_19
    new-instance v0, Labcd/Rp;

    invoke-direct {v0, p1}, Labcd/Rp;-><init>(Labcd/Ss;)V

    move-object p1, v0

    :goto_1f
    iput-object p1, p0, Labcd/Ip;->Hw:Labcd/Rp;

    return-void

    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j6(Labcd/Qs;)C
    .registers 2

    invoke-virtual {p0}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_f

    const/16 p0, 0x4c

    :cond_f
    return p0
.end method

.method private static j6(Labcd/Os;)Labcd/Js;
    .registers 5

    invoke-virtual {p0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Labcd/Os;->we()Labcd/Qs;

    move-result-object p0

    invoke-static {p0}, Labcd/Ip;->j6(Labcd/Qs;)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_1b
    if-ge p0, v1, :cond_2b

    invoke-virtual {v0, p0}, Labcd/Ps;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-static {v3}, Labcd/Ip;->j6(Labcd/Qs;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_2b
    new-instance p0, Labcd/Js;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Js;-><init>(Ljava/lang/String;)V

    return-object p0
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
    .registers 5

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jp;->QX()Labcd/Fp;

    move-result-object p1

    iget-object v2, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v2}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Qp;->DW(Labcd/Qs;)Labcd/Pp;

    iget-object v1, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    iget-object v0, p0, Labcd/Ip;->Hw:Labcd/Rp;

    if-eqz v0, :cond_26

    invoke-virtual {p1, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object p1

    check-cast p1, Labcd/Rp;

    iput-object p1, p0, Labcd/Ip;->Hw:Labcd/Rp;

    :cond_26
    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 11

    invoke-virtual {p1}, Labcd/jp;->J8()Labcd/Op;

    move-result-object v0

    iget-object v1, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/Op;->j6(Labcd/Js;)I

    move-result v0

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object p1

    iget-object v1, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v1}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/Qp;->j6(Labcd/Qs;)I

    move-result p1

    iget-object v1, p0, Labcd/Ip;->Hw:Labcd/Rp;

    invoke-static {v1}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v3}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v3}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v4, :cond_5e

    if-eqz v6, :cond_50

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    invoke-virtual {v3, v6}, Labcd/Ps;->getType(I)Labcd/Qs;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_5e
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/up;->Ws()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  shorty_idx:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Ip;->FH:Labcd/Js;

    invoke-virtual {v4}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  return_type_idx: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Ip;->DW:Labcd/Os;

    invoke-virtual {v3}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  parameters_off:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_e9
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, p1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method
