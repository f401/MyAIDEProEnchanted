.class public final Lcom/a/b/c/b/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/a;

.field private final b:I

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/a/b/c/a;III)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/c/b/ab;->a:Lcom/a/b/c/a;

    iput p3, p0, Lcom/a/b/c/b/ab;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/c/b/ab;->f:I

    iput-boolean v1, p0, Lcom/a/b/c/b/ab;->d:Z

    iput-boolean v1, p0, Lcom/a/b/c/b/ab;->e:Z

    iput p4, p0, Lcom/a/b/c/b/ab;->h:I

    return-void
.end method

.method private a(Lcom/a/b/c/b/l;Lcom/a/b/c/b/n;)Lcom/a/b/c/b/n;
    .registers 5

    :goto_0
    if-nez p2, :cond_3

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p2}, Lcom/a/b/c/b/n;->c()Lcom/a/b/c/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/r;->b(Lcom/a/b/c/b/l;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/a/b/c/b/ab;->a:Lcom/a/b/c/a;

    iget-boolean v0, v0, Lcom/a/b/c/a;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/a/b/c/b/n;->a()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    :cond_1b
    iget-object v0, p0, Lcom/a/b/c/b/ab;->a:Lcom/a/b/c/a;

    invoke-static {p2, v0}, Lcom/a/b/c/b/o;->a(Lcom/a/b/c/b/n;Lcom/a/b/c/a;)Lcom/a/b/c/b/n;

    move-result-object p2

    goto :goto_0
.end method

.method private a(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/c/b/ab;->d(I)V

    iget v0, p0, Lcom/a/b/c/b/ab;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/b/c/b/ab;->g:I

    return-void
.end method

.method private static a(Lcom/a/b/c/b/i;Lcom/a/b/c/b/k;)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/b/c/b/k;->a(Lcom/a/b/e/c/a;)I

    move-result v1

    if-ltz v1, :cond_d

    invoke-virtual {p0, v1}, Lcom/a/b/c/b/i;->a(I)V

    :cond_d
    instance-of v1, v0, Lcom/a/b/e/c/x;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/a/b/e/c/x;

    invoke-virtual {v0}, Lcom/a/b/e/c/x;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/b/c/b/k;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-ltz v0, :cond_20

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/i;->b(I)V

    :cond_20
    return-void
.end method

.method private static a(Lcom/a/b/c/b/y;Lcom/a/b/c/b/k;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/a/b/c/b/y;->c()I

    move-result v0

    if-lt v1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v1}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/b/c/b/k;->a(Lcom/a/b/e/c/a;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/a/b/c/b/y;->a(II)V

    instance-of v2, v0, Lcom/a/b/e/c/x;

    if-eqz v2, :cond_25

    check-cast v0, Lcom/a/b/e/c/x;

    invoke-virtual {v0}, Lcom/a/b/e/c/x;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/b/c/b/k;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/y;->f(I)V

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private static a(Ljava/util/HashSet;Lcom/a/b/c/b/l;)V
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/c/b/i;

    if-eqz v1, :cond_f

    check-cast p1, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_e
    return-void

    :cond_f
    instance-of v1, p1, Lcom/a/b/c/b/y;

    if-eqz v1, :cond_25

    check-cast p1, Lcom/a/b/c/b/y;

    :goto_15
    invoke-virtual {p1}, Lcom/a/b/c/b/y;->c()I

    move-result v1

    if-ge v0, v1, :cond_e

    invoke-virtual {p1, v0}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    instance-of v1, p1, Lcom/a/b/c/b/w;

    if-eqz v1, :cond_3f

    check-cast p1, Lcom/a/b/c/b/w;

    invoke-virtual {p1}, Lcom/a/b/c/b/w;->c()Lcom/a/b/e/b/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/z;->d()I

    move-result v2

    :goto_33
    if-ge v0, v2, :cond_e

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/a/b/c/b/ab;->a(Ljava/util/HashSet;Lcom/a/b/e/b/u;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_3f
    instance-of v0, p1, Lcom/a/b/c/b/x;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/a/b/c/b/x;

    invoke-virtual {p1}, Lcom/a/b/c/b/x;->c()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/a/b/c/b/ab;->a(Ljava/util/HashSet;Lcom/a/b/e/b/u;)V

    goto :goto_e
.end method

.method private static a(Ljava/util/HashSet;Lcom/a/b/e/b/u;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/o;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/b/e/b/o;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    sget-object v3, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-eq v2, v3, :cond_29

    invoke-static {v2}, Lcom/a/b/e/c/ae;->b(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/ae;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1e
    if-eqz v1, :cond_23

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_29
    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-static {v2}, Lcom/a/b/e/c/ae;->b(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/ae;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method private static a(Lcom/a/b/e/b/u;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/o;->a()Lcom/a/b/e/c/ad;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a([Lcom/a/b/c/b/n;)Z
    .registers 11

    const/4 v1, 0x0

    iget v0, p0, Lcom/a/b/c/b/ab;->f:I

    if-gez v0, :cond_11

    move v0, v1

    :goto_6
    move v2, v1

    move v3, v0

    :goto_8
    invoke-direct {p0, p1}, Lcom/a/b/c/b/ab;->b([Lcom/a/b/c/b/n;)I

    move-result v4

    if-lt v3, v4, :cond_14

    iput v3, p0, Lcom/a/b/c/b/ab;->f:I

    return v2

    :cond_11
    iget v0, p0, Lcom/a/b/c/b/ab;->f:I

    goto :goto_6

    :cond_14
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v1

    :goto_1c
    if-lt v5, v6, :cond_20

    move v3, v4

    goto :goto_8

    :cond_20
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    instance-of v7, v0, Lcom/a/b/c/b/h;

    if-nez v7, :cond_37

    iget-object v7, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    sub-int v8, v4, v3

    invoke-virtual {v0, v8}, Lcom/a/b/c/b/l;->d(I)Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1c
.end method

.method private b([Lcom/a/b/c/b/n;)I
    .registers 8

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v1, p0, Lcom/a/b/c/b/ab;->f:I

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-lt v2, v3, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    aget-object v4, p1, v2

    invoke-direct {p0, v0, v4}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/l;Lcom/a/b/c/b/n;)Lcom/a/b/c/b/n;

    move-result-object v5

    if-nez v5, :cond_35

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->d(Lcom/a/b/c/b/l;)Lcom/a/b/c/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/c/b/n;->c()Lcom/a/b/c/b/r;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/a/b/c/b/r;->c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/a/b/c/b/l;->a(Ljava/util/BitSet;)I

    move-result v0

    if-le v0, v1, :cond_37

    :goto_2f
    aput-object v5, p1, v2

    :goto_31
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_a

    :cond_35
    if-eq v4, v5, :cond_39

    :cond_37
    move v0, v1

    goto :goto_2f

    :cond_39
    move v0, v1

    goto :goto_31
.end method

.method private b(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/c/b/ab;->c(I)V

    iget v0, p0, Lcom/a/b/c/b/ab;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/b/c/b/ab;->f:I

    return-void
.end method

.method private static b(Lcom/a/b/c/b/l;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    instance-of v2, p0, Lcom/a/b/c/b/w;

    if-eqz v2, :cond_22

    check-cast p0, Lcom/a/b/c/b/w;

    invoke-virtual {p0}, Lcom/a/b/c/b/w;->c()Lcom/a/b/e/b/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/z;->d()I

    move-result v4

    move v2, v1

    :goto_11
    if-lt v2, v4, :cond_15

    :cond_13
    move v0, v1

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-virtual {v3, v2}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/e/b/u;)Z

    move-result v5

    if-nez v5, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_22
    instance-of v2, p0, Lcom/a/b/c/b/x;

    if-eqz v2, :cond_13

    check-cast p0, Lcom/a/b/c/b/x;

    invoke-virtual {p0}, Lcom/a/b/c/b/x;->c()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/e/b/u;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_14
.end method

.method private c(I)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    instance-of v3, v0, Lcom/a/b/c/b/h;

    if-nez v3, :cond_20

    iget-object v3, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/l;->d(I)Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method private c(Lcom/a/b/c/b/l;)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/a/b/c/b/ab;->d:Z

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->k()Lcom/a/b/e/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/ad;->a()I

    move-result v0

    if-ltz v0, :cond_11

    iput-boolean v1, p0, Lcom/a/b/c/b/ab;->d:Z

    :cond_11
    iget-boolean v0, p0, Lcom/a/b/c/b/ab;->e:Z

    if-nez v0, :cond_1d

    invoke-static {p1}, Lcom/a/b/c/b/ab;->b(Lcom/a/b/c/b/l;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/a/b/c/b/ab;->e:Z

    :cond_1d
    return-void
.end method

.method private c([Lcom/a/b/c/b/n;)V
    .registers 7

    iget v0, p0, Lcom/a/b/c/b/ab;->f:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-lt v1, v2, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_28

    iget-object v3, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/a/b/c/b/l;->a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_2c
    invoke-direct {p0, p1}, Lcom/a/b/c/b/ab;->d([Lcom/a/b/c/b/n;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    goto :goto_e
.end method

.method private d(Lcom/a/b/c/b/l;)Lcom/a/b/c/b/n;
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->n()Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/l;Lcom/a/b/c/b/n;)Lcom/a/b/c/b/n;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Lcom/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No expanded opcode for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return-object v0
.end method

.method private d([Lcom/a/b/c/b/n;)Ljava/util/ArrayList;
    .registers 13

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    mul-int/lit8 v0, v7, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_15
    if-lt v6, v7, :cond_18

    return-object v8

    :cond_18
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v10

    aget-object v5, p1, v6

    if-eqz v5, :cond_42

    move-object v2, v3

    move-object v4, v3

    move-object v1, v0

    :goto_2b
    nop

    instance-of v0, v1, Lcom/a/b/c/b/h;

    if-eqz v0, :cond_5b

    move-object v0, v1

    check-cast v0, Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_5b

    check-cast v1, Lcom/a/b/c/b/h;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_15

    :cond_42
    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->d(Lcom/a/b/c/b/l;)Lcom/a/b/c/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/c/b/n;->c()Lcom/a/b/c/b/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/c/b/r;->c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/l;->b(Ljava/util/BitSet;)Lcom/a/b/c/b/l;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/l;->c(Ljava/util/BitSet;)Lcom/a/b/c/b/l;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/l;->d(Ljava/util/BitSet;)Lcom/a/b/c/b/l;

    move-result-object v1

    goto :goto_2b

    :cond_5b
    if-eqz v2, :cond_60

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    instance-of v0, v1, Lcom/a/b/c/b/ao;

    if-nez v0, :cond_77

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_77

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_77
    if-eq v5, v10, :cond_7d

    invoke-virtual {v1, v5}, Lcom/a/b/c/b/l;->a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;

    move-result-object v1

    :cond_7d
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_3e

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/h;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e
.end method

.method private d(I)V
    .registers 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v1, p0, Lcom/a/b/c/b/ab;->b:I

    iget v3, p0, Lcom/a/b/c/b/ab;->f:I

    iget v4, p0, Lcom/a/b/c/b/ab;->g:I

    add-int/2addr v1, v3

    add-int v3, v4, v1

    iget v4, p0, Lcom/a/b/c/b/ab;->h:I

    new-instance v5, Lcom/a/b/f/a;

    invoke-direct {v5, v3}, Lcom/a/b/f/a;-><init>(I)V

    move v1, v0

    :goto_19
    if-lt v1, v3, :cond_1f

    move v1, v0

    :goto_1c
    if-lt v1, v2, :cond_2f

    return-void

    :cond_1f
    sub-int v6, v3, v4

    if-lt v1, v6, :cond_2b

    add-int v6, v1, p1

    invoke-virtual {v5, v1, v6, v7}, Lcom/a/b/f/a;->a(III)V

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2b
    invoke-virtual {v5, v1, v1, v7}, Lcom/a/b/f/a;->a(III)V

    goto :goto_28

    :cond_2f
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    instance-of v3, v0, Lcom/a/b/c/b/h;

    if-nez v3, :cond_44

    iget-object v3, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/a/b/c/b/l;->a(Lcom/a/b/f/ag;)Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c
.end method

.method private e([Lcom/a/b/c/b/n;)V
    .registers 16

    :cond_0
    iget v6, p0, Lcom/a/b/c/b/ab;->b:I

    iget v7, p0, Lcom/a/b/c/b/ab;->f:I

    iget v8, p0, Lcom/a/b/c/b/ab;->g:I

    iget v9, p0, Lcom/a/b/c/b/ab;->h:I

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, v0

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    if-le v2, v1, :cond_6c

    if-le v4, v3, :cond_6c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->b(I)V

    :cond_21
    :goto_21
    invoke-direct {p0, p1}, Lcom/a/b/c/b/ab;->a([Lcom/a/b/c/b/n;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_27
    return-void

    :cond_28
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v11

    const/4 v5, 0x0

    move v0, v1

    :goto_34
    invoke-virtual {v11}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    if-lt v5, v1, :cond_3c

    move v1, v0

    goto :goto_13

    :cond_3c
    invoke-virtual {v11, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v12

    invoke-virtual {v12}, Lcom/a/b/e/b/u;->l()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v12}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    add-int v13, v6, v7

    add-int/2addr v13, v8

    sub-int/2addr v13, v9

    if-lt v1, v13, :cond_5f

    const/4 v1, 0x1

    :goto_51
    invoke-virtual {v12}, Lcom/a/b/e/b/u;->o()Z

    move-result v12

    if-eqz v12, :cond_64

    if-eqz v1, :cond_61

    add-int/lit8 v0, v0, 0x1

    :cond_5b
    :goto_5b
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_34

    :cond_5f
    const/4 v1, 0x0

    goto :goto_51

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_64
    if-eqz v1, :cond_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_6c
    if-le v2, v1, :cond_73

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->a(I)V

    goto :goto_21

    :cond_73
    if-le v4, v3, :cond_27

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->b(I)V

    iget v0, p0, Lcom/a/b/c/b/ab;->h:I

    if-eqz v0, :cond_21

    if-le v1, v2, :cond_21

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->a(I)V

    goto :goto_21
.end method

.method private e()[Lcom/a/b/c/b/n;
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/a/b/c/b/n;

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-lt v1, v2, :cond_d

    return-object v3

    :cond_d
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method

.method private f()V
    .registers 2

    :cond_0
    invoke-direct {p0}, Lcom/a/b/c/b/ab;->g()V

    invoke-direct {p0}, Lcom/a/b/c/b/ab;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private g()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_9
    if-lt v1, v3, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v0, v2}, Lcom/a/b/c/b/l;->c(I)V

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->a()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method private h()Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v0

    move v3, v0

    :goto_9
    if-lt v3, v2, :cond_c

    return v4

    :cond_c
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    instance-of v1, v0, Lcom/a/b/c/b/am;

    if-nez v1, :cond_1d

    move v0, v2

    :goto_19
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_9

    :cond_1d
    invoke-virtual {v0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v5

    move-object v1, v0

    check-cast v1, Lcom/a/b/c/b/am;

    invoke-virtual {v5}, Lcom/a/b/c/b/n;->c()Lcom/a/b/c/b/r;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/a/b/c/b/r;->a(Lcom/a/b/c/b/am;)Z

    move-result v6

    if-eqz v6, :cond_30

    move v0, v2

    goto :goto_19

    :cond_30
    invoke-virtual {v5}, Lcom/a/b/c/b/n;->b()I

    move-result v4

    const/16 v6, 0x28

    if-ne v4, v6, :cond_55

    invoke-direct {p0, v0, v5}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/l;Lcom/a/b/c/b/n;)Lcom/a/b/c/b/n;

    move-result-object v1

    if-nez v1, :cond_46

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v4, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/l;->a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v3

    :goto_51
    const/4 v2, 0x1

    move v4, v2

    move v3, v1

    goto :goto_19

    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/h;
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_5f} :catch_83
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_5f} :catch_8c

    new-instance v4, Lcom/a/b/c/b/am;

    sget-object v5, Lcom/a/b/c/b/o;->P:Lcom/a/b/c/b/n;

    invoke-virtual {v1}, Lcom/a/b/c/b/am;->k()Lcom/a/b/e/b/ad;

    move-result-object v6

    sget-object v7, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-virtual {v1}, Lcom/a/b/c/b/am;->c()Lcom/a/b/c/b/h;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    iget-object v5, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/a/b/c/b/am;->a(Lcom/a/b/c/b/h;)Lcom/a/b/c/b/am;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v3, 0x1

    goto :goto_51

    :catch_83
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(ILcom/a/b/c/b/h;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    :try_start_9
    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/am;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_11} :catch_1b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_24

    iget-object v2, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/a/b/c/b/am;->a(Lcom/a/b/c/b/h;)Lcom/a/b/c/b/am;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_24
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/c/b/k;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    instance-of v2, v0, Lcom/a/b/c/b/i;

    if-eqz v2, :cond_1d

    check-cast v0, Lcom/a/b/c/b/i;

    invoke-static {v0, p1}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/i;Lcom/a/b/c/b/k;)V

    goto :goto_6

    :cond_1d
    instance-of v2, v0, Lcom/a/b/c/b/y;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/a/b/c/b/y;

    invoke-static {v0, p1}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/y;Lcom/a/b/c/b/k;)V

    goto :goto_6
.end method

.method public a(Lcom/a/b/c/b/l;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/a/b/c/b/ab;->c(Lcom/a/b/c/b/l;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c/b/ab;->d:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c/b/ab;->e:Z

    return v0
.end method

.method public c()Ljava/util/HashSet;
    .registers 4

    new-instance v1, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-static {v1, v0}, Lcom/a/b/c/b/ab;->a(Ljava/util/HashSet;Lcom/a/b/c/b/l;)V

    goto :goto_d
.end method

.method public d()Lcom/a/b/c/b/m;
    .registers 4

    iget v0, p0, Lcom/a/b/c/b/ab;->f:I

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lcom/a/b/c/b/ab;->e()[Lcom/a/b/c/b/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->a([Lcom/a/b/c/b/n;)Z

    iget-object v1, p0, Lcom/a/b/c/b/ab;->a:Lcom/a/b/c/a;

    iget-boolean v1, v1, Lcom/a/b/c/a;->a:Z

    if-eqz v1, :cond_1c

    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->e([Lcom/a/b/c/b/n;)V

    :cond_1c
    invoke-direct {p0, v0}, Lcom/a/b/c/b/ab;->c([Lcom/a/b/c/b/n;)V

    invoke-direct {p0}, Lcom/a/b/c/b/ab;->f()V

    iget-object v0, p0, Lcom/a/b/c/b/ab;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/c/b/ab;->f:I

    iget v2, p0, Lcom/a/b/c/b/ab;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/a/b/c/b/ab;->g:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/a/b/c/b/m;->a(Ljava/util/ArrayList;I)Lcom/a/b/c/b/m;

    move-result-object v0

    return-object v0
.end method
