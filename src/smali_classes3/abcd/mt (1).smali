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
    .registers 5

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/qt;->j6(Labcd/cs;)Labcd/cs;

    move-result-object p1

    if-eq p1, v0, :cond_23

    iget-object v1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object p1

    iput-object p1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object p1

    invoke-virtual {p1}, Labcd/tt;->v5()Labcd/yt;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/cs;)V

    :cond_23
    return-void
.end method

.method public EQ()Z
    .registers 5

    invoke-virtual {p0}, Labcd/mt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    return v2

    :cond_c
    invoke-static {}, Labcd/nt;->DW()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Labcd/mt;->FH()Labcd/bs;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2a

    const/16 v3, 0x37

    if-eq v0, v3, :cond_2a

    return v2

    :cond_2a
    return v1
.end method

.method public FH()Labcd/bs;
    .registers 4

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    :goto_1e
    const/4 v1, 0x0

    if-nez v0, :cond_22

    return-object v1

    :cond_22
    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    if-nez v2, :cond_29

    return-object v1

    :cond_29
    return-object v0
.end method

.method public J0()Z
    .registers 3

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public QX()Z
    .registers 3

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
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

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Labcd/cs;

    invoke-direct {v2, v1}, Labcd/cs;-><init>(I)V

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_20

    if-ne v3, p1, :cond_16

    move-object v4, p2

    goto :goto_1a

    :cond_16
    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    :goto_1a
    invoke-virtual {v2, v3, v4}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-virtual {v0, p1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    if-eq v0, v1, :cond_3c

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Labcd/yt;->j6(Labcd/vt;Labcd/bs;Labcd/bs;)V

    :cond_3c
    iget-object p1, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object p1

    iput-object p1, p0, Labcd/mt;->FH:Labcd/Tr;

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

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Labcd/mt;->FH:Labcd/Tr;

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Labcd/Tr;->j6(Labcd/bs;Labcd/cs;)Labcd/Tr;

    move-result-object p1

    iput-object p1, p0, Labcd/mt;->FH:Labcd/Tr;

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sources counts don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/vt$a;)V
    .registers 3

    invoke-virtual {p0}, Labcd/mt;->QX()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1, p0}, Labcd/vt$a;->j6(Labcd/mt;)V

    goto :goto_d

    :cond_a
    invoke-interface {p1, p0}, Labcd/vt$a;->DW(Labcd/mt;)V

    :goto_d
    return-void
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
