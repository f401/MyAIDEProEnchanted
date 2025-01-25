.class public Lcom/a/b/f/a/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private final b:Z

.field private final c:Lcom/a/b/f/a/i;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/a/b/f/a/m;->b:Z

    iput-object p1, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-static {p1}, Lcom/a/b/f/a/j;->a(Lcom/a/b/f/ap;)Lcom/a/b/f/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/a/m;->c:Lcom/a/b/f/a/i;

    return-void
.end method

.method private a()Lcom/a/b/e/b/ab;
    .registers 6

    new-instance v0, Lcom/a/b/f/a/a;

    iget-object v1, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    iget-object v2, p0, Lcom/a/b/f/a/m;->c:Lcom/a/b/f/a/i;

    iget-boolean v3, p0, Lcom/a/b/f/a/m;->b:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/f/a/a;-><init>(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;Z)V

    invoke-virtual {v0}, Lcom/a/b/f/a/l;->b()Lcom/a/b/f/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/f/ap;->o()V

    iget-object v2, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ag;)V

    invoke-direct {p0}, Lcom/a/b/f/a/m;->c()V

    invoke-virtual {v0}, Lcom/a/b/f/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/a/b/f/a/m;->d()V

    :cond_25
    invoke-direct {p0}, Lcom/a/b/f/a/m;->b()V

    new-instance v0, Lcom/a/b/f/a/h;

    new-instance v1, Lcom/a/b/e/b/ab;

    invoke-direct {p0}, Lcom/a/b/f/a/m;->e()Lcom/a/b/e/b/d;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    iget-object v4, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v4}, Lcom/a/b/f/ap;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/a/b/f/ap;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/a/b/e/b/ab;-><init>(Lcom/a/b/e/b/d;I)V

    invoke-direct {v0, v1}, Lcom/a/b/f/a/h;-><init>(Lcom/a/b/e/b/ab;)V

    invoke-virtual {v0}, Lcom/a/b/f/a/h;->a()Lcom/a/b/e/b/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/a/b/f/ap;Z)Lcom/a/b/e/b/ab;
    .registers 3

    new-instance v0, Lcom/a/b/f/a/m;

    invoke-direct {v0, p0, p1}, Lcom/a/b/f/a/m;-><init>(Lcom/a/b/f/ap;Z)V

    invoke-direct {v0}, Lcom/a/b/f/a/m;->a()Lcom/a/b/e/b/ab;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Lcom/a/b/e/b/m;
    .registers 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/a/b/e/b/m;

    invoke-direct {v3, v2}, Lcom/a/b/e/b/m;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v2, :cond_11

    invoke-virtual {v3}, Lcom/a/b/e/b/m;->c_()V

    return-object v3

    :cond_11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->c()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method

.method private a(Lcom/a/b/f/aj;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    sget-object v1, Lcom/a/b/e/b/ac;->bD:Lcom/a/b/e/b/aa;

    if-eq v0, v1, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit predecessor must end in valid exit statement."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method

.method private b(Lcom/a/b/f/aj;)Lcom/a/b/e/b/b;
    .registers 7

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/a/b/f/aj;->n()Lcom/a/b/g/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/f/aj;->l()I

    move-result v3

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->f()Lcom/a/b/f/aj;

    move-result-object v0

    if-nez v0, :cond_3c

    move v0, v1

    :goto_12
    invoke-virtual {v2, v0}, Lcom/a/b/g/n;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_41

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exit predecessor must have no other successors"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/f/aj;->f()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-virtual {v0}, Lcom/a/b/f/aj;->f()I

    move-result v0

    goto :goto_12

    :cond_41
    sget-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, p1}, Lcom/a/b/f/a/m;->a(Lcom/a/b/f/aj;)V

    :goto_46
    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    new-instance v2, Lcom/a/b/e/b/b;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/a/b/f/a/m;->a(Ljava/util/ArrayList;)Lcom/a/b/e/b/m;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    return-object v2

    :cond_5b
    move-object v0, v2

    move v1, v3

    goto :goto_46
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    const/4 v2, 0x0

    new-instance v3, Lcom/a/b/f/a/n;

    invoke-direct {v3, p0, v0}, Lcom/a/b/f/a/n;-><init>(Lcom/a/b/f/a/m;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/a/b/f/ap;->a(ZLcom/a/b/f/al;)V

    return-void
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    return-void

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    new-instance v3, Lcom/a/b/f/a/o;

    invoke-direct {v3, v1}, Lcom/a/b/f/a/o;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/a/b/f/aj;->a(Lcom/a/b/f/ae;)V

    invoke-virtual {v0}, Lcom/a/b/f/aj;->b()V

    goto :goto_a

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->s()V

    goto :goto_14
.end method

.method private d()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->h()I

    move-result v1

    new-instance v2, Lcom/a/b/f/a;

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/a/b/f/a;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v3

    const/4 v0, 0x0

    :goto_19
    if-lt v0, v3, :cond_21

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ag;)V

    return-void

    :cond_21
    if-ge v0, v1, :cond_2c

    sub-int v4, v3, v1

    add-int/2addr v4, v0

    invoke-virtual {v2, v0, v4, v5}, Lcom/a/b/f/a;->a(III)V

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2c
    sub-int v4, v0, v1

    invoke-virtual {v2, v0, v4, v5}, Lcom/a/b/f/a;->a(III)V

    goto :goto_29
.end method

.method private e()Lcom/a/b/e/b/d;
    .registers 8

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->f()Lcom/a/b/f/aj;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/f/a/m;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->k()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/a/b/f/aj;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v0, v0, -0x1

    :cond_24
    new-instance v4, Lcom/a/b/e/b/d;

    invoke-direct {v4, v0}, Lcom/a/b/e/b/d;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    :cond_2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_49

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit block must have no insns when leaving SSA form"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    if-eq v0, v2, :cond_2f

    invoke-direct {p0, v0}, Lcom/a/b/f/a/m;->b(Lcom/a/b/f/aj;)Lcom/a/b/e/b/b;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/a/b/e/b/d;->a(ILcom/a/b/e/b/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_66
    return-object v4
.end method
