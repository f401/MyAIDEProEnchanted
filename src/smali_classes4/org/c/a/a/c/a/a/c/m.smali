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

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/c/m;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 3

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    :cond_21
    const/4 p1, 0x0

    :cond_22
    :goto_22
    return-object p1

    :sswitch_23
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p1

    goto :goto_22

    :sswitch_2c
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_38

    move-object p1, v0

    goto :goto_22

    :cond_38
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_22

    move-object p1, v0

    goto :goto_22

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_23
        0x4 -> :sswitch_23
        0x40 -> :sswitch_23
        0x80 -> :sswitch_23
        0x200 -> :sswitch_23
        0x400 -> :sswitch_23
        0x800 -> :sswitch_23
        0x1000 -> :sswitch_23
        0x2000 -> :sswitch_23
        0x8000 -> :sswitch_2c
        0x10000 -> :sswitch_2c
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_2c
        0x80000 -> :sswitch_2c
        0x100000 -> :sswitch_2c
        0x400000 -> :sswitch_23
    .end sparse-switch
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    if-eqz p2, :cond_61

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v0, v1, :cond_5c

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v0

    if-nez v0, :cond_4e

    const v0, 0x34433e85

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_5c

    invoke-static {p2}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    move v1, v0

    :goto_2c
    if-nez v1, :cond_32

    :cond_2e
    invoke-static {p2}, Lorg/c/a/a/c/a/a/c/m;->h(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_31
    return-object p2

    :cond_32
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v2

    add-int/2addr v1, v2

    move-object p2, v0

    goto :goto_2c

    :cond_4e
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v1

    if-le v0, v1, :cond_5c

    invoke-static {p2}, Lorg/c/a/a/c/a/a/c/m;->h(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_31

    :cond_5c
    invoke-static {p0, p2}, Lorg/c/a/a/c/a/a/c/m;->c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p2

    goto :goto_31

    :cond_61
    const/4 p2, 0x0

    goto :goto_31
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 6

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_f
.end method

.method protected static a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 10

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {p5}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_18
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

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-lt v0, p2, :cond_13

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_b0

    goto :goto_12

    :goto_2c
    :sswitch_2c
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_12

    :sswitch_34
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_2c

    :sswitch_3c
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    :sswitch_43
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_12

    :cond_59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_4b

    :sswitch_67
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    :sswitch_6e
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_12

    :sswitch_7d
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_12

    :sswitch_8c
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    :sswitch_93
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto :goto_9b

    nop

    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_2c
        0x4 -> :sswitch_2c
        0x40 -> :sswitch_93
        0x80 -> :sswitch_8c
        0x200 -> :sswitch_43
        0x400 -> :sswitch_3c
        0x800 -> :sswitch_3c
        0x1000 -> :sswitch_3c
        0x2000 -> :sswitch_34
        0x8000 -> :sswitch_34
        0x10000 -> :sswitch_6e
        0x20000 -> :sswitch_67
        0x40000 -> :sswitch_34
        0x80000 -> :sswitch_7d
        0x100000 -> :sswitch_7d
        0x400000 -> :sswitch_2c
        0x4000000 -> :sswitch_2c
        0x10000000 -> :sswitch_2c
        0x20000000 -> :sswitch_67
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

    if-ne v4, v5, :cond_1e

    invoke-virtual {p0, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    :cond_1e
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    if-ne v4, v6, :cond_2d

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->p()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    :cond_2d
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

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    :cond_12
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

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :sswitch_23
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_22

    :sswitch_2c
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_22

    :sswitch_31
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_22

    :sswitch_36
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->d(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_22

    :sswitch_3b
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->e(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_22

    :sswitch_40
    invoke-static {p0, p1, p2}, Lorg/c/a/a/c/a/a/c/m;->f(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    goto :goto_22

    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_23
        0x4 -> :sswitch_23
        0x40 -> :sswitch_31
        0x80 -> :sswitch_23
        0x200 -> :sswitch_36
        0x400 -> :sswitch_23
        0x800 -> :sswitch_23
        0x1000 -> :sswitch_23
        0x2000 -> :sswitch_3b
        0x8000 -> :sswitch_2c
        0x10000 -> :sswitch_23
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_2c
        0x80000 -> :sswitch_2c
        0x100000 -> :sswitch_2c
        0x200000 -> :sswitch_2c
        0x400000 -> :sswitch_40
        0x10000000 -> :sswitch_23
    .end sparse-switch
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 16

    const/16 v14, 0x38

    const/high16 v0, 0x20000

    const v8, 0x4b80413a  # 1.6810612E7f

    const v13, 0x34433e85

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    new-instance v10, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v10}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    if-ne v2, v4, :cond_23

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {p0, v0, v1, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    :goto_22
    return v0

    :cond_23
    invoke-virtual {v2, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gt v1, v7, :cond_38

    invoke-static {p0, v2, v2, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto :goto_22

    :cond_38
    const v1, 0x34433ebd

    invoke-virtual {v2, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_152

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_152

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

    if-eqz v1, :cond_6b

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    if-le v3, v5, :cond_1fe

    :cond_6b
    const v1, 0x7fffffff

    move-object v3, v2

    move v9, v1

    :goto_70
    if-eq v3, v6, :cond_92

    invoke-virtual {v6, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_92

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {v11, v1}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v1

    if-lt v1, v12, :cond_92

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-lt v1, v9, :cond_99

    :cond_92
    if-ne v6, v4, :cond_a7

    invoke-static {p0, v2, v3, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto :goto_22

    :cond_99
    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10, v6, v1}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    move-object v3, v6

    move-object v6, v1

    goto :goto_70

    :cond_a7
    invoke-virtual {v6, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, v9, :cond_b9

    invoke-static {p0, v2, v6, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_22

    :cond_b9
    invoke-virtual {v4, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, v9, :cond_d5

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_d5

    invoke-static {p0, v2, v6, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_d2
    move v0, v7

    goto/16 :goto_22

    :cond_d5
    move-object v1, p0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_d2

    :cond_db
    invoke-virtual {v4, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_152

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_152

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v5, v4

    :goto_f3
    if-eq v5, v1, :cond_10f

    invoke-virtual {v1, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v8

    if-eqz v8, :cond_10f

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ne v8, v7, :cond_10f

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v8

    invoke-virtual {v11, v8}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v8

    if-ge v8, v12, :cond_122

    :cond_10f
    if-ne v6, v1, :cond_135

    const/high16 v1, 0x30000000

    invoke-virtual {v3, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_130

    const/high16 v0, 0x20000000

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_11f
    move v0, v7

    goto/16 :goto_22

    :cond_122
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    invoke-virtual {v10, v1, v5}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    move-object v5, v1

    move-object v1, v8

    goto :goto_f3

    :cond_130
    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_11f

    :cond_135
    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, v9, :cond_149

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v7, :cond_149

    invoke-static {p0, v2, v6, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_11f

    :cond_149
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/c/a/a/c/a/a/c/m;->a(ILorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_11f

    :cond_152
    const v0, 0x34433ebd

    invoke-virtual {v4, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ne v0, v7, :cond_1b1

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v0, v4

    :goto_16d
    if-eq v0, v1, :cond_17f

    invoke-virtual {v1, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v3, v7, :cond_18a

    :cond_17f
    if-ne v1, v2, :cond_198

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    invoke-static {p0, v4, v0, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_22

    :cond_18a
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    move-object v0, v1

    move-object v1, v3

    goto :goto_16d

    :cond_198
    invoke-virtual {v1, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gt v0, v7, :cond_1b1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    invoke-static {p0, v4, v1, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_22

    :cond_1b1
    invoke-virtual {v2, v14}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1c1

    invoke-static {p0, v2}, Lorg/c/a/a/c/a/a/c/m;->d(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, v0, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_22

    :cond_1c1
    invoke-virtual {v2, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1fb

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v0, v2

    :goto_1cf
    if-eq v0, v1, :cond_1e1

    invoke-virtual {v1, v13}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1e1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq v0, v7, :cond_1ed

    :cond_1e1
    invoke-virtual {v1, v14}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1fb

    invoke-static {p0, v2, v1, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move v0, v7

    goto/16 :goto_22

    :cond_1ed
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    move-object v0, v1

    move-object v1, v3

    goto :goto_1cf

    :cond_1fb
    const/4 v0, 0x0

    goto/16 :goto_22

    :cond_1fe
    move-object v3, v2

    move v9, v1

    goto/16 :goto_70
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

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/c/ao;->a()V

    move-object v1, v0

    :goto_24
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v0, p1, :cond_e

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v1, v0, :cond_30

    const/4 v0, 0x1

    goto :goto_15

    :cond_30
    const v0, 0x4bbc413a  # 2.4674932E7f

    invoke-virtual {v1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x34433e85

    invoke-virtual {v1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :goto_46
    if-eq v1, v0, :cond_e

    invoke-virtual {v5, v1, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move-object v1, v0

    goto :goto_24

    :cond_4d
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_5b

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_46

    :cond_5b
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_93

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v0

    move-object v3, v4

    :cond_71
    :goto_71
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_79

    move-object v0, v3

    goto :goto_46

    :cond_79
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v8

    if-ge v2, v8, :cond_71

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    move v2, v0

    goto :goto_71

    :cond_93
    move-object v0, v4

    goto :goto_46
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

    if-ne v0, v5, :cond_53

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

    if-ne v4, v5, :cond_51

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_41

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_51

    :cond_41
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, p2, :cond_51

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v2

    if-ne v0, v2, :cond_51

    const/4 v0, 0x1

    :goto_50
    return v0

    :cond_51
    move v0, v1

    goto :goto_50

    :cond_53
    move v0, v1

    goto :goto_50
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

    const v8, 0x43800002  # 256.00006f

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, p1, :cond_26

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_27

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    goto :goto_26

    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v0, p1, :cond_67

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, p1, :cond_26

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_2f

    goto :goto_26

    :cond_67
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

    :goto_7c
    if-eq v1, v0, :cond_9b

    const v2, 0x34433e85

    invoke-virtual {v1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v7, :cond_9b

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v2

    if-le v5, v2, :cond_b2

    :cond_9b
    if-eq v1, v0, :cond_2f

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gt v1, v7, :cond_26

    const v1, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_26

    :cond_b2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    move-object v1, v0

    move-object v0, v2

    goto :goto_7c
.end method

.method protected static b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_a4

    :cond_28
    :goto_28
    return-void

    :sswitch_29
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_30
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_28

    :sswitch_38
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_3f
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_47

    :sswitch_5b
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_62
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_28

    :sswitch_71
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_28

    :sswitch_80
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :sswitch_87
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8f

    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_30
        0x4 -> :sswitch_30
        0x40 -> :sswitch_87
        0x80 -> :sswitch_80
        0x200 -> :sswitch_3f
        0x400 -> :sswitch_38
        0x800 -> :sswitch_38
        0x1000 -> :sswitch_38
        0x2000 -> :sswitch_29
        0x8000 -> :sswitch_29
        0x10000 -> :sswitch_62
        0x20000 -> :sswitch_5b
        0x40000 -> :sswitch_29
        0x80000 -> :sswitch_71
        0x100000 -> :sswitch_71
        0x400000 -> :sswitch_30
        0x4000000 -> :sswitch_30
        0x10000000 -> :sswitch_30
        0x20000000 -> :sswitch_5b
    .end sparse-switch
.end method

.method protected static b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 7

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_150

    :cond_21
    :goto_21
    return-void

    :sswitch_22
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_41

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_31
    :sswitch_31
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_49

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_21

    :cond_41
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_31

    :cond_49
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_21

    :sswitch_51
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_84

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_60
    :sswitch_60
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v2, v3, :cond_8c

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/a/b;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_68

    :cond_84
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_60

    :cond_8c
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_68

    :sswitch_94
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_c3

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_a3
    :sswitch_a3
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_cb

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_b2
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_d3

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_21

    :cond_c3
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_a3

    :cond_cb
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_b2

    :cond_d3
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_21

    :sswitch_dc
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_fc

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_eb
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_104

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_21

    :cond_fc
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_eb

    :cond_104
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_21

    :sswitch_10d
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v1, :cond_140

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_11c
    :sswitch_11c
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v2, v3, :cond_148

    invoke-static {p2, p1}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_124

    :cond_140
    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_11c

    :cond_148
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_124

    :sswitch_data_150
    .sparse-switch
        0x1 -> :sswitch_31
        0x4 -> :sswitch_31
        0x40 -> :sswitch_11c
        0x80 -> :sswitch_10d
        0x200 -> :sswitch_60
        0x400 -> :sswitch_51
        0x800 -> :sswitch_51
        0x1000 -> :sswitch_51
        0x2000 -> :sswitch_22
        0x8000 -> :sswitch_22
        0x10000 -> :sswitch_a3
        0x20000 -> :sswitch_94
        0x40000 -> :sswitch_22
        0x80000 -> :sswitch_dc
        0x100000 -> :sswitch_dc
        0x400000 -> :sswitch_31
        0x4000000 -> :sswitch_31
        0x10000000 -> :sswitch_31
        0x20000000 -> :sswitch_94
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

    if-nez v0, :cond_18

    const/high16 v0, 0x3c0000

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_30

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
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

    if-ne v4, v5, :cond_97

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v0, :cond_97

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    const v5, 0x48000

    invoke-virtual {v4, v5}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v5

    if-eqz v5, :cond_97

    const v5, 0x10000004

    invoke-virtual {v3, v5}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_65

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v0, :cond_65

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_65

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4}, Lorg/c/a/a/c/a/a/c/c;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v6

    neg-int v6, v6

    if-ne v5, v6, :cond_65

    invoke-static {p0, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :goto_64
    return v0

    :cond_65
    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v5, v3, :cond_77

    const/16 v5, 0x99

    invoke-static {v2, v4, v5}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-static {p0, v2, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_64

    :cond_77
    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v5, v3, :cond_89

    const/16 v5, 0x9a

    invoke-static {v2, v4, v5}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-static {p0, v2, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_64

    :cond_89
    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v0, :cond_97

    invoke-static {v2, v4}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_64

    :cond_97
    invoke-virtual {v2, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_11e

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->g()I

    move-result v4

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v5

    sub-int v4, v5, v4

    if-gt v4, v0, :cond_11e

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    invoke-virtual {v2, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_11e

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v0, :cond_11e

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v3, :cond_cb

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v8, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_64

    :cond_cb
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v3, :cond_d9

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->d(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v9, v2}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_64

    :cond_d9
    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_11e

    invoke-static {v3}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_11e

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_102

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_102

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_64

    :cond_102
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_11e

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_11e

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->e(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    goto/16 :goto_64

    :cond_11e
    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_162

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->g()I

    move-result v4

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->f()I

    move-result v5

    sub-int v4, v5, v4

    if-gt v4, v0, :cond_162

    invoke-static {v3}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_162

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v0, :cond_162

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v2, :cond_153

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v9, v3}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_64

    :cond_153
    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    if-ne v4, v2, :cond_162

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/m;->d(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, v8, v3}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;ILorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_64

    :cond_162
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const v3, 0x8000

    if-ne v2, v3, :cond_172

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto/16 :goto_64

    :cond_172
    move v0, v1

    goto/16 :goto_64
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0, p2}, Lorg/c/a/a/c/a/a/c/c;->a(Lorg/c/a/a/c/a/a/a/a/a;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_f

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    const v2, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {v1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    if-ge v2, v3, :cond_3f

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

    if-lt v1, v3, :cond_f

    :cond_3f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected static c(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_ca

    :cond_22
    :goto_22
    return-object v0

    :sswitch_23
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_2b
    if-nez v0, :cond_22

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_22

    :sswitch_36
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_3e
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_58

    if-nez v1, :cond_c6

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_22

    :cond_58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    if-nez v1, :cond_47

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_47

    :sswitch_6a
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_72
    if-nez v0, :cond_7c

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :cond_7c
    if-nez v0, :cond_22

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_22

    :sswitch_87
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->n()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_22

    :sswitch_9a
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :sswitch_a2
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_ab
    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b4

    move-object v0, v1

    goto/16 :goto_22

    :cond_b4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    if-nez v1, :cond_ab

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_ab

    :cond_c6
    move-object v0, v1

    goto/16 :goto_22

    nop

    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_2b
        0x4 -> :sswitch_2b
        0x40 -> :sswitch_a2
        0x80 -> :sswitch_9a
        0x200 -> :sswitch_3e
        0x400 -> :sswitch_36
        0x800 -> :sswitch_36
        0x1000 -> :sswitch_36
        0x2000 -> :sswitch_23
        0x8000 -> :sswitch_23
        0x10000 -> :sswitch_72
        0x20000 -> :sswitch_6a
        0x40000 -> :sswitch_23
        0x80000 -> :sswitch_87
        0x100000 -> :sswitch_87
        0x200000 -> :sswitch_23
        0x400000 -> :sswitch_2b
        0x4000000 -> :sswitch_2b
        0x10000000 -> :sswitch_2b
        0x20000000 -> :sswitch_6a
    .end sparse-switch
.end method

.method protected static c(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 6

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_1d

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

    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    goto :goto_1c
.end method

.method protected static c(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    new-instance v2, Lorg/c/a/a/c/a/a/c/ao;

    invoke-direct {v2}, Lorg/c/a/a/c/a/a/c/ao;-><init>()V

    :goto_9
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v1, p1, :cond_18

    const v1, 0x34433e85

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-nez v1, :cond_60

    :cond_18
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    if-le v0, p1, :cond_5f

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_5f

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

    :cond_5f
    return-object p0

    :cond_60
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    move-object p0, v0

    move-object v0, v1

    goto :goto_9
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

    const/high16 v2, 0x40000000  # 2.0f

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

    if-ne p1, v0, :cond_40

    :goto_c
    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-object p0

    :cond_13
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p0

    goto :goto_c

    :cond_1f
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/c/a/a/c/a/a/c/ao;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eq v0, p1, :cond_32

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-le v2, p2, :cond_3f

    :cond_32
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_12

    :cond_3f
    move-object p0, v0

    :cond_40
    invoke-virtual {p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_12
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

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ad

    if-nez v1, :cond_17

    move-object v1, v3

    :cond_17
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c9

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v0

    :cond_36
    :goto_36
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e1

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v5, v0, :cond_101

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, v2, :cond_59

    invoke-static {p1, v4}, Lorg/c/a/a/c/a/a/c/m;->a(Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/m;->b(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v2}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_59
    :goto_59
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_61
    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10b

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, v2, :cond_136

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_75
    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_125

    :cond_7b
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_156

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_168

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

    :cond_ad
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v7

    if-ge v4, v7, :cond_bd

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v4

    :cond_bd
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->d()Z

    move-result v7

    if-eqz v7, :cond_c6

    move-object v3, v0

    goto/16 :goto_e

    :cond_c6
    move-object v1, v0

    goto/16 :goto_e

    :cond_c9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->b()I

    move-result v0

    if-ne v0, v4, :cond_dc

    move-object v2, v5

    goto/16 :goto_29

    :cond_dc
    invoke-static {v7, v5, v4, v8}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    goto/16 :goto_29

    :cond_e1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    const v10, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {v0, v10}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v10

    if-nez v10, :cond_36

    sget-object v10, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v5, v10, :cond_fe

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v10

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v11

    if-ge v10, v11, :cond_36

    :cond_fe
    move-object v5, v0

    goto/16 :goto_36

    :cond_101
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-static {v7, v2, v0, v8}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;ILjava/util/HashSet;)V

    move-object v2, v5

    goto/16 :goto_59

    :cond_10b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_61

    sget-object v5, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v2, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_61

    :cond_125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_75

    :cond_136
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13e
    :goto_13e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    if-ne v3, v2, :cond_13e

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_13e

    :cond_156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_84

    :cond_168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    sget-boolean v0, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v0, :cond_17e

    if-ne v5, v2, :cond_17e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17e
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-le v7, v6, :cond_92

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18c
    :goto_18c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v0, p1, :cond_18c

    sget-object v8, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v5, v8}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_18c
.end method

.method protected static d(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/c/a/a/a/a/f;->a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_1b
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

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    move v2, v0

    :goto_11
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

    if-eqz v3, :cond_46

    const/4 v3, 0x0

    :cond_2b
    :goto_2b
    return v3

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_11

    :cond_46
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

    :cond_57
    :goto_57
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_80

    if-eqz v4, :cond_123

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_102

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_115

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto :goto_2b

    :cond_80
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_95

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-static {p0, v9, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v9

    and-int/2addr v3, v9

    :cond_95
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    const v9, 0x4400c243

    invoke-virtual {v0, v9}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v9

    if-eqz v9, :cond_a4

    const/4 v3, 0x0

    goto :goto_2b

    :cond_a4
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v9

    if-ge v5, v9, :cond_ae

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    :cond_ae
    if-eqz v4, :cond_57

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_be

    const/4 v0, 0x0

    move v4, v0

    goto :goto_57

    :cond_be
    sget-boolean v9, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v9, :cond_cf

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_cf

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_cf
    if-nez v2, :cond_f8

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v0, p1, :cond_d5

    sget-boolean v2, Lorg/c/a/a/c/a/a/c/m;->a:Z

    if-nez v2, :cond_f5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v9, 0x200

    if-eq v2, v9, :cond_f5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f5
    move-object v2, v0

    goto/16 :goto_57

    :cond_f8
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_57

    :cond_102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_67

    :cond_115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, p1, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6, p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_75

    :cond_123
    if-eqz v3, :cond_2b

    invoke-static {p1, v5}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    invoke-static {v6, v8, v5}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    if-eqz v1, :cond_208

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_208

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v2, 0x400

    if-ne v0, v2, :cond_208

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v2, :cond_208

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ne v0, v2, :cond_208

    invoke-static {v6}, Lorg/c/a/a/c/a/a/c/m;->f(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_208

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

    :goto_16d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b6

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    :goto_186
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v5

    :cond_18f
    :goto_18f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1cb

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1, v8}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v8}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_1ff

    if-eqz v1, :cond_1f9

    invoke-static {p1, v1, v5}, Lorg/c/a/a/c/a/a/c/m;->b(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Z

    move-result v0

    if-eqz v0, :cond_1f9

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    :goto_1b1
    invoke-virtual {p1, v2}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    goto/16 :goto_2b

    :cond_1b6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    :cond_1cb
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    if-ne v9, v8, :cond_1dd

    sget-object v9, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v9}, Lorg/c/a/a/c/a/a/a/a/b;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_18f

    :cond_1dd
    invoke-virtual {v9}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ne v0, v5, :cond_1f7

    invoke-virtual {v8}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    :goto_1e7
    invoke-static {v9, v8, v0}, Lorg/c/a/a/c/a/a/c/m;->c(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v9

    if-ge v2, v9, :cond_18f

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    move v2, v0

    goto :goto_18f

    :cond_1f7
    move v0, v5

    goto :goto_1e7

    :cond_1f9
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto :goto_1b1

    :cond_1ff
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/m;->g(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1b1

    :cond_208
    move-object v4, v6

    goto/16 :goto_186
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

    if-eqz v3, :cond_93

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x3

    if-le v0, v3, :cond_5e

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/c;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_46

    invoke-virtual {p1, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_45
    :goto_45
    return v0

    :cond_46
    const/4 v3, 0x5

    if-le v0, v3, :cond_5e

    invoke-virtual {p1, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_45

    :cond_5e
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

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_93
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-le v1, v2, :cond_45

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_b2
    :goto_b2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ba

    move v0, v1

    goto :goto_45

    :cond_ba
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v0, p1, :cond_b2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v5

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_b2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    if-ne v5, v3, :cond_b2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_ea

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_b2

    :cond_ea
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v0, p1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    :cond_fb
    move v0, v2

    goto/16 :goto_45
.end method

.method protected static f(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 11

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_c7

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

    if-eqz v3, :cond_5c

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

    :cond_5c
    if-nez v1, :cond_b1

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    sget-object v5, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v4, v5, :cond_b1

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

    :goto_98
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_bb

    invoke-virtual {v4, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    invoke-static {v2, v4, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    :cond_b1
    :goto_b1
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lorg/c/a/a/c/a/a/c/m;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    and-int/2addr v0, v1

    return v0

    :cond_bb
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v7, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_98

    :cond_c7
    move-object v0, p0

    goto :goto_b1
.end method

.method protected static f(Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected static g(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    const/16 v0, 0x1c00

    invoke-virtual {v1, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->m()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_41

    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3, v1, p0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2d
.end method

.method protected static h(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    return-void

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    sget-object v3, Lorg/c/a/a/c/a/a/a/a/a;->f:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, p0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8
.end method
