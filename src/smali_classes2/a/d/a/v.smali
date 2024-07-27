.class La/d/a/v;
.super La/d/a/a;


# instance fields
.field private final f:La/d/a/be;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;La/b/c;ZLa/d/a/ae;La/d/a/be;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, La/d/a/a;-><init>(Ljava/lang/String;La/b/c;ZLa/d/a/ae;)V

    iput-object p5, p0, La/d/a/v;->f:La/d/a/be;

    iput p6, p0, La/d/a/v;->g:I

    return-void
.end method


# virtual methods
.method public a(La/d/a/v;)I
    .registers 3

    invoke-virtual {p0, p1}, La/d/a/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, La/d/a/v;->b(La/d/a/aw;)I

    move-result v0

    goto :goto_0
.end method

.method public a(La/d/a/ap;)La/d/a/ap;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->b(La/d/a/v;)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public b(La/d/a/ap;)I
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->a(La/d/a/v;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, La/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, La/d/a/v;

    iget-object v2, p0, La/d/a/v;->f:La/d/a/be;

    iget-object v3, p1, La/d/a/v;->f:La/d/a/be;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, La/d/a/v;->g:I

    iget v3, p1, La/d/a/v;->g:I

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/a/a;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/a/v;->f:La/d/a/be;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, La/d/a/v;->g:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, La/d/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/a/v;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
