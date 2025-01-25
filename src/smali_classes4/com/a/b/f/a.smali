.class public Lcom/a/b/f/a;
.super Lcom/a/b/f/ag;


# instance fields
.field private final a:Lcom/a/b/g/n;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/a/b/f/ag;-><init>()V

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0, p1}, Lcom/a/b/g/n;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/a;->b:I

    return v0
.end method

.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    goto :goto_9
.end method

.method public a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_d} :catch_18

    move-result v0

    :goto_e
    if-gez v0, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no mapping specified for register"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    const/4 v0, -0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {p1, v0}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_3
.end method

.method public a(III)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-lt p1, v0, :cond_12

    iget-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    sub-int v0, p1, v0

    :goto_10
    if-gez v0, :cond_22

    :cond_12
    iget-object v0, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/g/n;->b(II)V

    iget v0, p0, Lcom/a/b/f/a;->b:I

    add-int v1, p2, p3

    if-ge v0, v1, :cond_21

    add-int v0, p2, p3

    iput v0, p0, Lcom/a/b/f/a;->b:I

    :cond_21
    return-void

    :cond_22
    iget-object v1, p0, Lcom/a/b/f/a;->a:Lcom/a/b/g/n;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method
