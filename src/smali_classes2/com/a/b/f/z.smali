.class public final Lcom/a/b/f/z;
.super Lcom/a/b/f/an;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/a/b/e/b/j;


# direct methods
.method constructor <init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/f/an;-><init>(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V

    iput-object p1, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/f/z;
    .registers 2

    invoke-super {p0}, Lcom/a/b/f/an;->n()Lcom/a/b/f/an;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/z;

    return-object v0
.end method

.method public final a(ILcom/a/b/e/b/u;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    new-instance v4, Lcom/a/b/e/b/x;

    invoke-direct {v4, v3}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    invoke-virtual {v4}, Lcom/a/b/e/b/x;->c_()V

    invoke-virtual {v2, p1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/aj;->o()Lcom/a/b/f/ap;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {p0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    return-void

    :cond_1
    if-ne v1, p1, :cond_2

    move-object v0, p2

    :goto_1
    invoke-virtual {v4, v1, v0}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/a/b/e/b/x;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sources counts don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {p0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    return-void
.end method

.method public final a(Lcom/a/b/f/ag;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/x;)Lcom/a/b/e/b/x;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {p0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {p0}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/aj;->o()Lcom/a/b/f/ap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/a/b/f/ao;)V
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/f/z;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/a/b/f/ao;->a(Lcom/a/b/f/z;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p0}, Lcom/a/b/f/ao;->b(Lcom/a/b/f/z;)V

    goto :goto_0
.end method

.method public b()Lcom/a/b/e/b/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/b/e/b/j;
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {p0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/f/z;->c()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/b/e/b/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/a/b/e/b/j;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    return-object v0
.end method

.method public g()Lcom/a/b/e/b/u;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v2, 0x36

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->l()Lcom/a/b/e/b/j;

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {p0}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/aj;->o()Lcom/a/b/f/ap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V

    return-void
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

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

.method public j()Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

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

.method public k()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/z;->a:Lcom/a/b/e/b/j;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->k()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/f/z;->i()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/b/f/z;->e()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/a/b/f/aa;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/a/b/f/z;->g()Lcom/a/b/e/b/u;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic n()Lcom/a/b/f/an;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/f/z;->a()Lcom/a/b/f/z;

    move-result-object v0

    return-object v0
.end method
