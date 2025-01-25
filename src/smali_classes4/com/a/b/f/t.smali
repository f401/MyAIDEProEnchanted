.class Lcom/a/b/f/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/s;

.field private final b:Lcom/a/b/e/b/ah;


# direct methods
.method constructor <init>(Lcom/a/b/f/s;Lcom/a/b/e/b/ah;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/f/t;->a:Lcom/a/b/f/s;

    iput-object p2, p0, Lcom/a/b/f/t;->b:Lcom/a/b/e/b/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/z;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/f/t;->a:Lcom/a/b/f/s;

    invoke-static {v2, p1}, Lcom/a/b/f/s;->a(Lcom/a/b/f/s;Lcom/a/b/f/z;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5a

    invoke-virtual {v1, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/f/s;->a(Lcom/a/b/e/b/u;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/a/b/f/t;->a:Lcom/a/b/f/s;

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->f()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/b/t;->b(I)I

    move-result v0

    invoke-static {v2, p1, v1, v0, v4}, Lcom/a/b/f/s;->a(Lcom/a/b/f/s;Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V

    goto :goto_17

    :cond_42
    invoke-virtual {v1, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/f/s;->a(Lcom/a/b/e/b/u;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/a/b/f/t;->a:Lcom/a/b/f/s;

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->g()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    invoke-static {v2, p1, v1, v0, v4}, Lcom/a/b/f/s;->a(Lcom/a/b/f/s;Lcom/a/b/f/z;Lcom/a/b/e/b/x;ILcom/a/b/e/c/a;)V

    goto :goto_17

    :cond_5a
    iget-object v2, p0, Lcom/a/b/f/t;->b:Lcom/a/b/e/b/ah;

    invoke-virtual {v1, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/a/b/e/b/ah;->a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {p1}, Lcom/a/b/f/z;->h()V

    goto :goto_17

    :cond_6e
    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->f()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/a/b/f/t;->b:Lcom/a/b/e/b/ah;

    invoke-virtual {v1, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v1, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/a/b/e/b/ah;->a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/b/f/z;->a(Lcom/a/b/e/b/x;)V

    invoke-virtual {p1}, Lcom/a/b/f/z;->h()V

    goto :goto_17
.end method
