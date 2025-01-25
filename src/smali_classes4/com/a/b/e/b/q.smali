.class public final Lcom/a/b/e/b/q;
.super Lcom/a/b/g/t;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/b/z;

.field private final c:[Lcom/a/b/e/b/z;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ab;)V
    .registers 6

    invoke-direct {p0}, Lcom/a/b/g/t;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->j()I

    move-result v1

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->e()I

    move-result v2

    iput v2, p0, Lcom/a/b/e/b/q;->a:I

    new-instance v2, Lcom/a/b/e/b/z;

    iget v3, p0, Lcom/a/b/e/b/q;->a:I

    invoke-direct {v2, v3}, Lcom/a/b/e/b/z;-><init>(I)V

    iput-object v2, p0, Lcom/a/b/e/b/q;->b:Lcom/a/b/e/b/z;

    new-array v1, v1, [Lcom/a/b/e/b/z;

    iput-object v1, p0, Lcom/a/b/e/b/q;->c:[Lcom/a/b/e/b/z;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->f()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/e/b/q;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/a/b/e/b/q;->b:Lcom/a/b/e/b/z;

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->c_()V

    return-void
.end method

.method private c(I)Lcom/a/b/e/b/z;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/a/b/e/b/q;->c:[Lcom/a/b/e/b/z;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/u;
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    return-object v0
.end method

.method public a(I)Lcom/a/b/e/b/z;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/e/b/q;->c(I)Lcom/a/b/e/b/z;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/a/b/e/b/q;->b:Lcom/a/b/e/b/z;

    goto :goto_6
.end method

.method public a(Lcom/a/b/e/b/b;)Lcom/a/b/e/b/z;
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/q;->a(I)Lcom/a/b/e/b/z;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/a/b/e/b/z;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/q;->l()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/a/b/e/b/q;->c:[Lcom/a/b/e/b/z;

    aput-object p2, v0, p1
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/q;->l()V

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
    iget-object v0, p0, Lcom/a/b/e/b/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/a/b/e/b/z;
    .registers 4

    invoke-direct {p0, p1}, Lcom/a/b/e/b/q;->c(I)Lcom/a/b/e/b/z;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/a/b/e/b/z;

    iget v1, p0, Lcom/a/b/e/b/q;->a:I

    invoke-direct {v0, v1}, Lcom/a/b/e/b/z;-><init>(I)V

    goto :goto_a
.end method

.method public b(ILcom/a/b/e/b/z;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/a/b/e/b/q;->c(I)Lcom/a/b/e/b/z;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/a/b/e/b/q;->a(ILcom/a/b/e/b/z;)V

    :goto_a
    return v0

    :cond_b
    invoke-virtual {v2}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v1

    invoke-virtual {v2}, Lcom/a/b/e/b/z;->d()I

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, p2, v0}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/z;Z)V

    :goto_18
    invoke-virtual {v2, v1}, Lcom/a/b/e/b/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v0, 0x0

    goto :goto_a

    :cond_20
    invoke-virtual {p2}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v1

    goto :goto_18

    :cond_25
    invoke-virtual {v1}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {p0, p1, v1}, Lcom/a/b/e/b/q;->a(ILcom/a/b/e/b/z;)V

    goto :goto_a
.end method
