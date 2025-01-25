.class public Lorg/c/a/a/c/c/a/b/b;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field final a:Lorg/c/a/a/c/c/a/b/a;


# direct methods
.method protected constructor <init>(Lorg/c/a/a/c/c/a/b/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/c/a;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/c/a/b/a;->b(Lorg/c/a/a/b/d/c/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/c/b;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/c/a/b/a;->b(Lorg/c/a/a/b/d/c/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/c/c;)V
    .registers 6

    invoke-virtual {p1}, Lorg/c/a/a/b/d/c/c;->size()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p1}, Lorg/c/a/a/b/d/c/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/c/b;

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/c/b;->a(Lorg/c/a/a/b/d/c/o;)V

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    iget-object v0, v0, Lorg/c/a/a/c/c/a/b/a;->D:Lorg/c/a/a/c/c/a/b/e;

    iget-object v2, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    iget-object v2, v2, Lorg/c/a/a/c/c/a/b/a;->aA:Lorg/c/a/a/c/c/a/b/k;

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/c/a/b/e;->a(Lorg/c/a/a/c/c/a/b/k;)V

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    iget-object v0, v0, Lorg/c/a/a/c/c/a/b/a;->D:Lorg/c/a/a/c/c/a/b/e;

    invoke-static {v0}, Lorg/c/a/a/c/c/a/a/b;->k(Ljava/util/List;)V

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    new-instance v2, Lorg/c/a/a/c/c/a/b/k;

    iget-object v3, p0, Lorg/c/a/a/c/c/a/b/b;->a:Lorg/c/a/a/c/c/a/b/a;

    invoke-direct {v2, v3}, Lorg/c/a/a/c/c/a/b/k;-><init>(Lorg/c/a/a/c/c/a/b/j;)V

    iput-object v2, v0, Lorg/c/a/a/c/c/a/b/a;->aA:Lorg/c/a/a/c/c/a/b/k;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/c/b;

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/c/b;->a(Lorg/c/a/a/b/d/c/o;)V

    goto :goto_13
.end method
