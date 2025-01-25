.class public final Labcd/Rp;
.super Labcd/Gp;


# instance fields
.field private final v5:Labcd/Ss;


# direct methods
.method public constructor <init>(Labcd/Ss;)V
    .registers 4

    invoke-interface {p1}, Labcd/Ss;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Labcd/Gp;-><init>(II)V

    iput-object p1, p0, Labcd/Rp;->v5:Labcd/Ss;

    return-void
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 3

    iget-object v0, p0, Labcd/Rp;->v5:Labcd/Ss;

    check-cast p1, Labcd/Rp;

    iget-object p1, p1, Labcd/Rp;->v5:Labcd/Ss;

    invoke-static {v0, p1}, Labcd/Ps;->j6(Labcd/Ss;Labcd/Ss;)I

    move-result p1

    return p1
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 10

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object p1

    iget-object v0, p0, Labcd/Rp;->v5:Labcd/Ss;

    invoke-interface {v0}, Labcd/Ss;->size()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_43
    if-ge v1, v0, :cond_77

    iget-object v3, p0, Labcd/Rp;->v5:Labcd/Ss;

    invoke-interface {v3, v1}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {p1, v3}, Labcd/Qp;->j6(Labcd/Qs;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_77
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    :goto_7a
    if-ge v2, v0, :cond_8c

    iget-object v1, p0, Labcd/Rp;->v5:Labcd/Ss;

    invoke-interface {v1, v2}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/Qp;->j6(Labcd/Qs;)I

    move-result v1

    invoke-interface {p2, v1}, Labcd/ku;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_8c
    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->u7:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Rp;->v5:Labcd/Ss;

    invoke-static {v0}, Labcd/Ps;->j6(Labcd/Ss;)I

    move-result v0

    return v0
.end method

.method public j3()Labcd/Ss;
    .registers 2

    iget-object v0, p0, Labcd/Rp;->v5:Labcd/Ss;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 5

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object p1

    iget-object v0, p0, Labcd/Rp;->v5:Labcd/Ss;

    invoke-interface {v0}, Labcd/Ss;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Labcd/Rp;->v5:Labcd/Ss;

    invoke-interface {v2, v1}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v2

    invoke-virtual {p1, v2}, Labcd/Qp;->DW(Labcd/Qs;)Labcd/Pp;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method
