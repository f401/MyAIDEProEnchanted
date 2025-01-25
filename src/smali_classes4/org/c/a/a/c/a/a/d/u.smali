.class public Lorg/c/a/a/c/a/a/d/u;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/c/o;


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/c/o;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/d/u;->a:Lorg/c/a/a/c/a/a/c/o;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/i;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/u;)V
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a2

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/p;

    if-ne v1, v2, :cond_a2

    check-cast v0, Lorg/c/a/a/b/d/d/p;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/p;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v2, :cond_a2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/p;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/c/a/a/b/d/d/h;

    if-ne v3, v4, :cond_a2

    check-cast v2, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/c/a/a/b/d/b/g;

    if-ne v3, v4, :cond_a2

    invoke-virtual {v2}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v4, v5, :cond_a2

    check-cast v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    if-ne v4, v3, :cond_a2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/c/a;->i()Lorg/c/a/a/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/d/c;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a2

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Lorg/c/a/a/b/d/d/u;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/c/a/a/b/d/d/p;->a(Lorg/c/a/a/b/d/b/n;)V

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/p;->b()I

    move-result v3

    if-le v3, v2, :cond_99

    invoke-virtual {v0, v2}, Lorg/c/a/a/b/d/d/p;->a(I)V

    :cond_99
    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/u;->a:Lorg/c/a/a/c/a/a/c/o;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    :cond_a2
    invoke-super {p0, p1}, Lorg/c/a/a/b/d/a;->a(Lorg/c/a/a/b/d/d/u;)V

    return-void
.end method
