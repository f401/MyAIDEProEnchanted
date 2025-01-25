.class public La/g/a/ae;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/q;
.implements La/b/a/d/r;
.implements La/b/b/a/f;
.implements La/b/g/aq;
.implements La/b/g/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;La/b/c;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p2}, La/g/a/ae;->b(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_22
    return-object p1
.end method

.method private a(Ljava/lang/String;[La/b/c;)Ljava/lang/String;
    .registers 13

    const/16 v9, 0x49

    const/4 v1, 0x0

    if-eqz p2, :cond_10e

    new-instance v3, La/b/f/q;

    invoke-direct {v3, p1}, La/b/f/q;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v3}, La/b/f/q;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v5, La/b/f/j;

    invoke-virtual {v3}, La/b/f/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_2a
    invoke-virtual {v5}, La/b/f/j;->b()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v5}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v2

    aget-object v6, p2, v0

    invoke-direct {p0, v6}, La/g/a/ae;->b(La/b/c;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const-string v2, "java/lang/Integer"

    :cond_3e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4b
    move v0, v1

    :cond_4c
    invoke-virtual {v3}, La/b/f/q;->c()Z

    move-result v2

    if-eqz v2, :cond_57

    const/16 v2, 0x28

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_57
    :goto_57
    invoke-virtual {v3}, La/b/f/q;->d()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-virtual {v3}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v5

    new-instance v6, La/b/f/j;

    invoke-direct {v6, v5}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p2, v0

    invoke-direct {p0, v0}, La/g/a/ae;->b(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-static {v5}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    move v0, v2

    :goto_90
    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_9f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_ad
    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v2

    aget-object v5, p2, v0

    invoke-direct {p0, v5}, La/g/a/ae;->b(La/b/c;)Z

    move-result v5

    if-eqz v5, :cond_c1

    const-string v2, "java/lang/Integer"

    :cond_c1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_ce
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_57

    :cond_d2
    invoke-virtual {v3}, La/b/f/q;->c()Z

    move-result v2

    if-eqz v2, :cond_10a

    const/16 v2, 0x29

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, La/b/f/q;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, La/b/f/j;

    invoke-direct {v3, v2}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, La/b/f/j;->b()Z

    move-result v6

    if-eqz v6, :cond_13f

    invoke-virtual {v3}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, v0

    invoke-direct {p0, v7}, La/g/a/ae;->b(La/b/c;)Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-static {v2}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_10a
    :goto_10a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10e
    return-object p1

    :cond_10f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :goto_11e
    invoke-virtual {v3}, La/b/f/j;->b()Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-virtual {v3}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {p0, v2}, La/g/a/ae;->b(La/b/c;)Z

    move-result v2

    if-eqz v2, :cond_132

    const-string v1, "java/lang/Integer"

    :cond_132
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, La/b/f/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11e

    :cond_13f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10a
.end method

.method private b(La/b/c;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {p1}, La/g/b/as;->a(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;[La/b/c;)[La/b/c;
    .registers 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_c5

    new-instance v5, La/b/f/q;

    invoke-direct {v5, p1}, La/b/f/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, La/b/f/q;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v6, La/b/f/j;

    invoke-virtual {v5}, La/b/f/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    move v2, v3

    move v4, v3

    :goto_1d
    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    aget-object v0, p2, v4

    invoke-direct {p0, v0}, La/g/a/ae;->b(La/b/c;)Z

    move-result v7

    if-eqz v7, :cond_32

    move-object v0, v1

    :cond_32
    aput-object v0, p2, v2

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_1d

    :cond_3a
    move v2, v3

    move v4, v3

    :cond_3c
    invoke-virtual {v5}, La/b/f/q;->d()Z

    move-result v0

    if-eqz v0, :cond_98

    new-instance v6, La/b/f/j;

    invoke-virtual {v5}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    add-int/lit8 v0, v4, 0x1

    aget-object v4, p2, v4

    invoke-direct {p0, v4}, La/g/a/ae;->b(La/b/c;)Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    move v4, v0

    :goto_68
    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_77
    aput-object v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v0

    :goto_7c
    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    aget-object v0, p2, v4

    invoke-direct {p0, v0}, La/g/a/ae;->b(La/b/c;)Z

    move-result v7

    if-eqz v7, :cond_91

    move-object v0, v1

    :cond_91
    aput-object v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    :cond_98
    invoke-virtual {v5}, La/b/f/q;->c()Z

    move-result v0

    if-eqz v0, :cond_f2

    new-instance v6, La/b/f/j;

    invoke-virtual {v5}, La/b/f/q;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    aget-object v0, p2, v4

    invoke-direct {p0, v0}, La/g/a/ae;->b(La/b/c;)Z

    move-result v4

    if-eqz v4, :cond_c6

    move v0, v2

    move v4, v5

    :goto_c2
    if-nez v0, :cond_e7

    move-object p2, v1

    :cond_c5
    :goto_c5
    return-object p2

    :cond_c6
    aput-object v0, p2, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v5

    :goto_cb
    invoke-virtual {v6}, La/b/f/j;->b()Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-virtual {v6}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {v6}, La/b/f/j;->c()Ljava/lang/String;

    aget-object v4, p2, v2

    invoke-direct {p0, v4}, La/g/a/ae;->b(La/b/c;)Z

    move-result v5

    if-eqz v5, :cond_e0

    move-object v4, v1

    :cond_e0
    aput-object v4, p2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    :cond_e7
    if-ge v0, v4, :cond_c5

    new-array v1, v0, [La/b/c;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v1

    goto :goto_c5

    :cond_f0
    move v4, v2

    goto :goto_c2

    :cond_f2
    move v0, v2

    goto :goto_c2
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/u;)V
    .registers 6

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, La/b/a/u;->d:[La/b/c;

    invoke-direct {p0, v0, v1}, La/g/a/ae;->a(Ljava/lang/String;[La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, La/b/c/ae;

    check-cast p1, La/b/k;

    invoke-direct {v2, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v2, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, La/b/a/u;->c:I

    iget-object v1, p2, La/b/a/u;->d:[La/b/c;

    invoke-direct {p0, v0, v1}, La/g/a/ae;->b(Ljava/lang/String;[La/b/c;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/a/u;->d:[La/b/c;

    :cond_25
    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 6

    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    invoke-direct {p0, v0}, La/g/a/ae;->b(La/b/c;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v2, La/b/c/ae;

    check-cast p1, La/b/k;

    invoke-direct {v2, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-direct {p0, v1, v0}, La/g/a/ae;->a(Ljava/lang/String;La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/b/a;->a:I

    const/4 v0, 0x0

    iput-object v0, p2, La/b/b/a;->b:La/b/c;

    :cond_26
    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 7

    invoke-virtual {p2, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, La/b/b/h;->c:[La/b/c;

    invoke-direct {p0, v1, v0}, La/g/a/ae;->a(Ljava/lang/String;[La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v3, La/b/c/ae;

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-direct {v3, v0}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {p2, p1}, La/b/b/h;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/b/h;->b:I

    iget-object v0, p2, La/b/b/h;->c:[La/b/c;

    invoke-direct {p0, v1, v0}, La/g/a/ae;->b(Ljava/lang/String;[La/b/c;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/h;->c:[La/b/c;

    :cond_2a
    return-void
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 6

    invoke-virtual {p2, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, La/b/b/k;->c:[La/b/c;

    invoke-direct {p0, v0, v1}, La/g/a/ae;->a(Ljava/lang/String;[La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, La/b/c/ae;

    check-cast p1, La/b/k;

    invoke-direct {v2, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v2, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, La/b/b/k;->a:I

    iget-object v1, p2, La/b/b/k;->c:[La/b/c;

    invoke-direct {p0, v0, v1}, La/g/a/ae;->b(Ljava/lang/String;[La/b/c;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/k;->c:[La/b/c;

    :cond_25
    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 6

    iget-object v0, p2, La/b/b/r;->b:La/b/c;

    invoke-direct {p0, v0}, La/g/a/ae;->b(La/b/c;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v2, La/b/c/ae;

    check-cast p1, La/b/k;

    invoke-direct {v2, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-direct {p0, v1, v0}, La/g/a/ae;->a(Ljava/lang/String;La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/b/r;->a:I

    const/4 v0, 0x0

    iput-object v0, p2, La/b/b/r;->b:La/b/c;

    :cond_26
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 4

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/o;)V
    .registers 7

    invoke-virtual {p4, p1}, La/b/a/o;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, La/b/a/o;->f:La/b/c;

    invoke-direct {p0, v0, v1}, La/g/a/ae;->a(Ljava/lang/String;La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, La/b/c/ae;

    check-cast p1, La/b/k;

    invoke-direct {v0, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v0, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p4, La/b/a/o;->d:I

    const/4 v0, 0x0

    iput-object v0, p4, La/b/a/o;->f:La/b/c;

    :cond_20
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/p;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/q;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p4, La/b/a/q;->f:[La/b/c;

    if-eqz v0, :cond_2e

    iget-object v0, p4, La/b/a/q;->f:[La/b/c;

    array-length v0, v0

    if-lez v0, :cond_2e

    invoke-virtual {p4, p1}, La/b/a/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, La/b/a/q;->f:[La/b/c;

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, La/g/a/ae;->a(Ljava/lang/String;La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, La/b/c/ae;

    check-cast p1, La/b/k;

    invoke-direct {v0, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v0, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p4, La/b/a/q;->d:I

    iget-object v0, p4, La/b/a/q;->f:[La/b/c;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_2e
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/r;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/r;)V

    return-void
.end method

.method public a(La/b/k;)V
    .registers 2

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->b(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 9

    invoke-virtual {p2, p1}, La/b/l;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, La/b/l;->a:La/b/c;

    invoke-direct {p0, v0, v1}, La/g/a/ae;->a(Ljava/lang/String;La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p2, p1}, La/b/l;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, La/b/c/ae;

    invoke-direct {v2, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v2, v0}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/l;->c:I

    invoke-virtual {v2, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/l;->d:I

    const/4 v0, 0x0

    iput-object v0, p2, La/b/l;->a:La/b/c;

    iget v0, p2, La/b/l;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p2, La/b/l;->b:I

    invoke-static {p2}, La/g/f;->a(La/b/d;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {p2}, La/g/b/ag;->b(La/b/d;)La/g/b/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/g/b/ag;->b(La/b/c;La/b/d;)V

    :cond_5f
    invoke-virtual {p2, p1, p0}, La/b/l;->a(La/b/k;La/b/a/d/i;)V

    :cond_62
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 9

    invoke-virtual {p2, p1, p0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    invoke-virtual {p2, p1}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p2, La/b/n;->a:[La/b/c;

    invoke-direct {p0, v2, v0}, La/g/a/ae;->a(Ljava/lang/String;[La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p2, p1}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    new-instance v4, La/b/c/ae;

    invoke-direct {v4, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {v4, v0}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/n;->c:I

    :cond_54
    invoke-virtual {v4, v3}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, La/b/n;->d:I

    iget-object v0, p2, La/b/n;->a:[La/b/c;

    invoke-direct {p0, v2, v0}, La/g/a/ae;->b(Ljava/lang/String;[La/b/c;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/n;->a:[La/b/c;

    :cond_62
    return-void

    :cond_63
    move-object v0, v1

    goto :goto_43
.end method
