.class public Lcom/a/b/f/af;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/a/b/f/ap;

.field private final b:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/af;->a:Lcom/a/b/f/ap;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/af;->b:Ljava/util/BitSet;

    return-void
.end method

.method private a()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/f/af;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v1

    move v0, v2

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/af;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/a/b/f/af;->a:Lcom/a/b/f/ap;

    invoke-virtual {v3, v0}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->c()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/a/b/f/af;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/b/f/af;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lcom/a/b/f/af;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ac;

    invoke-virtual {p0, v0}, Lcom/a/b/f/af;->a(Lcom/a/b/f/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/af;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v5

    if-eqz v5, :cond_4

    instance-of v0, v0, Lcom/a/b/f/ac;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/b/f/af;->b:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/af;

    invoke-direct {v0, p0}, Lcom/a/b/f/af;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/af;->a()V

    return-void
.end method

.method private static a(Lcom/a/b/e/b/o;Lcom/a/b/e/b/o;)Z
    .registers 3

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/a/b/f/ac;)Z
    .registers 14

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/a/b/f/af;->a:Lcom/a/b/f/ap;

    invoke-virtual {p1, v0}, Lcom/a/b/f/ac;->a(Lcom/a/b/f/ap;)V

    invoke-virtual {p1}, Lcom/a/b/f/ac;->b()Lcom/a/b/e/b/x;

    move-result-object v8

    const/4 v2, -0x1

    invoke-virtual {v8}, Lcom/a/b/e/b/x;->d_()I

    move-result v9

    move-object v1, v6

    move v3, v4

    :goto_0
    if-lt v3, v9, :cond_1

    if-nez v1, :cond_2

    :cond_0
    move v0, v4

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v8, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->c()I

    move-result v7

    if-eqz v7, :cond_b

    move v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    move v3, v5

    move v7, v4

    :goto_3
    if-lt v7, v9, :cond_4

    if-eqz v1, :cond_8

    if-eqz v3, :cond_a

    :goto_4
    invoke-virtual {p1}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v3

    if-ne v3, v1, :cond_3

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/b/f/af;->a(Lcom/a/b/e/b/o;Lcom/a/b/e/b/o;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/a/b/f/ac;->a(Lcom/a/b/e/d/d;Lcom/a/b/e/b/o;)V

    move v0, v5

    goto :goto_1

    :cond_4
    if-ne v7, v2, :cond_6

    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v8, v7}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v10

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->c()I

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v3, :cond_7

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/b/f/af;->a(Lcom/a/b/e/b/o;Lcom/a/b/e/b/o;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_6
    invoke-virtual {v10}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/a/b/a/b/y;->a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Lcom/a/b/e/d/d;

    move-result-object v1

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    if-lt v4, v9, :cond_9

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t map types in phi insn:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-virtual {v8, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    move-object v0, v6

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method
