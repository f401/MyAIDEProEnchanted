.class Lcom/a/b/e/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/b/l;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/e/b/e;->a:I

    return-void
.end method

.method private a(Lcom/a/b/e/b/j;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/u;)V

    :cond_9
    invoke-virtual {p1}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v0, 0x0

    :goto_12
    if-lt v0, v2, :cond_15

    return-void

    :cond_15
    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/u;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private a(Lcom/a/b/e/b/u;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->j()I

    move-result v0

    iget v1, p0, Lcom/a/b/e/b/e;->a:I

    if-le v0, v1, :cond_a

    iput v0, p0, Lcom/a/b/e/b/e;->a:I

    :cond_a
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/e;->a:I

    return v0
.end method

.method public a(Lcom/a/b/e/b/ae;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/af;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/ag;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/r;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/b/e;->a(Lcom/a/b/e/b/j;)V

    return-void
.end method
