.class public Lcom/a/b/a/b/c;
.super Lcom/a/b/g/j;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/c/a;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    return-object v0
.end method

.method public a(ILcom/a/b/e/c/a;)V
    .registers 7

    instance-of v0, p2, Lcom/a/b/e/c/ad;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/ae;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/p;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/w;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/o;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/l;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/y;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/b/c;->a(ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad type for bootstrap argument: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
