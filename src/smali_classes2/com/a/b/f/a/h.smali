.class public Lcom/a/b/f/a/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/e/b/ab;

.field private final b:Lcom/a/b/e/b/d;

.field private final c:Lcom/a/b/e/b/d;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ab;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/a/h;->a:Lcom/a/b/e/b/ab;

    iget-object v0, p0, Lcom/a/b/f/a/h;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    iget-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->h()Lcom/a/b/e/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    return-void
.end method

.method private a(ILcom/a/b/g/n;)V
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/a/b/g/n;->b()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v4

    iget-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v0

    iget-object v5, p0, Lcom/a/b/f/a/h;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/a/b/e/b/ab;->a(I)Lcom/a/b/g/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/g/n;->b()I

    move-result v6

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    invoke-virtual {v5, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v7

    invoke-direct {p0, v7, v4, p1}, Lcom/a/b/f/a/h;->a(Lcom/a/b/e/b/b;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Lcom/a/b/e/b/b;II)V
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/g/n;->f()Lcom/a/b/g/n;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/a/b/g/n;->f(I)I

    move-result v0

    invoke-virtual {v1, v0, p3}, Lcom/a/b/g/n;->b(II)V

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->d()I

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/a/b/g/n;->c_()V

    new-instance v0, Lcom/a/b/e/b/b;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, p3}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    iget-object v1, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    iget-object v2, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/d;->c(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/a/b/e/b/d;->a(ILcom/a/b/e/b/b;)V

    return-void

    :cond_0
    move p3, v0

    goto :goto_0
.end method

.method private static a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/m;->a(Lcom/a/b/e/b/m;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/b/ab;
    .registers 16

    const/4 v14, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->d_()I

    move-result v4

    new-instance v5, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->j()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->i()V

    iget-object v0, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->c_()V

    new-instance v0, Lcom/a/b/e/b/ab;

    iget-object v1, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    iget-object v2, p0, Lcom/a/b/f/a/h;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v2}, Lcom/a/b/e/b/ab;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/e/b/ab;-><init>(Lcom/a/b/e/b/d;I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/a/b/f/a/h;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/ab;->a(I)Lcom/a/b/g/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/g/n;->b()I

    move-result v7

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_1

    invoke-virtual {v6, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v8

    iget-object v0, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0, v8}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-gt v0, v14, :cond_3

    invoke-virtual {v9}, Lcom/a/b/e/b/b;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v10, 0x37

    if-ne v0, v10, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    new-instance v10, Lcom/a/b/g/n;

    invoke-direct {v10}, Lcom/a/b/g/n;-><init>()V

    add-int/lit8 v0, v1, 0x1

    :goto_4
    if-lt v0, v7, :cond_5

    invoke-direct {p0, v8, v10}, Lcom/a/b/f/a/h;->a(ILcom/a/b/g/n;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v6, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v11

    iget-object v12, p0, Lcom/a/b/f/a/h;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v12, v11}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v12

    invoke-virtual {v12}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v13

    invoke-virtual {v13}, Lcom/a/b/g/n;->b()I

    move-result v13

    if-ne v13, v14, :cond_6

    invoke-static {v9, v12}, Lcom/a/b/f/a/h;->a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/b;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v10, v11}, Lcom/a/b/g/n;->c(I)V

    invoke-virtual {v5, v11}, Ljava/util/BitSet;->set(I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/a/b/f/a/h;->c:Lcom/a/b/e/b/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/a/b/e/b/d;->a(ILcom/a/b/e/b/b;)V

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1
.end method
