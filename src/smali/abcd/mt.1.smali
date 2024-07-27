.class public final Labcd/mt;
.super Labcd/vt;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private FH:Labcd/Tr;


# direct methods
.method constructor <init>(Labcd/Tr;Labcd/tt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Labcd/vt;-><init>(Labcd/bs;Labcd/tt;)V

    iput-object p1, p0, Labcd/mt;->FH:Labcd/Tr;

    return-void
.end method


# virtual methods
.method public final DW(Labcd/qt;)V
    .registers 6

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/qt;->j6(Labcd/cs;)Labcd/cs;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object v1

    iput-object v1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/cs;)V

    :cond_0
    return-void
.end method

.method public EQ()Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Labcd/mt;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Labcd/nt;->DW()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Labcd/mt;->FH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0x37

    if-ne v2, v3, :cond_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public FH()Labcd/bs;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method public J0()Z
    .registers 3

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public QX()Z
    .registers 3

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public XL()Z
    .registers 2

    invoke-virtual {p0}, Labcd/mt;->QX()Z

    move-result v0

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/mt;->lg()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Labcd/mt;
    .registers 2

    invoke-super {p0}, Labcd/vt;->clone()Labcd/vt;

    move-result-object v0

    check-cast v0, Labcd/mt;

    return-object v0
.end method

.method public bridge synthetic clone()Labcd/vt;
    .registers 2

    invoke-virtual {p0}, Labcd/mt;->clone()Labcd/mt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/mt;->clone()Labcd/mt;

    move-result-object v0

    return-object v0
.end method

.method public gn()Labcd/Tr;
    .registers 2

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    return-object v0
.end method

.method public final j6(ILabcd/bs;)V
    .registers 8

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v3

    new-instance v4, Labcd/cs;

    invoke-direct {v4, v3}, Labcd/cs;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    if-ne v1, p1, :cond_0

    move-object v0, p2

    :goto_1
    invoke-virtual {v4, v1, v0}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Labcd/hu;->we()V

    invoke-virtual {v2, p1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Labcd/yt;->j6(Labcd/vt;Labcd/bs;Labcd/bs;)V

    :cond_2
    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object v0

    iput-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    return-void
.end method

.method public final j6(Labcd/cs;)V
    .registers 4

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object v0

    iput-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sources counts don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/vt$a;)V
    .registers 3

    invoke-virtual {p0}, Labcd/mt;->QX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Labcd/vt$a;->j6(Labcd/mt;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p0}, Labcd/vt$a;->DW(Labcd/mt;)V

    goto :goto_0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->j6()Z

    move-result v0

    return v0
.end method

.method public lg()Labcd/Tr;
    .registers 4

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    iget-object v2, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v2}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object v0

    return-object v0
.end method

.method public rN()V
    .registers 3

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    iget-object v1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->u7()Labcd/Tr;

    move-result-object v1

    iput-object v1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v1

    invoke-virtual {v1}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/cs;)V

    return-void
.end method

.method public tp()Labcd/cs;
    .registers 2

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/es;
    .registers 2

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    return-object v0
.end method
