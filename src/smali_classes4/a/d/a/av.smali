.class public La/d/a/av;
.super La/d/a/ap;


# instance fields
.field private final a:La/d/a/ap;

.field private final b:La/d/a/bd;


# direct methods
.method public constructor <init>(La/d/a/ap;La/d/a/bd;)V
    .registers 3

    invoke-direct {p0}, La/d/a/ap;-><init>()V

    iput-object p1, p0, La/d/a/av;->a:La/d/a/ap;

    iput-object p2, p0, La/d/a/av;->b:La/d/a/bd;

    return-void
.end method


# virtual methods
.method public a(La/d/a/aa;)I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->a(La/d/a/aa;)I

    move-result v0

    return v0
.end method

.method public a(La/d/a/v;)I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->a(La/d/a/v;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;La/b/c;)I
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->a(Ljava/lang/String;La/b/c;)I

    move-result v0

    return v0
.end method

.method public a(La/d/a/ae;La/d/a/be;)La/d/a/ae;
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->a(La/d/a/ae;La/d/a/be;)La/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(La/d/a/be;)La/d/a/ae;
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->a(La/d/a/be;)La/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(La/d/a/a;)La/d/a/ap;
    .registers 5

    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, p1}, La/d/a/ap;->a(La/d/a/a;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    return-object v0
.end method

.method public a(La/d/a/ap;)La/d/a/ap;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->a(La/d/a/av;)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(La/d/a/av;)La/d/a/ap;
    .registers 6

    invoke-virtual {p0, p1}, La/d/a/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    iget-object v2, p1, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, v2}, La/d/a/ap;->a(La/d/a/ap;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    iget-object v3, p1, La/d/a/av;->b:La/d/a/bd;

    invoke-virtual {v2, v3}, La/d/a/bd;->a(La/d/a/bd;)La/d/a/bd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public a(La/d/a/aw;)La/d/a/ap;
    .registers 5

    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, p1}, La/d/a/ap;->a(La/d/a/aw;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    return-object v0
.end method

.method public a(La/d/a/bc;)La/d/a/ap;
    .registers 5

    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, p1}, La/d/a/ap;->a(La/d/a/bc;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    return-object v0
.end method

.method public a(La/d/a/r;)La/d/a/ap;
    .registers 5

    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, p1}, La/d/a/ap;->a(La/d/a/r;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;La/b/c;La/d/a/be;Z)La/d/a/ap;
    .registers 6

    check-cast p3, La/g/a/aa;

    invoke-virtual {p3, p0, p1, p2, p4}, La/g/a/aa;->a(La/d/a/av;Ljava/lang/String;La/b/c;Z)La/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public a(La/d/a/ae;La/d/a/bd;)V
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->a(La/d/a/ae;La/d/a/bd;)V

    return-void
.end method

.method public b(La/d/a/a;)I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->b(La/d/a/a;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/ap;)I
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->b(La/d/a/av;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/av;)I
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    iget-object v1, p1, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, v1}, La/d/a/ap;->b(La/d/a/ap;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/aw;)I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->b(La/d/a/aw;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/bc;)I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->b(La/d/a/bc;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/r;)I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->b(La/d/a/r;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/ae;La/d/a/be;)La/d/a/af;
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->b(La/d/a/ae;La/d/a/be;)La/d/a/af;

    move-result-object v0

    return-object v0
.end method

.method public b(La/d/a/aa;)La/d/a/ap;
    .registers 5

    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, p1}, La/d/a/ap;->b(La/d/a/aa;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    return-object v0
.end method

.method public b(La/d/a/v;)La/d/a/ap;
    .registers 5

    new-instance v0, La/d/a/av;

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1, p1}, La/d/a/ap;->b(La/d/a/v;)La/d/a/ap;

    move-result-object v1

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-direct {v0, v1, v2}, La/d/a/av;-><init>(La/d/a/ap;La/d/a/bd;)V

    return-object v0
.end method

.method public c(La/d/a/ae;La/d/a/be;)La/d/a/u;
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->c(La/d/a/ae;La/d/a/be;)La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->c()Z

    move-result v0

    return v0
.end method

.method public d(La/d/a/ae;La/d/a/be;)La/d/a/t;
    .registers 4

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->d(La/d/a/ae;La/d/a/be;)La/d/a/t;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->d()Z

    move-result v0

    return v0
.end method

.method public e(La/d/a/ae;La/d/a/be;)La/d/a/ap;
    .registers 5

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0, p1, p2}, La/d/a/ap;->e(La/d/a/ae;La/d/a/be;)La/d/a/ap;

    move-result-object v0

    instance-of v1, v0, La/d/a/av;

    if-eqz v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    check-cast p2, La/g/a/aa;

    invoke-virtual {p2, v0}, La/g/a/aa;->a(La/d/a/ap;)La/d/a/ap;

    move-result-object v0

    goto :goto_a
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, La/d/a/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, La/d/a/av;

    iget-object v2, p0, La/d/a/av;->a:La/d/a/ap;

    iget-object v3, p1, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v2, v3}, La/d/a/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, La/d/a/av;->b:La/d/a/bd;

    iget-object v3, p1, La/d/a/av;->b:La/d/a/bd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public f()La/b/c;
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->f()La/b/c;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v0}, La/d/a/ap;->m()I

    move-result v0

    return v0
.end method

.method public q()La/d/a/ap;
    .registers 2

    iget-object v0, p0, La/d/a/av;->a:La/d/a/ap;

    return-object v0
.end method

.method public s()La/d/a/bd;
    .registers 2

    iget-object v0, p0, La/d/a/av;->b:La/d/a/bd;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/d/a/av;->b:La/d/a/bd;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/av;->a:La/d/a/ap;

    invoke-virtual {v1}, La/d/a/ap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
