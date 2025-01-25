.class public final Lcom/a/b/e/b/i;
.super Lcom/a/b/e/b/j;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Lcom/a/b/e/c/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Ljava/util/ArrayList;Lcom/a/b/e/c/a;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/a/b/e/b/j;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "opcode with invalid branchingness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iput-object p4, p0, Lcom/a/b/e/b/i;->a:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/a/b/e/b/i;->b:Lcom/a/b/e/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;
    .registers 9

    new-instance v0, Lcom/a/b/e/b/i;

    invoke-virtual {p0}, Lcom/a/b/e/b/i;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/i;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v4, p0, Lcom/a/b/e/b/i;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/a/b/e/b/i;->b:Lcom/a/b/e/c/a;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/i;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Ljava/util/ArrayList;Lcom/a/b/e/c/a;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/a/b/e/b/l;->a(Lcom/a/b/e/b/i;)V

    return-void
.end method

.method public b()Lcom/a/b/e/d/e;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/i;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Lcom/a/b/e/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/i;->b:Lcom/a/b/e/c/a;

    return-object v0
.end method
