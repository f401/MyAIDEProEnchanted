.class public final Lcom/a/b/f/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Lcom/a/b/f/ap;

.field private final c:Ljava/util/ArrayList;

.field private final d:[Lcom/a/b/f/j;

.field private final e:Ljava/util/ArrayList;

.field private final f:[Lcom/a/b/f/h;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;[Lcom/a/b/f/h;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/i;->b:Lcom/a/b/f/ap;

    iput-object p2, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    iput-boolean p3, p0, Lcom/a/b/f/i;->a:Z

    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/i;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/b/f/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/a/b/f/j;

    iput-object v0, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/a/b/f/ap;[Lcom/a/b/f/h;Z)Lcom/a/b/f/i;
    .registers 4

    new-instance v0, Lcom/a/b/f/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/b/f/i;-><init>(Lcom/a/b/f/ap;[Lcom/a/b/f/h;Z)V

    invoke-direct {v0}, Lcom/a/b/f/i;->a()V

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/f/i;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/a/b/f/aj;)Ljava/util/BitSet;
    .registers 3

    iget-boolean v0, p0, Lcom/a/b/f/i;->a:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    goto :goto_8
.end method

.method private a()V
    .registers 11

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/a/b/f/i;->a:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/a/b/f/i;->b:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->f()Lcom/a/b/f/aj;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/a/b/f/h;->b:I

    :cond_20
    new-instance v0, Lcom/a/b/f/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/b/f/k;-><init>(Lcom/a/b/f/i;Lcom/a/b/f/k;)V

    iget-object v1, p0, Lcom/a/b/f/i;->b:Lcom/a/b/f/ap;

    iget-boolean v3, p0, Lcom/a/b/f/i;->a:Z

    invoke-virtual {v1, v3, v0}, Lcom/a/b/f/ap;->a(ZLcom/a/b/f/al;)V

    iget-object v0, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v3, v4

    :goto_36
    if-ge v3, v2, :cond_42

    :goto_38
    if-le v2, v4, :cond_104

    return-void

    :cond_3b
    iget-object v0, p0, Lcom/a/b/f/i;->b:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v0

    goto :goto_b

    :cond_42
    iget-object v0, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/a/b/f/aj;

    iget-object v0, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->e()I

    move-result v5

    aget-object v6, v0, v5

    invoke-direct {p0, v1}, Lcom/a/b/f/i;->a(Lcom/a/b/f/aj;)Ljava/util/BitSet;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    :goto_5d
    if-gez v5, :cond_90

    iget-object v5, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    iget-object v0, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    iget v7, v6, Lcom/a/b/f/j;->a:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v5, v0

    iget-object v0, v0, Lcom/a/b/f/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/a/b/f/j;->b:Lcom/a/b/f/aj;

    iput-object v0, v6, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    iget-object v0, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    iget-object v1, v6, Lcom/a/b/f/j;->b:Lcom/a/b/f/aj;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Lcom/a/b/f/j;->e:Ljava/util/ArrayList;

    :goto_86
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_be

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_36

    :cond_90
    iget-object v0, p0, Lcom/a/b/f/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v8, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v9

    aget-object v8, v8, v9

    if-eqz v8, :cond_b6

    iget-object v8, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-direct {p0, v0}, Lcom/a/b/f/i;->c(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v8, v0

    iget v0, v0, Lcom/a/b/f/j;->a:I

    iget v8, v6, Lcom/a/b/f/j;->a:I

    if-ge v0, v8, :cond_b6

    iput v0, v6, Lcom/a/b/f/j;->a:I

    :cond_b6
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    goto :goto_5d

    :cond_be
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/i;->c(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v5

    iget-object v7, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v5}, Lcom/a/b/f/aj;->e()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Lcom/a/b/f/j;->a:I

    iget-object v8, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v9

    aget-object v8, v8, v9

    iget v8, v8, Lcom/a/b/f/j;->a:I

    if-ge v7, v8, :cond_f3

    iget-object v7, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v7, v0

    invoke-virtual {v5}, Lcom/a/b/f/aj;->e()I

    move-result v5

    iput v5, v0, Lcom/a/b/f/h;->b:I

    goto :goto_86

    :cond_f3
    iget-object v5, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v5, v0

    iget-object v5, v6, Lcom/a/b/f/j;->b:Lcom/a/b/f/aj;

    invoke-virtual {v5}, Lcom/a/b/f/aj;->e()I

    move-result v5

    iput v5, v0, Lcom/a/b/f/h;->b:I

    goto :goto_86

    :cond_104
    iget-object v0, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v1, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v3

    aget-object v1, v1, v3

    iget v3, v1, Lcom/a/b/f/h;->b:I

    iget-object v1, p0, Lcom/a/b/f/i;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lcom/a/b/f/j;->a:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    if-eq v3, v1, :cond_148

    iget-object v1, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v3

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    iget-object v5, p0, Lcom/a/b/f/i;->f:[Lcom/a/b/f/h;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v5, v0

    iget v0, v0, Lcom/a/b/f/h;->b:I

    aget-object v0, v3, v0

    iget v0, v0, Lcom/a/b/f/h;->b:I

    iput v0, v1, Lcom/a/b/f/h;->b:I

    :cond_148
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_38
.end method

.method private b(Lcom/a/b/f/aj;)V
    .registers 10

    iget-object v0, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    iget-object v0, v0, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    if-eqz v0, :cond_29

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    return-void

    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iget-object v4, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    aget-object v0, v4, v0

    iget-object v4, v0, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    iget-object v5, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v4}, Lcom/a/b/f/aj;->e()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    iget-object v6, v5, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    if-eqz v6, :cond_56

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_56
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v5, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    if-eqz v3, :cond_23

    iget-object v3, v5, Lcom/a/b/f/j;->c:Lcom/a/b/f/aj;

    iget-object v4, v0, Lcom/a/b/f/j;->c:Lcom/a/b/f/aj;

    iget-object v6, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v3}, Lcom/a/b/f/aj;->e()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Lcom/a/b/f/j;->a:I

    iget-object v7, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {v4}, Lcom/a/b/f/aj;->e()I

    move-result v4

    aget-object v4, v7, v4

    iget v4, v4, Lcom/a/b/f/j;->a:I

    if-ge v6, v4, :cond_7b

    iput-object v3, v0, Lcom/a/b/f/j;->c:Lcom/a/b/f/aj;

    :cond_7b
    iget-object v3, v5, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    iput-object v3, v0, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    goto :goto_23
.end method

.method static synthetic b(Lcom/a/b/f/i;)[Lcom/a/b/f/j;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    return-object v0
.end method

.method private c(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/i;->d:[Lcom/a/b/f/j;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Lcom/a/b/f/j;->d:Lcom/a/b/f/aj;

    if-nez v1, :cond_d

    :goto_c
    return-object p1

    :cond_d
    invoke-direct {p0, p1}, Lcom/a/b/f/i;->b(Lcom/a/b/f/aj;)V

    iget-object p1, v0, Lcom/a/b/f/j;->c:Lcom/a/b/f/aj;

    goto :goto_c
.end method
