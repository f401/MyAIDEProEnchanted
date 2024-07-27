.class public abstract Lcom/a/b/c/b/an;
.super Lcom/a/b/c/b/l;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V
    .registers 4

    sget-object v0, Lcom/a/b/c/b/o;->a:Lcom/a/b/c/b/n;

    invoke-direct {p0, v0, p1, p2}, Lcom/a/b/c/b/l;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)Lcom/a/b/c/b/l;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/b/an;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/x;->d(I)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/an;->a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;

    move-result-object v0

    return-object v0
.end method
