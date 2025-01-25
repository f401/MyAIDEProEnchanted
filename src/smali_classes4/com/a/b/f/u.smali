.class public Lcom/a/b/f/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/a/b/f/v;

.field private final d:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    iput-object p1, p0, Lcom/a/b/f/u;->a:Lcom/a/b/f/ap;

    iput-object v0, p0, Lcom/a/b/f/u;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/f/v;

    invoke-direct {v1, p1}, Lcom/a/b/f/v;-><init>(Lcom/a/b/f/ap;)V

    iput-object v1, p0, Lcom/a/b/f/u;->c:Lcom/a/b/f/v;

    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/f/u;->d:Ljava/util/BitSet;

    return-void
.end method

.method private a()Lcom/a/b/f/v;
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/u;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/a/b/f/u;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->c()I

    move-result v0

    :goto_e
    if-gez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/a/b/f/u;->c:Lcom/a/b/f/v;

    invoke-virtual {v0}, Lcom/a/b/f/v;->c_()V

    iget-object v0, p0, Lcom/a/b/f/u;->c:Lcom/a/b/f/v;

    return-object v0

    :cond_18
    iget-object v1, p0, Lcom/a/b/f/u;->d:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-direct {p0, v0}, Lcom/a/b/f/u;->a(I)V

    iget-object v0, p0, Lcom/a/b/f/u;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_e
.end method

.method public static a(Lcom/a/b/f/ap;)Lcom/a/b/f/v;
    .registers 2

    new-instance v0, Lcom/a/b/f/u;

    invoke-direct {v0, p0}, Lcom/a/b/f/u;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/u;->a()Lcom/a/b/f/v;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 15

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/f/u;->c:Lcom/a/b/f/v;

    invoke-virtual {v0, p1}, Lcom/a/b/f/v;->b(I)Lcom/a/b/e/b/z;

    move-result-object v4

    iget-object v0, p0, Lcom/a/b/f/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    iget-object v1, p0, Lcom/a/b/f/u;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->e()I

    move-result v1

    if-ne p1, v1, :cond_21

    :cond_20
    return-void

    :cond_21
    add-int/lit8 v1, v8, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-virtual {v1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/b/e/d/e;->d_()I

    move-result v5

    if-eqz v5, :cond_6c

    move v5, v2

    :goto_38
    if-eqz v5, :cond_6e

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    if-eqz v1, :cond_6e

    :goto_40
    move-object v1, v4

    move v6, v3

    :goto_42
    if-lt v6, v8, :cond_70

    invoke-virtual {v1}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {v0}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/a/b/f/aj;->k()I

    move-result v6

    :goto_53
    if-ge v3, v5, :cond_20

    invoke-virtual {v2, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v7

    if-ne v7, v6, :cond_d7

    move-object v0, v1

    :goto_5c
    iget-object v8, p0, Lcom/a/b/f/u;->c:Lcom/a/b/f/v;

    invoke-virtual {v8, v7, v0}, Lcom/a/b/f/v;->b(ILcom/a/b/e/b/z;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/a/b/f/u;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_6c
    move v5, v3

    goto :goto_38

    :cond_6e
    move v2, v3

    goto :goto_40

    :cond_70
    if-eqz v2, :cond_d9

    add-int/lit8 v5, v8, -0x1

    if-ne v6, v5, :cond_d9

    invoke-virtual {v1}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {v1}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v1

    move-object v5, v1

    :goto_7e
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-virtual {v1}, Lcom/a/b/f/an;->g()Lcom/a/b/e/b/u;

    move-result-object v9

    if-nez v9, :cond_a9

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v9

    if-eqz v9, :cond_a5

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    :cond_a5
    :goto_a5
    add-int/lit8 v6, v6, 0x1

    move-object v1, v5

    goto :goto_42

    :cond_a9
    invoke-virtual {v9}, Lcom/a/b/e/b/u;->n()Lcom/a/b/e/b/u;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/a/b/e/b/u;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a5

    invoke-virtual {v9}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v10

    if-eqz v10, :cond_ce

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->g()I

    move-result v11

    invoke-virtual {v9}, Lcom/a/b/e/b/u;->g()I

    move-result v12

    if-eq v11, v12, :cond_ce

    invoke-virtual {v5, v10}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    :cond_ce
    iget-object v10, p0, Lcom/a/b/f/u;->c:Lcom/a/b/f/v;

    invoke-virtual {v10, v1, v9}, Lcom/a/b/f/v;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)V

    invoke-virtual {v5, v9}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    goto :goto_a5

    :cond_d7
    move-object v0, v4

    goto :goto_5c

    :cond_d9
    move-object v5, v1

    goto :goto_7e
.end method
