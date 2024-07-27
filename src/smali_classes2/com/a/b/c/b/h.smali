.class public final Lcom/a/b/c/b/h;
.super Lcom/a/b/c/b/ao;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/a/b/e/b/ad;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/c/b/ao;-><init>(Lcom/a/b/e/b/ad;)V

    iput-boolean p2, p0, Lcom/a/b/c/b/h;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 4

    new-instance v0, Lcom/a/b/c/b/h;

    invoke-virtual {p0}, Lcom/a/b/c/b/h;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 3

    const-string v0, "code-address"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c/b/h;->a:Z

    return v0
.end method
