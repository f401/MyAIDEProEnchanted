.class final La/d/a/al;
.super La/d/a/ar;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, La/d/a/ar;-><init>()V

    iput p1, p0, La/d/a/al;->a:F

    return-void
.end method


# virtual methods
.method public a(La/d/a/al;)La/d/a/u;
    .registers 4

    iget v0, p0, La/d/a/al;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, La/d/a/al;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_f

    :goto_e
    return-object p0

    :cond_f
    sget-object p0, La/d/a/c;->c:La/d/a/u;

    goto :goto_e
.end method

.method public a(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->a(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public b(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p0, La/d/a/al;->a:F

    iget v2, p1, La/d/a/al;->a:F

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public b(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->b(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p0, La/d/a/al;->a:F

    iget v2, p1, La/d/a/al;->a:F

    sub-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public c(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->d(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p1, La/d/a/al;->a:F

    iget v2, p0, La/d/a/al;->a:F

    sub-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public d(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->c(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public e()La/d/a/u;
    .registers 3

    new-instance v0, La/d/a/al;

    iget v1, p0, La/d/a/al;->a:F

    neg-float v1, v1

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public e(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p0, La/d/a/al;->a:F

    iget v2, p1, La/d/a/al;->a:F

    mul-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public e(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->e(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, La/d/a/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, La/d/a/al;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    check-cast p1, La/d/a/al;

    iget v1, p1, La/d/a/al;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public f()La/d/a/ae;
    .registers 3

    new-instance v0, La/d/a/am;

    iget v1, p0, La/d/a/al;->a:F

    float-to-int v1, v1

    invoke-direct {v0, v1}, La/d/a/am;-><init>(I)V

    return-object v0
.end method

.method public f(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p0, La/d/a/al;->a:F

    iget v2, p1, La/d/a/al;->a:F

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public f(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->g(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public g()La/d/a/af;
    .registers 5

    new-instance v0, La/d/a/an;

    iget v1, p0, La/d/a/al;->a:F

    float-to-long v2, v1

    invoke-direct {v0, v2, v3}, La/d/a/an;-><init>(J)V

    return-object v0
.end method

.method public g(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p1, La/d/a/al;->a:F

    iget v2, p0, La/d/a/al;->a:F

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public g(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->f(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public h()La/d/a/t;
    .registers 5

    new-instance v0, La/d/a/ak;

    iget v1, p0, La/d/a/al;->a:F

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, La/d/a/ak;-><init>(D)V

    return-object v0
.end method

.method public h(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p0, La/d/a/al;->a:F

    iget v2, p1, La/d/a/al;->a:F

    rem-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public h(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->i(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/a/ar;->hashCode()I

    move-result v0

    iget v1, p0, La/d/a/al;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(La/d/a/al;)La/d/a/u;
    .registers 5

    new-instance v0, La/d/a/al;

    iget v1, p1, La/d/a/al;->a:F

    iget v2, p0, La/d/a/al;->a:F

    rem-float/2addr v1, v2

    invoke-direct {v0, v1}, La/d/a/al;-><init>(F)V

    return-object v0
.end method

.method public i(La/d/a/u;)La/d/a/u;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->h(La/d/a/al;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public j(La/d/a/al;)La/d/a/ae;
    .registers 4

    iget v0, p0, La/d/a/al;->a:F

    iget v1, p1, La/d/a/al;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    sget-object v0, La/d/a/ao;->k:La/d/a/ae;

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, La/d/a/al;->a:F

    iget v1, p1, La/d/a/al;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    sget-object v0, La/d/a/ao;->l:La/d/a/ae;

    goto :goto_a

    :cond_16
    sget-object v0, La/d/a/ao;->m:La/d/a/ae;

    goto :goto_a
.end method

.method public j(La/d/a/u;)La/d/a/ae;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/u;->k(La/d/a/al;)La/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public o_()F
    .registers 2

    iget v0, p0, La/d/a/al;->a:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/d/a/al;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
