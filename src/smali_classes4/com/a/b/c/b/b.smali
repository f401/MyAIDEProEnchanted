.class public final Lcom/a/b/c/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/a/b/c/b/h;

.field private final b:[Lcom/a/b/c/b/h;

.field private final c:[Lcom/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ab;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->j()I

    move-result v0

    new-array v1, v0, [Lcom/a/b/c/b/h;

    iput-object v1, p0, Lcom/a/b/c/b/b;->a:[Lcom/a/b/c/b/h;

    new-array v1, v0, [Lcom/a/b/c/b/h;

    iput-object v1, p0, Lcom/a/b/c/b/b;->b:[Lcom/a/b/c/b/h;

    new-array v0, v0, [Lcom/a/b/c/b/h;

    iput-object v0, p0, Lcom/a/b/c/b/b;->c:[Lcom/a/b/c/b/h;

    invoke-direct {p0, p1}, Lcom/a/b/c/b/b;->a(Lcom/a/b/e/b/ab;)V

    return-void
.end method

.method private a(Lcom/a/b/e/b/ab;)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/d;->d_()I

    move-result v3

    move v0, v1

    :goto_a
    if-lt v0, v3, :cond_d

    return-void

    :cond_d
    invoke-virtual {v2, v0}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/b;->a()I

    move-result v5

    invoke-virtual {v4}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v6

    iget-object v7, p0, Lcom/a/b/c/b/b;->a:[Lcom/a/b/c/b/h;

    new-instance v8, Lcom/a/b/c/b/h;

    invoke-virtual {v6}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;)V

    aput-object v8, v7, v5

    invoke-virtual {v4}, Lcom/a/b/e/b/b;->g()Lcom/a/b/e/b/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v4

    iget-object v6, p0, Lcom/a/b/c/b/b;->b:[Lcom/a/b/c/b/h;

    new-instance v7, Lcom/a/b/c/b/h;

    invoke-direct {v7, v4}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;)V

    aput-object v7, v6, v5

    iget-object v6, p0, Lcom/a/b/c/b/b;->c:[Lcom/a/b/c/b/h;

    new-instance v7, Lcom/a/b/c/b/h;

    invoke-direct {v7, v4}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;)V

    aput-object v7, v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public a(I)Lcom/a/b/c/b/h;
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/b;->a:[Lcom/a/b/c/b/h;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/b/b;->a:[Lcom/a/b/c/b/h;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/b/b;->b:[Lcom/a/b/c/b/h;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c(Lcom/a/b/e/b/b;)Lcom/a/b/c/b/h;
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/b/b;->c:[Lcom/a/b/c/b/h;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
