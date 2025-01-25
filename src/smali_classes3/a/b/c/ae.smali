.class public La/b/c/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/k;

.field private final b:La/b/b/a/f;


# direct methods
.method public constructor <init>(La/b/k;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, La/b/c/ae;-><init>(La/b/k;La/b/b;La/b/b;)V

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/b;La/b/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/ae;->a:La/b/k;

    if-nez p2, :cond_9

    const/4 p1, 0x0

    goto :goto_13

    :cond_9
    new-instance p1, La/g/c/ae;

    new-instance v0, La/b/f/f;

    invoke-direct {v0, p2, p3}, La/b/f/f;-><init>(La/b/b;La/b/b;)V

    invoke-direct {p1, v0}, La/g/c/ae;-><init>(La/b/b/a/f;)V

    :goto_13
    iput-object p1, p0, La/b/c/ae;->b:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(D)I
    .registers 9

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_24

    aget-object v3, v1, v2

    if-eqz v3, :cond_21

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_21

    check-cast v3, La/b/b/c;

    invoke-virtual {v3}, La/b/b/c;->b()D

    move-result-wide v3

    cmpl-double v5, v3, p1

    if-nez v5, :cond_21

    goto :goto_2d

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    new-instance v0, La/b/b/c;

    invoke-direct {v0, p1, p2}, La/b/b/c;-><init>(D)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2d
    return v2
.end method

.method public a(F)I
    .registers 8

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_24

    aget-object v3, v1, v2

    if-eqz v3, :cond_21

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_21

    check-cast v3, La/b/b/e;

    invoke-virtual {v3}, La/b/b/e;->b()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_21

    goto :goto_2d

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    new-instance v0, La/b/b/e;

    invoke-direct {v0, p1}, La/b/b/e;-><init>(F)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2d
    return v2
.end method

.method public a(I)I
    .registers 8

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_22

    aget-object v3, v1, v2

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1f

    check-cast v3, La/b/b/f;

    invoke-virtual {v3}, La/b/b/f;->b()I

    move-result v3

    if-ne v3, p1, :cond_1f

    goto :goto_2b

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    new-instance v0, La/b/b/f;

    invoke-direct {v0, p1}, La/b/b/f;-><init>(I)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2b
    return v2
.end method

.method public a(II)I
    .registers 9

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_25

    aget-object v3, v1, v2

    if-eqz v3, :cond_22

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_22

    check-cast v3, La/b/b/j;

    iget v4, v3, La/b/b/j;->a:I

    if-ne v4, p1, :cond_22

    iget v3, v3, La/b/b/j;->b:I

    if-ne v3, p2, :cond_22

    goto :goto_2e

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    new-instance v0, La/b/b/j;

    invoke-direct {v0, p1, p2}, La/b/b/j;-><init>(II)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2e
    return v2
.end method

.method public a(IILa/b/c;La/b/i;)I
    .registers 11

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_25

    aget-object v3, v1, v2

    if-eqz v3, :cond_22

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_22

    check-cast v3, La/b/b/d;

    iget v4, v3, La/b/b/d;->a:I

    if-ne v4, p1, :cond_22

    iget v3, v3, La/b/b/d;->b:I

    if-ne v3, p2, :cond_22

    goto :goto_2e

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    new-instance v0, La/b/b/d;

    invoke-direct {v0, p1, p2, p3, p4}, La/b/b/d;-><init>(IILa/b/c;La/b/i;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2e
    return v2
.end method

.method public a(II[La/b/c;)I
    .registers 10

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_25

    aget-object v3, v1, v2

    if-eqz v3, :cond_22

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_22

    check-cast v3, La/b/b/h;

    iget v4, v3, La/b/b/h;->a:I

    if-ne v4, p1, :cond_22

    iget v3, v3, La/b/b/h;->b:I

    if-ne v3, p2, :cond_22

    goto :goto_2e

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    new-instance v0, La/b/b/h;

    invoke-direct {v0, p1, p2, p3}, La/b/b/h;-><init>(II[La/b/c;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2e
    return v2
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 6

    invoke-virtual {p0, p2, p3}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, p5}, La/b/c/ae;->a(IILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public a(J)I
    .registers 9

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_24

    aget-object v3, v1, v2

    if-eqz v3, :cond_21

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_21

    check-cast v3, La/b/b/i;

    invoke-virtual {v3}, La/b/b/i;->b()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_21

    goto :goto_2d

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    new-instance v0, La/b/b/i;

    invoke-direct {v0, p1, p2}, La/b/b/i;-><init>(J)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2d
    return v2
.end method

.method public a(La/b/b/b;)I
    .registers 7

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    array-length v2, v1

    add-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_1b

    new-array v2, v3, [La/b/b/b;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iput-object v2, v1, La/b/k;->c:[La/b/b/b;

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    :cond_1b
    iget-object v2, p0, La/b/c/ae;->a:La/b/k;

    iget v3, v2, La/b/k;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, La/b/k;->b:I

    aput-object p1, v1, v3

    invoke-virtual {p1}, La/b/b/b;->a()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3a

    :cond_2f
    iget-object v2, p0, La/b/c/ae;->a:La/b/k;

    iget v3, v2, La/b/k;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, La/b/k;->b:I

    const/4 v2, 0x0

    aput-object v2, v1, v3

    :cond_3a
    iget-object v1, p0, La/b/c/ae;->b:La/b/b/a/f;

    if-eqz v1, :cond_43

    iget-object v2, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {p1, v2, v1}, La/b/b/b;->a(La/b/c;La/b/b/a/f;)V

    :cond_43
    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .registers 3

    new-instance v0, La/b/b/p;

    invoke-direct {v0, p1}, La/b/b/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .registers 8

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_29

    aget-object v3, v1, v2

    if-eqz v3, :cond_26

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_26

    check-cast v3, La/b/b/m;

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/m;->a(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_36

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    new-instance v0, La/b/b/m;

    invoke-virtual {p0, p1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, La/b/b/m;-><init>(I)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_36
    return v2
.end method

.method public a(Ljava/lang/String;ILa/b/c;La/b/i;)I
    .registers 5

    invoke-virtual {p0, p1, p3}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, La/b/c/ae;->a(IILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;La/b/c;)I
    .registers 9

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_2c

    aget-object v3, v1, v2

    if-eqz v3, :cond_29

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_29

    check-cast v3, La/b/b/a;

    iget v4, v3, La/b/b/a;->a:I

    if-ge v4, v0, :cond_29

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_39

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2c
    new-instance v0, La/b/b/a;

    invoke-virtual {p0, p1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1, p2}, La/b/b/a;-><init>(ILa/b/c;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_39
    return v2
.end method

.method public a(Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 10

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_35

    aget-object v3, v1, v2

    if-eqz v3, :cond_32

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_32

    check-cast v3, La/b/b/r;

    iget v4, v3, La/b/b/r;->a:I

    if-ge v4, v0, :cond_32

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v3, La/b/b/r;->b:La/b/c;

    if-ne v4, p2, :cond_32

    iget-object v3, v3, La/b/b/r;->c:La/b/i;

    if-ne v3, p3, :cond_32

    goto :goto_42

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_35
    new-instance v0, La/b/b/r;

    invoke-virtual {p0, p1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1, p2, p3}, La/b/b/r;-><init>(ILa/b/c;La/b/i;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_42
    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_3d

    aget-object v3, v1, v2

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_3a

    check-cast v3, La/b/b/n;

    iget v4, v3, La/b/b/n;->a:I

    if-ge v4, v0, :cond_3a

    iget v4, v3, La/b/b/n;->b:I

    if-ge v4, v0, :cond_3a

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_4e

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3d
    new-instance v0, La/b/b/n;

    invoke-virtual {p0, p1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p1, p2}, La/b/b/n;-><init>(II)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_4e
    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 6

    invoke-virtual {p0, p2, p3}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, p5}, La/b/c/ae;->a(Ljava/lang/String;ILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;[La/b/c;)I
    .registers 9

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_2d

    aget-object v3, v1, v2

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2a

    check-cast v3, La/b/b/k;

    iget v4, v3, La/b/b/k;->a:I

    if-ge v4, v0, :cond_2a

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_3a

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2d
    new-instance v0, La/b/b/k;

    invoke-virtual {p0, p1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1, p2}, La/b/b/k;-><init>(I[La/b/c;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_3a
    return v2
.end method

.method public a()La/b/k;
    .registers 2

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    return-object v0
.end method

.method public b(IILa/b/c;La/b/i;)I
    .registers 11

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_25

    aget-object v3, v1, v2

    if-eqz v3, :cond_22

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_22

    check-cast v3, La/b/b/g;

    iget v4, v3, La/b/b/g;->a:I

    if-ne v4, p1, :cond_22

    iget v3, v3, La/b/b/g;->b:I

    if-ne v3, p2, :cond_22

    goto :goto_2e

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    new-instance v0, La/b/b/g;

    invoke-direct {v0, p1, p2, p3, p4}, La/b/b/g;-><init>(IILa/b/c;La/b/i;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2e
    return v2
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 6

    invoke-virtual {p0, p2, p3}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, p5}, La/b/c/ae;->b(IILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .registers 8

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_29

    aget-object v3, v1, v2

    if-eqz v3, :cond_26

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_26

    check-cast v3, La/b/b/o;

    iget-object v4, p0, La/b/c/ae;->a:La/b/k;

    invoke-virtual {v3, v4}, La/b/b/o;->a(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_36

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    new-instance v0, La/b/b/o;

    invoke-virtual {p0, p1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, La/b/b/o;-><init>(I)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_36
    return v2
.end method

.method public b(Ljava/lang/String;ILa/b/c;La/b/i;)I
    .registers 5

    invoke-virtual {p0, p1, p3}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, La/b/c/ae;->b(IILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 6

    invoke-virtual {p0, p2, p3}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, p5}, La/b/c/ae;->b(Ljava/lang/String;ILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public c(IILa/b/c;La/b/i;)I
    .registers 11

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_25

    aget-object v3, v1, v2

    if-eqz v3, :cond_22

    invoke-virtual {v3}, La/b/b/b;->a()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_22

    check-cast v3, La/b/b/l;

    iget v4, v3, La/b/b/l;->a:I

    if-ne v4, p1, :cond_22

    iget v3, v3, La/b/b/l;->b:I

    if-ne v3, p2, :cond_22

    goto :goto_2e

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    new-instance v0, La/b/b/l;

    invoke-direct {v0, p1, p2, p3, p4}, La/b/b/l;-><init>(IILa/b/c;La/b/i;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v2

    :goto_2e
    return v2
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 6

    invoke-virtual {p0, p2, p3}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, p5}, La/b/c/ae;->c(IILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .registers 8

    iget-object v0, p0, La/b/c/ae;->a:La/b/k;

    iget v0, v0, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ae;->a:La/b/k;

    iget-object v1, v1, La/b/k;->c:[La/b/b/b;

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_a
    if-ge v3, v0, :cond_26

    aget-object v4, v1, v3

    if-eqz v4, :cond_23

    invoke-virtual {v4}, La/b/b/b;->a()I

    move-result v5

    if-ne v5, v2, :cond_23

    check-cast v4, La/b/b/s;

    invoke-virtual {v4}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_2f

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_26
    new-instance v0, La/b/b/s;

    invoke-direct {v0, p1}, La/b/b/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, La/b/c/ae;->a(La/b/b/b;)I

    move-result v3

    :goto_2f
    return v3
.end method

.method public c(Ljava/lang/String;ILa/b/c;La/b/i;)I
    .registers 5

    invoke-virtual {p0, p1, p3}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, La/b/c/ae;->c(IILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I
    .registers 6

    invoke-virtual {p0, p2, p3}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, p5}, La/b/c/ae;->c(Ljava/lang/String;ILa/b/c;La/b/i;)I

    move-result p1

    return p1
.end method
