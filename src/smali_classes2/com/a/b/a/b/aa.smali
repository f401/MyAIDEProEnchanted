.class public final Lcom/a/b/a/b/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/d/d;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subroutineAddress < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/a/b/a/b/aa;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->k:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public b()Lcom/a/b/e/d/d;
    .registers 1

    return-object p0
.end method

.method public c()I
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->k:Lcom/a/b/e/d/c;

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->c()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/a/b/aa;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->k:Lcom/a/b/e/d/c;

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/a/b/aa;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/a/b/a/b/aa;->a:I

    check-cast p1, Lcom/a/b/a/b/aa;

    iget v2, p1, Lcom/a/b/a/b/aa;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/aa;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/aa;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<addr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/b/a/b/aa;->a:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
