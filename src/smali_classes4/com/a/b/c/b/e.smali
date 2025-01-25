.class public Lcom/a/b/c/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptionType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p2, p0, Lcom/a/b/c/b/e;->b:I

    iput-object p1, p0, Lcom/a/b/c/b/e;->a:Lcom/a/b/e/c/ae;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/e;)I
    .registers 4

    iget v0, p0, Lcom/a/b/c/b/e;->b:I

    iget v1, p1, Lcom/a/b/c/b/e;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/a/b/c/b/e;->b:I

    iget v1, p1, Lcom/a/b/c/b/e;->b:I

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/a/b/c/b/e;->a:Lcom/a/b/e/c/ae;

    iget-object v1, p1, Lcom/a/b/c/b/e;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ae;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_7
.end method

.method public a()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/e;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/e;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/b/e;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/e;->a(Lcom/a/b/c/b/e;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/c/b/e;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/a/b/c/b/e;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/e;->a(Lcom/a/b/c/b/e;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/b/e;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/c/b/e;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v1}, Lcom/a/b/e/c/ae;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
