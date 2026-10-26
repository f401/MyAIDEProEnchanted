.class public abstract Lcom/a/b/c/b/ao;
.super Lcom/a/b/c/b/l;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;)V
    .locals 2

    sget-object v0, Lcom/a/b/c/b/o;->a:Lcom/a/b/c/b/n;

    sget-object v1, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {p0, v0, p1, v1}, Lcom/a/b/c/b/l;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/a/b/g/a;)V
    .locals 0

    return-void
.end method

.method public d(I)Lcom/a/b/c/b/l;
    .locals 1

    invoke-virtual {p0}, Lcom/a/b/c/b/ao;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/x;->d(I)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ao;->a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;

    move-result-object v0

    return-object v0
.end method
