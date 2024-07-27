.class public abstract Lcom/a/b/f/a/l;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/a/b/f/ap;

.field protected final b:Lcom/a/b/f/a/i;


# direct methods
.method public constructor <init>(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/a/l;->a:Lcom/a/b/f/ap;

    iput-object p2, p0, Lcom/a/b/f/a/l;->b:Lcom/a/b/f/a/i;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 11

    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "specified insn is not in this block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding move here not supported:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/f/an;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/a/b/f/a/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v3}, Lcom/a/b/f/ap;->n()I

    move-result v3

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v3

    new-instance v4, Lcom/a/b/e/b/s;

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v5

    sget-object v6, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-static {p2}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v7

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-static {v4, v0}, Lcom/a/b/f/an;->a(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)Lcom/a/b/f/an;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/a/b/f/aj;->q()Lcom/a/b/g/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/g/o;->b()Lcom/a/b/g/m;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/a/b/g/m;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcom/a/b/f/a/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->l()V

    return-object v3

    :cond_2
    iget-object v2, p0, Lcom/a/b/f/a/l;->b:Lcom/a/b/f/a/i;

    invoke-interface {v0}, Lcom/a/b/g/m;->b()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/a/b/f/a/i;->a(II)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/a/b/f/a/l;->b:Lcom/a/b/f/a/i;

    invoke-virtual {v2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/b/u;->g()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/a/b/f/a/i;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public abstract a()Z
.end method

.method protected final b(I)Lcom/a/b/e/b/u;
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/a/l;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, p1}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract b()Lcom/a/b/f/ag;
.end method
