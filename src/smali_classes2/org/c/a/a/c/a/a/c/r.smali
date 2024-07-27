.class public Lorg/c/a/a/c/a/a/c/r;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/c/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/c/a/a/c/s;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/c/s;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/c/r;->a:Lorg/c/a/a/c/a/a/c/s;

    return-void
.end method

.method protected static a(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/f;
    .registers 7

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Lorg/c/a/a/b/d/b/p;

    invoke-direct {v2}, Lorg/c/a/a/b/d/b/p;-><init>()V

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/b/d/d/u;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    move-object v1, v2

    :goto_1
    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v2, :cond_3

    :cond_2
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->clear()V

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v4, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v4, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/c/a/a/b/d/b/p;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static a(IIILorg/c/a/a/b/d/d/r;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 12

    const/4 v2, 0x1

    invoke-virtual {p4}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lorg/c/a/a/b/d/d/u;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    new-instance v0, Lorg/c/a/a/b/d/d/m;

    invoke-direct {v0, v4, p3}, Lorg/c/a/a/b/d/d/m;-><init>(Ljava/lang/String;Lorg/c/a/a/b/d/d/r;)V

    move-object p3, v0

    :cond_1
    return-object p3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/a;->b()I

    move-result v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/a;->d()I

    move-result v6

    if-ne v6, p1, :cond_3

    new-instance v1, Lorg/c/a/a/b/d/d/f;

    invoke-direct {v1, v4}, Lorg/c/a/a/b/d/d/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/b/c/a;->a(Lorg/c/a/a/b/d/d/r;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_0

    :cond_3
    if-ne v6, p2, :cond_4

    new-instance v1, Lorg/c/a/a/b/d/d/c;

    invoke-direct {v1, v4}, Lorg/c/a/a/b/d/d/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/b/c/a;->a(Lorg/c/a/a/b/d/d/r;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_0

    :cond_4
    if-gt p1, v5, :cond_0

    if-ge v5, p2, :cond_0

    if-gt p1, v6, :cond_6

    if-ge v6, p2, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/a;->e()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v1, Lorg/c/a/a/b/d/d/f;

    invoke-direct {v1, v4}, Lorg/c/a/a/b/d/d/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/b/c/a;->a(Lorg/c/a/a/b/d/d/r;)V

    move v0, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v0

    goto :goto_0

    :cond_5
    sget-object v5, Lorg/c/a/a/b/d/d/f;->a:Lorg/c/a/a/b/d/d/f;

    invoke-virtual {v0, v5}, Lorg/c/a/a/c/a/a/a/b/c/a;->a(Lorg/c/a/a/b/d/d/r;)V

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/b/c/a;->a(Z)V

    goto :goto_0
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 11

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v2, :cond_3

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v1, :cond_3

    move-object v0, v3

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v4, :cond_3

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v4, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v5, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v4, :cond_3

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    sget-object v0, Lorg/c/a/a/b/d/b/h;->a:Lorg/c/a/a/b/d/b/h;

    if-ne p2, v0, :cond_4

    const/4 v4, 0x0

    :goto_1
    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    :goto_2
    return-object v0

    :cond_0
    const-class v4, Lorg/c/a/a/b/d/b/ag;

    if-ne v0, v4, :cond_1

    check-cast v1, Lorg/c/a/a/b/d/b/ag;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ag;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    new-instance v5, Lorg/c/a/a/b/d/b/af;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ag;->e()I

    move-result v4

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v4, v0, v1}, Lorg/c/a/a/b/d/b/af;-><init>(ILorg/c/a/a/b/d/b/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-class v4, Lorg/c/a/a/b/d/b/af;

    if-ne v0, v4, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/b/af;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/af;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v5, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/c/a/a/b/d/d/ai;

    invoke-direct {v0, p2, p3}, Lorg/c/a/a/b/d/d/ai;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/c/a/a/b/d/d/ai;

    invoke-direct {v0, p2, p3}, Lorg/c/a/a/b/d/d/ai;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    goto :goto_2

    :cond_4
    move-object v4, p2

    goto :goto_1
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/c/a/a/b/d/d/f;->a:Lorg/c/a/a/b/d/d/f;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v1, Lorg/c/a/a/c/a/a/d/x;

    invoke-direct {v1}, Lorg/c/a/a/c/a/a/d/x;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-interface {v0, v1}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/d/x;->b()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p2, v0}, Lorg/c/a/a/c/a/a/c/r;->b(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/p;

    move-result-object v5

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/p;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    invoke-static {p1, v0}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/u;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v2, :cond_3

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p1, v0}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/c/a/a/b/d/b/h;->a:Lorg/c/a/a/b/d/b/h;

    invoke-static {p0, p1, v0, p2}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_3
    :pswitch_1
    new-instance v0, Lorg/c/a/a/b/d/d/ai;

    sget-object v1, Lorg/c/a/a/b/d/b/h;->a:Lorg/c/a/a/b/d/b/h;

    invoke-direct {v0, v1, p2}, Lorg/c/a/a/b/d/d/ai;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 8

    sget-object v0, Lorg/c/a/a/c/a/a/c/r;->a:Lorg/c/a/a/c/a/a/c/s;

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/d/d/u;->a(Lorg/c/a/a/b/d/d/t;)V

    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v3

    invoke-static {v3, v2, v0, v1, p3}, Lorg/c/a/a/c/a/a/c/r;->a(IIILorg/c/a/a/b/d/d/r;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 9

    sget-object v0, Lorg/c/a/a/c/a/a/c/r;->a:Lorg/c/a/a/c/a/a/c/s;

    invoke-virtual {p3, v0}, Lorg/c/a/a/b/d/d/u;->a(Lorg/c/a/a/b/d/d/t;)V

    new-instance v1, Lorg/c/a/a/b/d/d/g;

    invoke-direct {v1, p2, p3}, Lorg/c/a/a/b/d/d/g;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v3

    invoke-static {v3, v2, v0, v1, p4}, Lorg/c/a/a/c/a/a/c/r;->a(IIILorg/c/a/a/b/d/d/r;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 15

    const/16 v10, 0x24

    const/4 v9, -0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v4

    const/4 v0, 0x3

    if-lt v4, v0, :cond_1

    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v4, -0x2

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v2, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v5

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/g;

    if-eq v1, v2, :cond_5

    :cond_4
    move-object v0, v3

    goto :goto_0

    :cond_5
    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/v;

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v1, v2, :cond_7

    :cond_6
    move-object v0, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/v;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/v;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v6, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v2, v6, :cond_8

    move-object v0, v3

    goto :goto_0

    :cond_8
    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v6

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v7

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v9, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v2, :cond_a

    move-object v0, v3

    goto/16 :goto_0

    :cond_a
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/g;

    if-eq v1, v2, :cond_b

    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/e;

    if-ne v1, v2, :cond_c

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v2, :cond_c

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->e()I

    move-result v1

    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v2

    if-eq v1, v2, :cond_d

    :cond_c
    move-object v0, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v8, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v2, v8, :cond_e

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v8, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v2, v8, :cond_f

    :cond_e
    move-object v0, v3

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    if-eq v2, v6, :cond_10

    move-object v0, v3

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v8

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v9, :cond_11

    move-object v0, v3

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v0, v4, -0x3

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v9, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v9, :cond_12

    move-object v0, v3

    goto/16 :goto_0

    :cond_12
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v9, Lorg/c/a/a/b/d/b/g;

    if-eq v1, v9, :cond_13

    move-object v0, v3

    goto/16 :goto_0

    :cond_13
    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v9, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v1, v9, :cond_14

    move-object v0, v3

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-eq v1, v6, :cond_15

    move-object v0, v3

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v9

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v4, :cond_16

    move-object v0, v3

    goto/16 :goto_0

    :cond_16
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/b/d/b/g;

    if-eq v1, v4, :cond_17

    move-object v0, v3

    goto/16 :goto_0

    :cond_17
    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->e()I

    move-result v1

    if-ne v1, v5, :cond_18

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v4, :cond_18

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/b/d/b/t;

    if-eq v1, v4, :cond_19

    :cond_18
    move-object v0, v3

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-eq v0, v2, :cond_1b

    :cond_1a
    move-object v0, v3

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/g;

    if-eq v0, v1, :cond_1c

    move-object v0, v3

    goto/16 :goto_0

    :cond_1c
    check-cast p2, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v0, v1, :cond_1d

    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v0, v1, :cond_1e

    :cond_1d
    move-object v0, v3

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-ne v0, v2, :cond_1f

    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-eq v0, v7, :cond_20

    :cond_1f
    move-object v0, v3

    goto/16 :goto_0

    :cond_20
    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v4, :cond_21

    move-object v0, v3

    goto/16 :goto_0

    :cond_21
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    if-ne v1, v5, :cond_22

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/af;

    if-eq v0, v1, :cond_23

    :cond_22
    move-object v0, v3

    goto/16 :goto_0

    :cond_23
    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/c/a/a/b/d/d/u;->remove(I)Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    invoke-virtual {p0, v6}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {p0, v7}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/b;

    invoke-direct {v0, v8, v9, p3}, Lorg/c/a/a/c/a/a/a/b/c/b;-><init>(Lorg/c/a/a/c/a/a/a/c/a;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    goto/16 :goto_0
.end method

.method protected static a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 12

    sget-object v0, Lorg/c/a/a/c/a/a/c/r;->a:Lorg/c/a/a/c/a/a/c/s;

    invoke-virtual {p4, v0}, Lorg/c/a/a/b/d/d/u;->a(Lorg/c/a/a/b/d/d/t;)V

    invoke-static {p0, p2, p3, p4}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p2, p3, p4}, Lorg/c/a/a/c/a/a/c/r;->b(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p3, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p4}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-lez v1, :cond_7

    new-instance v2, Lorg/c/a/a/c/a/a/d/x;

    invoke-direct {v2}, Lorg/c/a/a/c/a/a/d/x;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-interface {v0, v2}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/d/x;->b()I

    move-result v0

    invoke-static {p4, v0}, Lorg/c/a/a/c/a/a/c/r;->b(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/p;

    move-result-object v5

    invoke-static {p2, v1}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_2
    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    move v1, v0

    goto :goto_1

    :pswitch_0
    if-lez v1, :cond_8

    invoke-static {p2, v1}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    goto :goto_0

    :pswitch_1
    if-lez v1, :cond_6

    invoke-virtual {p4}, Lorg/c/a/a/b/d/d/u;->h()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/c/a/a/b/d/d/r;

    invoke-static {p2, v1}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-ne v0, v2, :cond_5

    move-object v0, v6

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    const/4 v6, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_8

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_8

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/c/c;-><init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lorg/c/a/a/b/d/d/ai;

    invoke-direct {v0, p3, p4}, Lorg/c/a/a/b/d/d/ai;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 10

    invoke-static {p0, p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/c/r;->a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v3

    invoke-static {v3, v2, v0, v1, p5}, Lorg/c/a/a/c/a/a/c/r;->a(IIILorg/c/a/a/b/d/d/r;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Lorg/c/a/a/b/d/d/u;I)Lorg/c/a/a/b/d/b/p;
    .registers 7

    new-instance v1, Lorg/c/a/a/b/d/b/p;

    invoke-direct {v1}, Lorg/c/a/a/b/d/b/p;-><init>()V

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/b/d/d/u;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/c/a/a/b/d/d/h;

    if-ne v3, v4, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v3

    if-ge v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    invoke-virtual {v1, v0}, Lorg/c/a/a/b/d/b/p;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static b(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 14

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    if-ge v0, v4, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/y;

    if-eq v0, v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, p2

    check-cast v0, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hasNext"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->i()Ljava/lang/String;

    move-result-object v1

    const-string v3, "java/util/Iterator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v1, v3, :cond_5

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v3, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_7
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/b/g;

    if-eq v1, v3, :cond_8

    move-object v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v3, :cond_9

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/b/y;

    if-ne v1, v3, :cond_9

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->e()I

    move-result v1

    invoke-virtual {p2}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v3

    if-eq v1, v3, :cond_a

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v3

    const-string v6, "iterator"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->l()Ljava/lang/String;

    move-result-object v3

    const-string v6, "()Ljava/util/Iterator;"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-eq v0, v5, :cond_d

    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v6

    invoke-virtual {p3, v9}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/d/h;

    if-eq v1, v3, :cond_e

    move-object v0, v2

    goto/16 :goto_0

    :cond_e
    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/b/g;

    if-eq v1, v3, :cond_f

    move-object v0, v2

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v1, v3, :cond_10

    move-object v0, v2

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v7, Lorg/c/a/a/b/d/b/i;

    if-ne v3, v7, :cond_11

    check-cast v1, Lorg/c/a/a/b/d/b/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/i;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v7, Lorg/c/a/a/b/d/b/y;

    if-eq v3, v7, :cond_12

    move-object v0, v2

    goto/16 :goto_0

    :cond_12
    check-cast v1, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v3

    const-string v7, "next"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->i()Ljava/lang/String;

    move-result-object v3

    const-string v7, "java/util/Iterator"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v7, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-eq v3, v7, :cond_14

    :cond_13
    move-object v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-eq v1, v5, :cond_15

    move-object v0, v2

    goto/16 :goto_0

    :cond_15
    new-instance v7, Lorg/c/a/a/c/a/a/d/y;

    invoke-direct {v7, v5}, Lorg/c/a/a/c/a/a/d/y;-><init>(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {p3}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v8

    move v3, v4

    :goto_1
    if-lt v3, v8, :cond_16

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/d/y;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v0, v2

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p3, v3}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/r;

    invoke-interface {v1, v7}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_17
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    invoke-virtual {p3, v9}, Lorg/c/a/a/b/d/d/u;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    invoke-virtual {p0, v5}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/c/b;

    invoke-direct {v0, v1, v6, p3}, Lorg/c/a/a/c/a/a/a/b/c/b;-><init>(Lorg/c/a/a/c/a/a/a/c/a;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    goto/16 :goto_0
.end method
