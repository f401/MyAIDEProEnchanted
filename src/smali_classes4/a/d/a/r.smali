.class La/d/a/r;
.super La/d/a/v;


# instance fields
.field private final f:[La/d/a/bd;


# direct methods
.method public constructor <init>(Ljava/lang/String;La/b/c;ZLa/d/a/ae;La/d/a/be;I)V
    .registers 11

    invoke-direct/range {p0 .. p6}, La/d/a/v;-><init>(Ljava/lang/String;La/b/c;ZLa/d/a/ae;La/d/a/be;I)V

    invoke-virtual {p4}, La/d/a/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p4}, La/d/a/ae;->e()I

    move-result v0

    if-ltz v0, :cond_40

    invoke-virtual {p4}, La/d/a/ae;->e()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_40

    new-instance v1, La/d/a/ac;

    invoke-direct {v1, p5}, La/d/a/ac;-><init>(La/d/a/be;)V

    invoke-static {p1}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_27
    invoke-virtual {p4}, La/d/a/ae;->e()I

    move-result v0

    new-array v0, v0, [La/d/a/bd;

    iput-object v0, p0, La/d/a/r;->f:[La/d/a/bd;

    const/4 v0, 0x0

    :goto_30
    iget-object v2, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v2, v2

    if-ge v0, v2, :cond_43

    iget-object v2, p0, La/d/a/r;->f:[La/d/a/bd;

    invoke-virtual {v1, p1}, La/d/a/ac;->a(Ljava/lang/String;)La/d/a/bd;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_40
    const/4 v0, 0x0

    iput-object v0, p0, La/d/a/r;->f:[La/d/a/bd;

    :cond_43
    return-void
.end method

.method private f(La/d/a/ae;La/d/a/be;)La/d/a/bd;
    .registers 5

    iget-object v0, p0, La/d/a/r;->f:[La/d/a/bd;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, La/d/a/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, La/d/a/ae;->e()I

    move-result v0

    if-ltz v0, :cond_1a

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    aget-object v0, v1, v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public a(La/d/a/ae;La/d/a/be;)La/d/a/ae;
    .registers 4

    invoke-direct {p0, p1, p2}, La/d/a/r;->f(La/d/a/ae;La/d/a/be;)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, La/d/a/v;->a(La/d/a/ae;La/d/a/be;)La/d/a/ae;

    move-result-object v0

    goto :goto_a
.end method

.method public a(La/d/a/ap;)La/d/a/ap;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->a(La/d/a/r;)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(La/d/a/ae;La/d/a/bd;)V
    .registers 5

    iget-object v0, p0, La/d/a/r;->f:[La/d/a/bd;

    if-eqz v0, :cond_19

    invoke-virtual {p1}, La/d/a/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, La/d/a/ae;->e()I

    move-result v0

    if-ltz v0, :cond_19

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    aput-object p2, v1, v0

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, La/d/a/bd;->a(La/d/a/bd;)La/d/a/bd;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public b(La/d/a/ap;)I
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->b(La/d/a/r;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/ae;La/d/a/be;)La/d/a/af;
    .registers 4

    invoke-direct {p0, p1, p2}, La/d/a/r;->f(La/d/a/ae;La/d/a/be;)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, La/d/a/bd;->k_()La/d/a/af;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, La/d/a/v;->b(La/d/a/ae;La/d/a/be;)La/d/a/af;

    move-result-object v0

    goto :goto_a
.end method

.method public c(La/d/a/ae;La/d/a/be;)La/d/a/u;
    .registers 4

    invoke-direct {p0, p1, p2}, La/d/a/r;->f(La/d/a/ae;La/d/a/be;)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, La/d/a/bd;->l()La/d/a/u;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, La/d/a/v;->c(La/d/a/ae;La/d/a/be;)La/d/a/u;

    move-result-object v0

    goto :goto_a
.end method

.method public c()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    iget-object v2, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, La/d/a/r;->f:[La/d/a/bd;

    aget-object v2, v2, v1

    invoke-virtual {v2}, La/d/a/bd;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public d(La/d/a/ae;La/d/a/be;)La/d/a/t;
    .registers 4

    invoke-direct {p0, p1, p2}, La/d/a/r;->f(La/d/a/ae;La/d/a/be;)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, La/d/a/bd;->i()La/d/a/t;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, La/d/a/v;->d(La/d/a/ae;La/d/a/be;)La/d/a/t;

    move-result-object v0

    goto :goto_a
.end method

.method public e(La/d/a/ae;La/d/a/be;)La/d/a/ap;
    .registers 4

    invoke-direct {p0, p1, p2}, La/d/a/r;->f(La/d/a/ae;La/d/a/be;)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, La/d/a/v;->e(La/d/a/ae;La/d/a/be;)La/d/a/ap;

    move-result-object v0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-super {p0, p1}, La/d/a/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    check-cast p1, La/d/a/r;

    iget-object v0, p0, La/d/a/r;->f:[La/d/a/bd;

    iget-object v1, p1, La/d/a/r;->f:[La/d/a/bd;

    invoke-static {v0, v1}, La/j/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/a/v;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    invoke-static {v1}, La/j/b;->a([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, La/d/a/r;->f:[La/d/a/bd;

    if-nez v0, :cond_9

    invoke-super {p0}, La/d/a/v;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-super {p0}, La/d/a/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/d/a/r;->f:[La/d/a/bd;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_33

    const/16 v1, 0x2c

    :goto_2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_33
    const/16 v1, 0x7d

    goto :goto_2d

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
