.class public Lorg/c/a/a/c/a/a/c/m;
.super Ljava/lang/Object;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/c/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/a/a/c/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 3

    const v0, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1

    :sswitch_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_1
        0x400000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x34433e85

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_3

    invoke-static {p2}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/c/a/a/c/a/a/c/m;->h(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v2

    add-int/2addr v1, v2

    move-object p2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-static {p2}, Lorg/c/a/a/c/a/a/c/m;->h(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, p2}, Lorg/c/a/a/c/a/a/c/m;->c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_1
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 6

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method protected static a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 10

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {p5}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_0
    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p3, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p5, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1, p2}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1, p4}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1, p6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    return-void
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V
    .registers 6

    const v0, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-lt v0, p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :goto_1
    :sswitch_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    :sswitch_3
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    :sswitch_5
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    :sswitch_8
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_1
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_6
        0x400000 -> :sswitch_0
        0x4000000 -> :sswitch_0
        0x10000000 -> :sswitch_0
        0x20000000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 9

    const/high16 v6, 0x40000

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    const v5, 0x8000

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->p()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    :cond_1
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->b(I)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    sget-object v4, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    sget-object v4, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->l()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    const/high16 v4, 0x200000

    invoke-virtual {p0, v4}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->b(I)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v2, p1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3, p1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p0, p2}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, p3}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    return-void
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    const/4 v1, 0x0

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p0, p2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Z)V

    invoke-virtual {p2, p1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    return-void
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 7

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_0
    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p2, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/high16 v2, 0x10000

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, p3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    return-void
.end method

.method public static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 4

    const v0, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->d(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->e(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->f(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x40 -> :sswitch_2
        0x80 -> :sswitch_0
        0x200 -> :sswitch_3
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_4
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_1
        0x400000 -> :sswitch_5
        0x10000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 16

    const/16 v14, 0x38

    const/high16 v0, 0x20000

    const v8, 0x4b80413a    # 1.6810612E7f

    const v13, 0x34433e85

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    new-instance v10, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v10}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    if-ne v2, v4, :cond_0

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {p0, v0, v1, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gt v1, v7, :cond_1

    invoke-static {p0, v2, v2, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto :goto_0

    :cond_1
    const v1, 0x34433ebd

    invoke-virtual {v2, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_e

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v11

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {v11, v1}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v12

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    if-le v3, v5, :cond_17

    :cond_2
    const v1, 0x7fffffff

    move-object v3, v2

    move v9, v1

    :goto_1
    if-eq v3, v6, :cond_3

    invoke-virtual {v6, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {v11, v1}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v1

    if-lt v1, v12, :cond_3

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-lt v1, v9, :cond_4

    :cond_3
    if-ne v6, v4, :cond_5

    invoke-static {p0, v2, v3, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10, v6, v1}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    move-object v3, v6

    move-object v6, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, v9, :cond_6

    invoke-static {p0, v2, v6, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, v9, :cond_7

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_7

    invoke-static {p0, v2, v6, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_2
    move v0, v7

    goto/16 :goto_0

    :cond_7
    move-object v1, p0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_e

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v5, v4

    :goto_3
    if-eq v5, v1, :cond_9

    invoke-virtual {v1, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ne v8, v7, :cond_9

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v8

    invoke-virtual {v11, v8}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v8

    if-ge v8, v12, :cond_a

    :cond_9
    if-ne v6, v1, :cond_c

    const/high16 v1, 0x30000000

    invoke-virtual {v3, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v0, 0x20000000

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_4
    move v0, v7

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    invoke-virtual {v10, v1, v5}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    move-object v5, v1

    move-object v1, v8

    goto :goto_3

    :cond_b
    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, v9, :cond_d

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_d

    invoke-static {p0, v2, v6, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4

    :cond_e
    const v0, 0x34433ebd

    invoke-virtual {v4, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ne v0, v7, :cond_12

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v0, v4

    :goto_5
    if-eq v0, v1, :cond_f

    invoke-virtual {v1, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v3, v7, :cond_10

    :cond_f
    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    invoke-static {p0, v4, v0, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    move-object v0, v1

    move-object v1, v3

    goto :goto_5

    :cond_11
    invoke-virtual {v1, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gt v0, v7, :cond_12

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    invoke-static {p0, v4, v1, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v2, v14}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0, v2}, Lorg/c/a/a/c/a/a/c/m;->d(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, v0, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v2, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v0, v2

    :goto_6
    if-eq v0, v1, :cond_14

    invoke-virtual {v1, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq v0, v7, :cond_15

    :cond_14
    invoke-virtual {v1, v14}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, v2, v1, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    move-object v0, v1

    move-object v1, v3

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_17
    move-object v3, v2

    move v9, v1

    goto/16 :goto_1
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;I)Z
    .registers 11

    const/4 v4, 0x0

    new-instance v5, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v5}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v0, p1, :cond_0

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x4bbc413a    # 2.4674932E7f

    invoke-virtual {v1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x34433e85

    invoke-virtual {v1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :goto_2
    if-eq v1, v0, :cond_0

    invoke-virtual {v5, v1, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_7

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v0

    move-object v3, v4

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v8

    if-ge v2, v8, :cond_5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_7
    move-object v0, v4

    goto :goto_2
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z
    .registers 9

    const/4 v5, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    sub-int/2addr v0, v2

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/f;->a()Lorg/c/a/a/b/a/d;

    move-result-object v0

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/f;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/a/f;->a()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    aget-byte v4, v0, v2

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    :cond_0
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, p2, :cond_1

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/c/a/a/c/a/a/a/a/f;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/f;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    new-instance v2, Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/f;->b()Lorg/c/a/a/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/d/c;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-static {v2, v0, v1}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    return v0
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 11

    const v8, 0x43800002    # 256.00006f

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v0, p1, :cond_4

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v4

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v5

    new-instance v6, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v6}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :goto_1
    if-eq v1, v0, :cond_5

    const v2, 0x34433e85

    invoke-virtual {v1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v7, :cond_5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v2

    if-le v5, v2, :cond_6

    :cond_5
    if-eq v1, v0, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gt v1, v7, :cond_0

    const v1, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method protected static b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    const v0, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_3
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_5
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_8
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_6
        0x400000 -> :sswitch_1
        0x4000000 -> :sswitch_1
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 7

    const v0, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_1

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_1
    :sswitch_1
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_2

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_3

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_2
    :sswitch_3
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v2, v3, :cond_4

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/a/b;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_3

    :sswitch_4
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_5

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_4
    :sswitch_5
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_6

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_5
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_7

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_8

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_6
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_9

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_a

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_7
    :sswitch_8
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v2, v3, :cond_b

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8

    :cond_a
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_6
        0x400000 -> :sswitch_1
        0x4000000 -> :sswitch_1
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 3

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    return-void
.end method

.method protected static b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 5

    :cond_0
    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3c0000

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 11

    const/high16 v9, 0x100000

    const/high16 v8, 0x80000

    const v7, 0x3c8000

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    const/high16 v5, 0x10000000

    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v0, :cond_3

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    const v5, 0x48000

    invoke-virtual {v4, v5}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x10000004

    invoke-virtual {v3, v5}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v6

    neg-int v6, v6

    if-ne v5, v6, :cond_0

    invoke-static {p0, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v5, v3, :cond_1

    const/16 v5, 0x99

    invoke-static {v2, v4, v5}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0, v2, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v5, v3, :cond_2

    const/16 v5, 0x9a

    invoke-static {v2, v4, v5}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, v2, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v0, :cond_3

    invoke-static {v2, v4}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->g()I

    move-result v4

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v5

    sub-int v4, v5, v4

    if-gt v4, v0, :cond_7

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    invoke-virtual {v2, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v0, :cond_7

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v3, :cond_4

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v8, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v3, :cond_5

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->d(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v9, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_6

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_6

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_7

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_7

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->g()I

    move-result v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v5

    sub-int v4, v5, v4

    if-gt v4, v0, :cond_9

    invoke-static {v3}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v0, :cond_9

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v2, :cond_8

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v9, v3}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v2, :cond_9

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->d(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v8, v3}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const v3, 0x8000

    if-ne v2, v3, :cond_a

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0, p2}, Lorg/c/a/a/c/a/a/c/c;->a(Lorg/c/a/a/c/a/a/a/a/a;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    const v2, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {v1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v3

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v1

    if-lt v1, v3, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_3
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_5
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_8
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_6
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_1
        0x4000000 -> :sswitch_1
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static c(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 6

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/c/a/a/c/a/a/a/a/f;->a(IIIZ)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    goto :goto_0
.end method

.method protected static c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    new-instance v2, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v2}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, p1, :cond_0

    const v1, 0x34433e85

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    move-object p0, v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected static c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;->a(IIILjava/util/HashSet;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected static c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    const v3, 0x34433e85

    new-instance v1, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v1}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne p1, v0, :cond_4

    :goto_0
    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-le v2, p2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1

    :cond_3
    move-object p0, v0

    :cond_4
    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method protected static c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 15

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, -0x1

    move-object v1, v2

    move-object v3, v2

    move v4, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v1, :cond_0

    move-object v1, v3

    :cond_0
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v0

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v5, v0, :cond_e

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, v2, :cond_2

    invoke-static {p1, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v2}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, v2, :cond_11

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_5
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    and-int/2addr v0, v1

    return v0

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v4

    :cond_8
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v3, v0

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    goto/16 :goto_0

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v0

    if-ne v0, v4, :cond_b

    move-object v2, v5

    goto/16 :goto_1

    :cond_b
    invoke-static {v7, v5, v4, v8}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto/16 :goto_1

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    const v10, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {v0, v10}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v5, v10, :cond_d

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v10

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v11

    if-ge v10, v11, :cond_1

    :cond_d
    move-object v5, v0

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-static {v7, v2, v0, v8}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    move-object v2, v5

    goto/16 :goto_3

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v2, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    if-ne v3, v2, :cond_12

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_7

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_6

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    sget-boolean v0, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v0, :cond_15

    if-ne v5, v2, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-le v7, v6, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v0, p1, :cond_16

    sget-object v8, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v5, v8}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_8
.end method

.method protected static d(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method protected static d(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 6

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    return-object v0
.end method

.method protected static d(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 14

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-static {p1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    const v3, 0x4400c243

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :cond_1
    :goto_1
    return v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    and-int v3, v2, v0

    const/4 v4, 0x1

    const/4 v0, 0x0

    move-object v2, v0

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v4, :cond_10

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto :goto_1

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-static {p0, v9, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v9

    and-int/2addr v3, v9

    :cond_6
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    const v9, 0x4400c243

    invoke-virtual {v0, v9}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v9

    if-ge v5, v9, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    :cond_8
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    :cond_9
    sget-boolean v9, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v9, :cond_a

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    if-nez v2, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v0, p1, :cond_b

    sget-boolean v2, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v9, 0x200

    if-eq v2, v9, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    move-object v2, v0

    goto/16 :goto_2

    :cond_d
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_2

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, p1, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6, p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_4

    :cond_10
    if-eqz v3, :cond_1

    invoke-static {p1, v5}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    invoke-static {v6, v8, v5}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v2, 0x400

    if-ne v0, v2, :cond_18

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v2, :cond_18

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ne v0, v2, :cond_18

    invoke-static {v6}, Lorg/c/a/a/c/a/a/c/m;->f(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/c/a/a/d/c;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    :goto_6
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v5

    :cond_11
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1, v8}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v8}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_17

    if-eqz v1, :cond_16

    invoke-static {p1, v1, v5}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    :goto_8
    invoke-virtual {p1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    goto/16 :goto_1

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    if-ne v9, v8, :cond_14

    sget-object v9, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v9}, Lorg/c/a/a/c/a/a/a/a/b;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_7

    :cond_14
    invoke-virtual {v9}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ne v0, v5, :cond_15

    invoke-virtual {v8}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    :goto_9
    invoke-static {v9, v8, v0}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v9

    if-ge v2, v9, :cond_11

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    move v2, v0

    goto :goto_7

    :cond_15
    move v0, v5

    goto :goto_9

    :cond_16
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto :goto_8

    :cond_17
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/m;->g(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8

    :cond_18
    move-object v4, v6

    goto/16 :goto_6
.end method

.method protected static e(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 7

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    const/high16 v3, 0x200000

    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method protected static e(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 10

    const/4 v5, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v3

    and-int/2addr v0, v3

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/c;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x5

    if-le v0, v3, :cond_2

    invoke-virtual {p1, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v0, p1, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v5

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v5, v3, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v0, p1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method protected static f(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 11

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/c/a/a/c/a/a/c/m;->c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    sget-object v5, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v4, v5}, Lorg/c/a/a/c/a/a/a/a/a;->c(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v4, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    sget-object v5, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    invoke-static {v2, v4, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    and-int/2addr v0, v1

    return v0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v7, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method

.method protected static f(Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static g(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    const/16 v0, 0x1c00

    invoke-virtual {v1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3, v1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0
.end method

.method protected static h(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->f:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0
.end method
