.class public Lcom/a/b/f/v;
.super Lcom/a/b/g/t;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/b/z;

.field private final c:[Lcom/a/b/e/b/z;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/a/b/f/ap;)V
    .registers 5

    invoke-direct {p0}, Lcom/a/b/g/t;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v1

    iput v1, p0, Lcom/a/b/f/v;->a:I

    new-instance v1, Lcom/a/b/e/b/z;

    iget v2, p0, Lcom/a/b/f/v;->a:I

    invoke-direct {v1, v2}, Lcom/a/b/e/b/z;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/f/v;->b:Lcom/a/b/e/b/z;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/a/b/e/b/z;

    iput-object v0, p0, Lcom/a/b/f/v;->c:[Lcom/a/b/e/b/z;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/v;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/a/b/f/v;->b:Lcom/a/b/e/b/z;

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->c_()V

    return-void
.end method

.method private c(I)Lcom/a/b/e/b/z;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/a/b/f/v;->c:[Lcom/a/b/e/b/z;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/b/z;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/f/v;->c(I)Lcom/a/b/e/b/z;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/a/b/f/v;->b:Lcom/a/b/e/b/z;

    goto :goto_6
.end method

.method public a(ILcom/a/b/e/b/z;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/f/v;->l()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/a/b/f/v;->c:[Lcom/a/b/e/b/z;

    aput-object p2, v0, p1
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/f/v;->l()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insn == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, p0, Lcom/a/b/f/v;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(I)Lcom/a/b/e/b/z;
    .registers 4

    invoke-direct {p0, p1}, Lcom/a/b/f/v;->c(I)Lcom/a/b/e/b/z;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/a/b/e/b/z;

    iget v1, p0, Lcom/a/b/f/v;->a:I

    invoke-direct {v0, v1}, Lcom/a/b/e/b/z;-><init>(I)V

    goto :goto_a
.end method

.method public b(ILcom/a/b/e/b/z;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/a/b/f/v;->c(I)Lcom/a/b/e/b/z;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/a/b/f/v;->a(ILcom/a/b/e/b/z;)V

    :goto_a
    return v0

    :cond_b
    invoke-virtual {v1}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/z;Z)V

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    goto :goto_a

    :cond_1a
    invoke-virtual {v2}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {p0, p1, v2}, Lcom/a/b/f/v;->a(ILcom/a/b/e/b/z;)V

    goto :goto_a
.end method
