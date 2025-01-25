.class public Lorg/c/a/a/c/a/a/c/am;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/a/c/a;


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/am;->a:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/u;)V
    .registers 6

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/c/a/a/a/b/c/e;

    if-ne v2, v3, :cond_3f

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/c/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v2, v3, :cond_a

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/am;->a:Lorg/c/a/a/c/a/a/a/c/a;

    if-ne v0, v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3f
    invoke-interface {v0, p0}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    goto :goto_a
.end method
