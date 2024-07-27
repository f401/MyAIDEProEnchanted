.class public Lcom/a/b/c/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/c/b/t;

.field private final c:Lcom/a/b/e/b/u;

.field private final d:Lcom/a/b/e/c/ae;


# direct methods
.method public constructor <init>(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposition == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec.getLocalItem() == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/a/b/c/b/u;->a:I

    iput-object p2, p0, Lcom/a/b/c/b/u;->b:Lcom/a/b/c/b/t;

    iput-object p3, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {p3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/c/ae;->b(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/b/u;->d:Lcom/a/b/e/c/ae;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/u;->a:I

    return v0
.end method

.method public a(Lcom/a/b/c/b/u;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget v2, p0, Lcom/a/b/c/b/u;->a:I

    iget v3, p1, Lcom/a/b/c/b/u;->a:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/a/b/c/b/u;->a:I

    iget v3, p1, Lcom/a/b/c/b/u;->a:I

    if-gt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/a/b/c/b/u;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->c()Z

    move-result v3

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    iget-object v1, p1, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/u;->c(Lcom/a/b/e/b/u;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/a/b/c/b/t;)Lcom/a/b/c/b/u;
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/u;->b:Lcom/a/b/c/b/t;

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/a/b/c/b/u;

    iget v1, p0, Lcom/a/b/c/b/u;->a:I

    iget-object v2, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-direct {v0, v1, p1, v2}, Lcom/a/b/c/b/u;-><init>(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Lcom/a/b/e/b/u;)Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/u;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/a/b/c/b/t;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/u;->b:Lcom/a/b/c/b/t;

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/u;)Z
    .registers 3

    iget-object v0, p1, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/u;->a(Lcom/a/b/e/b/u;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/u;->b:Lcom/a/b/c/b/t;

    sget-object v1, Lcom/a/b/c/b/t;->a:Lcom/a/b/c/b/t;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/b/u;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/u;->a(Lcom/a/b/c/b/u;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/o;->a()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/o;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/c/b/u;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/c/b/u;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/u;->a(Lcom/a/b/c/b/u;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/u;->d:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    return v0
.end method

.method public h()Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/b/c/b/u;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/b/u;->b:Lcom/a/b/c/b/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/b/u;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
