.class public Lorg/c/a/a/c/a/a/d/m;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/d/x;

.field protected b:I

.field final c:Lorg/c/a/a/c/a/a/d/l;


# direct methods
.method protected constructor <init>(Lorg/c/a/a/c/a/a/d/l;)V
    .registers 3

    iput-object p1, p0, Lorg/c/a/a/c/a/a/d/m;->c:Lorg/c/a/a/c/a/a/d/l;

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    new-instance v0, Lorg/c/a/a/c/a/a/d/x;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/d/x;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/a/a/d/m;->b:I

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/ac;)V
    .registers 3

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/l;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/l;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/m;->b(Lorg/c/a/a/b/d/d/b;)Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/b/a/l;->a(Lorg/c/a/a/b/d/d/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/ah;)V
    .registers 3

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/m;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/m;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/m;->b(Lorg/c/a/a/b/d/d/b;)Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/b/a/m;->a(Lorg/c/a/a/b/d/d/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/k;)V
    .registers 3

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/d;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/d;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/m;->b(Lorg/c/a/a/b/d/d/b;)Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/b/a/d;->a(Lorg/c/a/a/b/d/d/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/u;)V
    .registers 7

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->c:Lorg/c/a/a/c/a/a/d/l;

    iget-object v0, v0, Lorg/c/a/a/c/a/a/d/l;->c:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->c:Lorg/c/a/a/c/a/a/d/l;

    iget-object v0, v0, Lorg/c/a/a/c/a/a/d/l;->c:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/c;

    move-object v1, v0

    :goto_23
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_29
    return-void

    :cond_2a
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    iget-object v4, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/d/x;->a()V

    iget-object v4, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-interface {v0, v4}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/d/x;->b()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_74

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/d/x;->b()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/d/m;->b:I

    move-object v0, v1

    :goto_4c
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/c;->q_()I

    move-result v1

    iget v4, p0, Lorg/c/a/a/c/a/a/d/m;->b:I

    if-le v1, v4, :cond_56

    move-object v1, v0

    goto :goto_23

    :cond_56
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    new-instance v1, Lorg/c/a/a/b/d/d/ah;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/d/d/ah;-><init>(Lorg/c/a/a/b/d/a/ai;)V

    invoke-interface {v2, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/c;

    goto :goto_4c

    :cond_74
    move-object v0, v1

    goto :goto_4c
.end method

.method protected b(Lorg/c/a/a/b/d/d/b;)Lorg/c/a/a/b/d/d/b;
    .registers 7

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->c:Lorg/c/a/a/c/a/a/d/l;

    iget-object v0, v0, Lorg/c/a/a/c/a/a/d/l;->c:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/d/u;

    if-ne v0, v1, :cond_16

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/b;->a(Lorg/c/a/a/b/d/d/t;)V

    :cond_15
    :goto_15
    return-object p1

    :cond_16
    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/m;->c:Lorg/c/a/a/c/a/a/d/l;

    iget-object v0, v0, Lorg/c/a/a/c/a/a/d/l;->c:Lorg/c/a/a/d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/c;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/d/x;->a()V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-interface {p1, v1}, Lorg/c/a/a/b/d/d/b;->a(Lorg/c/a/a/b/d/d/t;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/d/x;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/m;->a:Lorg/c/a/a/c/a/a/d/x;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/d/x;->b()I

    move-result v1

    iput v1, p0, Lorg/c/a/a/c/a/a/d/m;->b:I

    :cond_3c
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/c;->q_()I

    move-result v1

    iget v2, p0, Lorg/c/a/a/c/a/a/d/m;->b:I

    if-gt v1, v2, :cond_84

    new-instance v1, Lorg/c/a/a/b/d/d/u;

    invoke-direct {v1}, Lorg/c/a/a/b/d/d/u;-><init>()V

    iget-object v2, p0, Lorg/c/a/a/c/a/a/d/m;->c:Lorg/c/a/a/c/a/a/d/l;

    iget-object v2, v2, Lorg/c/a/a/c/a/a/d/l;->c:Lorg/c/a/a/d/c;

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Lorg/c/a/a/b/d/d/ah;

    invoke-direct {v3, v0}, Lorg/c/a/a/b/d/d/ah;-><init>(Lorg/c/a/a/b/d/a/ai;)V

    invoke-virtual {v1, v3}, Lorg/c/a/a/b/d/d/u;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/c;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/c;->q_()I

    move-result v3

    iget v4, p0, Lorg/c/a/a/c/a/a/d/m;->b:I

    if-le v3, v4, :cond_78

    :cond_73
    invoke-virtual {v1, p1}, Lorg/c/a/a/b/d/d/u;->add(Ljava/lang/Object;)Z

    move-object p1, v1

    goto :goto_15

    :cond_78
    new-instance v3, Lorg/c/a/a/b/d/d/ah;

    invoke-direct {v3, v0}, Lorg/c/a/a/b/d/d/ah;-><init>(Lorg/c/a/a/b/d/a/ai;)V

    invoke-virtual {v1, v3}, Lorg/c/a/a/b/d/d/u;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5f

    :cond_84
    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/b;->a(Lorg/c/a/a/b/d/d/t;)V

    goto :goto_15
.end method
