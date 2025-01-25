.class public final Lcom/a/b/c/b/i;
.super Lcom/a/b/c/b/p;


# instance fields
.field private final a:Lcom/a/b/e/c/a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V
    .registers 7

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/b/p;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    if-nez p4, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constant == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p4, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    iput v0, p0, Lcom/a/b/c/b/i;->b:I

    iput v0, p0, Lcom/a/b/c/b/i;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
    .registers 6

    new-instance v0, Lcom/a/b/c/b/i;

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/a/b/c/b/i;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    if-ltz v1, :cond_18

    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/i;->a(I)V

    :cond_18
    iget v1, p0, Lcom/a/b/c/b/i;->c:I

    if-ltz v1, :cond_21

    iget v1, p0, Lcom/a/b/c/b/i;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/i;->b(I)V

    :cond_21
    return-object v0
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 6

    new-instance v0, Lcom/a/b/c/b/i;

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->k()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/a/b/c/b/i;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    if-ltz v1, :cond_18

    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/i;->a(I)V

    :cond_18
    iget v1, p0, Lcom/a/b/c/b/i;->c:I

    if-ltz v1, :cond_21

    iget v1, p0, Lcom/a/b/c/b/i;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/i;->b(I)V

    :cond_21
    return-object v0
.end method

.method public a(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v0, p0, Lcom/a/b/c/b/i;->b:I

    if-ltz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput p1, p0, Lcom/a/b/c/b/i;->b:I

    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v0, p0, Lcom/a/b/c/b/i;->c:I

    if-ltz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput p1, p0, Lcom/a/b/c/b/i;->c:I

    return-void
.end method

.method public c()Lcom/a/b/e/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    return-object v0
.end method

.method public d()I
    .registers 4

    iget v0, p0, Lcom/a/b/c/b/i;->b:I

    if-gez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index not yet set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget v0, p0, Lcom/a/b/c/b/i;->b:I

    return v0
.end method

.method public e()Z
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/i;->b:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    instance-of v0, v0, Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/a/b/c/b/i;->a:Lcom/a/b/e/c/a;

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public g()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->e()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_34

    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_34
    iget v1, p0, Lcom/a/b/c/b/i;->b:I

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f
.end method
