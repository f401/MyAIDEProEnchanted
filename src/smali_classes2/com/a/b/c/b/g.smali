.class public Lcom/a/b/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/a/b/c/b/d;


# direct methods
.method public constructor <init>(IILcom/a/b/c/b/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gt p2, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3}, Lcom/a/b/c/b/d;->b_()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlers.isMutable()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/a/b/c/b/g;->a:I

    iput p2, p0, Lcom/a/b/c/b/g;->b:I

    iput-object p3, p0, Lcom/a/b/c/b/g;->c:Lcom/a/b/c/b/d;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/g;->a:I

    return v0
.end method

.method public a(Lcom/a/b/c/b/g;)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v2, p0, Lcom/a/b/c/b/g;->a:I

    iget v3, p1, Lcom/a/b/c/b/g;->a:I

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/a/b/c/b/g;->a:I

    iget v3, p1, Lcom/a/b/c/b/g;->a:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/a/b/c/b/g;->b:I

    iget v3, p1, Lcom/a/b/c/b/g;->b:I

    if-lt v2, v3, :cond_0

    iget v1, p0, Lcom/a/b/c/b/g;->b:I

    iget v2, p1, Lcom/a/b/c/b/g;->b:I

    if-gt v1, v2, :cond_1

    iget-object v0, p0, Lcom/a/b/c/b/g;->c:Lcom/a/b/c/b/d;

    iget-object v1, p1, Lcom/a/b/c/b/g;->c:Lcom/a/b/c/b/d;

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/d;->a(Lcom/a/b/c/b/d;)I

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/g;->b:I

    return v0
.end method

.method public c()Lcom/a/b/c/b/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/g;->c:Lcom/a/b/c/b/d;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/b/g;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/g;->a(Lcom/a/b/c/b/g;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/c/b/g;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/a/b/c/b/g;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/g;->a(Lcom/a/b/c/b/g;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/b/g;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/a/b/c/b/g;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/c/b/g;->c:Lcom/a/b/c/b/d;

    invoke-virtual {v1}, Lcom/a/b/c/b/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
