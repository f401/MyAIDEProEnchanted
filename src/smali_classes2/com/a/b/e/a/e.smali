.class public final Lcom/a/b/e/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/ad;

.field private final b:Lcom/a/b/e/c/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    iput-object p2, p0, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/a/e;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    iget-object v1, p1, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/a;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method public b()Lcom/a/b/e/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/a/e;

    invoke-virtual {p0, p1}, Lcom/a/b/e/a/e;->a(Lcom/a/b/e/a/e;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/e/a/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/e/a/e;

    iget-object v1, p0, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    iget-object v2, p1, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    iget-object v2, p1, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/e/a/e;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/a/e;->b:Lcom/a/b/e/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
