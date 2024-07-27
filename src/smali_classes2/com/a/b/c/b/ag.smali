.class Lcom/a/b/c/b/ag;
.super Lcom/a/b/e/b/k;


# instance fields
.field private final a:[Z

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>([ZII)V
    .registers 4

    iput-object p1, p0, Lcom/a/b/c/b/ag;->a:[Z

    iput p2, p0, Lcom/a/b/c/b/ag;->b:I

    iput p3, p0, Lcom/a/b/c/b/ag;->c:I

    invoke-direct {p0}, Lcom/a/b/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/r;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->g_()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    iget-object v2, p0, Lcom/a/b/c/b/ag;->a:[Z

    iget-object v3, p0, Lcom/a/b/c/b/ag;->a:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/a/b/c/b/ag;->b:I

    iget v4, p0, Lcom/a/b/c/b/ag;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->h()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
