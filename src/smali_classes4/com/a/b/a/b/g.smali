.class public final Lcom/a/b/a/b/g;
.super Lcom/a/b/g/q;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/q;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/b/f;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/g;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/f;

    return-object v0
.end method

.method public a(ILcom/a/b/a/b/f;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/a/b/g/q;->a(ILcom/a/b/g/p;)V

    return-void
.end method

.method public b(I)Lcom/a/b/a/b/f;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/g;->c(I)I

    move-result v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/g;->a(I)Lcom/a/b/a/b/f;

    move-result-object v0

    return-object v0
.end method
