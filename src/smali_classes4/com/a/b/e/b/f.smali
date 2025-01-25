.class public abstract Lcom/a/b/e/b/f;
.super Lcom/a/b/e/b/j;


# instance fields
.field private final a:Lcom/a/b/e/c/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/e/b/j;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    if-nez p5, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p5, p0, Lcom/a/b/e/b/f;->a:Lcom/a/b/e/c/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/f;->a:Lcom/a/b/e/c/a;

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/j;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/j;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/a/b/e/b/f;->a:Lcom/a/b/e/c/a;

    check-cast p1, Lcom/a/b/e/b/f;

    invoke-virtual {p1}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public g_()Lcom/a/b/e/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/f;->a:Lcom/a/b/e/c/a;

    return-object v0
.end method
