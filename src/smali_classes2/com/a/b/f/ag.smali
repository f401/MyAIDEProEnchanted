.class public abstract Lcom/a/b/f/ag;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
.end method

.method public final a(Lcom/a/b/e/b/x;)Lcom/a/b/e/b/x;
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v2}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object p1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public final a(Lcom/a/b/e/b/z;)Lcom/a/b/e/b/z;
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/z;->b()I

    move-result v2

    new-instance v0, Lcom/a/b/e/b/z;

    invoke-virtual {p0}, Lcom/a/b/f/ag;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/b/e/b/z;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-object p1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1
.end method
