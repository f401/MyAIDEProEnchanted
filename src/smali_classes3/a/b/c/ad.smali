.class public La/b/c/ad;
.super Ljava/lang/Object;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field private final a:La/b/c/ae;

.field private final b:La/b/c/m;

.field private c:I


# direct methods
.method public constructor <init>(La/b/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/c/ae;

    invoke-direct {v0, p1}, La/b/c/ae;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    new-instance v0, La/b/c/m;

    invoke-direct {v0, p1}, La/b/c/m;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/ad;->b:La/b/c/m;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/c/ad;->c:I

    return v0
.end method

.method public a(La/b/c;I)I
    .registers 3

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget p1, p0, La/b/c/ad;->c:I

    return p1
.end method

.method public a(La/b/c;La/b/b/b;)I
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/b/b;->a(La/b/c;La/b/b/a/f;)V

    iget p1, p0, La/b/c/ad;->c:I

    return p1
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, La/b/b/a;->b:La/b/c;

    invoke-virtual {v0, p1, p2}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/c;)V
    .registers 5

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/c;->b()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, La/b/c/ae;->a(D)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/d;)V
    .registers 10

    iget v0, p2, La/b/b/d;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object v1, p0, La/b/c/ad;->a:La/b/c/ae;

    iget v2, p0, La/b/c/ad;->c:I

    invoke-virtual {p2, p1}, La/b/b/d;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, La/b/b/d;->c(La/b/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, La/b/b/d;->c:La/b/c;

    iget-object v6, p2, La/b/b/d;->e:La/b/i;

    invoke-virtual/range {v1 .. v6}, La/b/c/ae;->a(ILjava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/e;)V
    .registers 3

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/e;->b()F

    move-result p2

    invoke-virtual {p1, p2}, La/b/c/ae;->a(F)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/f;)V
    .registers 3

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/f;->b()I

    move-result p2

    invoke-virtual {p1, p2}, La/b/c/ae;->a(I)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/g;)V
    .registers 10

    iget v0, p2, La/b/b/g;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object v1, p0, La/b/c/ad;->a:La/b/c/ae;

    iget v2, p0, La/b/c/ad;->c:I

    invoke-virtual {p2, p1}, La/b/b/g;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, La/b/b/g;->c(La/b/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, La/b/b/g;->c:La/b/c;

    iget-object v6, p2, La/b/b/g;->e:La/b/i;

    invoke-virtual/range {v1 .. v6}, La/b/c/ae;->b(ILjava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 8

    new-instance v0, La/b/c/j;

    move-object v1, p1

    check-cast v1, La/b/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/b/c/j;-><init>(La/b/k;Z)V

    const-string v1, "BootstrapMethods"

    invoke-virtual {v0, v1}, La/b/c/j;->a(Ljava/lang/String;)La/b/a/a;

    move-result-object v0

    check-cast v0, La/b/a/c;

    iget v1, p2, La/b/b/h;->b:I

    invoke-interface {p1, v1, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object v1, p2, La/b/b/h;->c:[La/b/c;

    if-eqz v1, :cond_22

    array-length v3, v1

    new-array v3, v3, [La/b/c;

    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    invoke-virtual {p2}, La/b/b/h;->b()I

    move-result p2

    iget-object v1, p0, La/b/c/ad;->b:La/b/c/m;

    invoke-virtual {v0, p1, p2, v1}, La/b/a/c;->a(La/b/c;ILa/b/a/d/j;)V

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    iget-object p2, p0, La/b/c/ad;->b:La/b/c/m;

    invoke-virtual {p2}, La/b/c/m;->a()I

    move-result p2

    iget v0, p0, La/b/c/ad;->c:I

    invoke-virtual {p1, p2, v0, v3}, La/b/c/ae;->a(II[La/b/c;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/i;)V
    .registers 5

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/i;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, La/b/c/ae;->a(J)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 4

    iget v0, p2, La/b/b/j;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/j;->b()I

    move-result p2

    iget v0, p0, La/b/c/ad;->c:I

    invoke-virtual {p1, p2, v0}, La/b/c/ae;->a(II)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 4

    iget-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, La/b/b/k;->c:[La/b/c;

    invoke-virtual {v0, p1, p2}, La/b/c/ae;->a(Ljava/lang/String;[La/b/c;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/l;)V
    .registers 10

    iget v0, p2, La/b/b/l;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object v1, p0, La/b/c/ad;->a:La/b/c/ae;

    iget v2, p0, La/b/c/ad;->c:I

    invoke-virtual {p2, p1}, La/b/b/l;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, La/b/b/l;->c(La/b/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, La/b/b/l;->c:La/b/c;

    iget-object v6, p2, La/b/b/l;->e:La/b/i;

    invoke-virtual/range {v1 .. v6}, La/b/c/ae;->c(ILjava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/m;)V
    .registers 4

    iget-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2, p1}, La/b/b/m;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, La/b/c/ae;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .registers 5

    iget-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2, p1}, La/b/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/o;)V
    .registers 4

    iget-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2, p1}, La/b/b/o;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, La/b/c/ae;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/p;)V
    .registers 3

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/p;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, La/b/c/ae;->a(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 5

    iget-object v0, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p2, La/b/b/r;->b:La/b/c;

    iget-object p2, p2, La/b/b/r;->c:La/b/i;

    invoke-virtual {v0, p1, v1, p2}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .registers 3

    iget-object p1, p0, La/b/c/ad;->a:La/b/c/ae;

    invoke-virtual {p2}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ad;->c:I

    return-void
.end method
