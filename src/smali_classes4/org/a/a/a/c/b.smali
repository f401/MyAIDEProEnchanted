.class public Lorg/a/a/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;


# static fields
.field static final g:Z


# instance fields
.field protected final a:Lorg/a/a/a/c/a;

.field protected b:[[Ljava/lang/Object;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/a/a/a/c/b;->g:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/a/c/b;-><init>(Lorg/a/a/a/c/a;II)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/c/a;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/c/b;->c:I

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/a/a/a/c/b;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/a/c/b;->e:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/a/a/a/c/b;->f:I

    if-nez p1, :cond_1a

    sget-object p1, Lorg/a/a/a/c/l;->a:Lorg/a/a/a/c/l;

    :cond_1a
    iput-object p1, p0, Lorg/a/a/a/c/b;->a:Lorg/a/a/a/c/a;

    invoke-virtual {p0, p2}, Lorg/a/a/a/c/b;->d(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    iput p3, p0, Lorg/a/a/a/c/b;->f:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 16

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    iget v0, p0, Lorg/a/a/a/c/b;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/a/a/a/c/b;->e:I

    iget-object v0, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->d(I)[[Ljava/lang/Object;

    move-result-object v5

    array-length v1, v5

    new-array v6, v1, [I

    iput-object v5, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    int-to-double v0, v0

    const-wide/high16 v8, 0x3fe8000000000000L  # 0.75

    mul-double/2addr v0, v8

    double-to-int v0, v0

    iput v0, p0, Lorg/a/a/a/c/b;->d:I

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v7

    array-length v8, v4

    move v3, v2

    :goto_24
    if-lt v3, v8, :cond_34

    sget-boolean v0, Lorg/a/a/a/c/b;->g:Z

    if-nez v0, :cond_6f

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    if-eq v0, v7, :cond_6f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_34
    aget-object v9, v4, v3

    if-nez v9, :cond_3c

    :cond_38
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_24

    :cond_3c
    array-length v10, v9

    move v1, v2

    :goto_3e
    if-ge v1, v10, :cond_38

    aget-object v11, v9, v1

    if-eqz v11, :cond_38

    invoke-virtual {p0, v11}, Lorg/a/a/a/c/b;->f(Ljava/lang/Object;)I

    move-result v12

    aget v13, v6, v12

    if-nez v13, :cond_60

    iget v0, p0, Lorg/a/a/a/c/b;->f:I

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->c(I)[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v12

    :cond_54
    :goto_54
    aput-object v11, v0, v13

    aget v0, v6, v12

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v12

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    :cond_60
    aget-object v0, v5, v12

    array-length v14, v0

    if-ne v13, v14, :cond_54

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x2

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v12

    goto :goto_54

    :cond_6f
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x1

    move v1, v0

    goto :goto_6
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    iget v1, p0, Lorg/a/a/a/c/b;->d:I

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->a()V

    :cond_9
    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->d(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/c/b;->c:I

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/a/a/a/c/b;->d:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 10

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/a/a/a/c/b;

    if-eqz v1, :cond_2c

    check-cast p1, Lorg/a/a/a/c/b;

    iget-object v3, p1, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v4, v3

    move v2, v0

    :goto_b
    if-lt v2, v4, :cond_f

    :cond_d
    const/4 v0, 0x1

    :cond_e
    :goto_e
    return v0

    :cond_f
    aget-object v5, v3, v2

    if-nez v5, :cond_17

    :cond_13
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    :cond_17
    array-length v6, v5

    move v1, v0

    :goto_19
    if-ge v1, v6, :cond_13

    aget-object v7, v5, v1

    if-eqz v7, :cond_13

    invoke-virtual {p0, v7}, Lorg/a/a/a/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/a/a/a/c/b;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/a/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/a/c/b;->g(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_e
.end method

.method protected d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v1, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    aget-object v3, v1, v2

    if-nez v3, :cond_37

    iget v1, p0, Lorg/a/a/a/c/b;->f:I

    invoke-virtual {p0, v1}, Lorg/a/a/a/c/b;->c(I)[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v0

    iget-object v0, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    aput-object v1, v0, v2

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/c/b;->c:I

    :goto_1d
    return-object p1

    :cond_1e
    aget-object v1, v3, v0

    if-nez v1, :cond_2b

    aput-object p1, v3, v0

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/c/b;->c:I

    goto :goto_1d

    :cond_2b
    iget-object v4, p0, Lorg/a/a/a/c/b;->a:Lorg/a/a/a/c/a;

    invoke-virtual {v4, v1, p1}, Lorg/a/a/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object p1, v1

    goto :goto_1d

    :cond_35
    add-int/lit8 v0, v0, 0x1

    :cond_37
    array-length v1, v3

    if-lt v0, v1, :cond_1e

    array-length v0, v3

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    aput-object v1, v3, v2

    aput-object p1, v1, v0

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/c/b;->c:I

    goto :goto_1d
.end method

.method protected d(I)[[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [[Ljava/lang/Object;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->f(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_10

    move-object p1, v0

    goto :goto_3

    :cond_10
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-lt v2, v4, :cond_17

    move-object p1, v0

    goto :goto_3

    :cond_17
    aget-object v1, v3, v2

    if-nez v1, :cond_1d

    move-object p1, v0

    goto :goto_3

    :cond_1d
    iget-object v5, p0, Lorg/a/a/a/c/b;->a:Lorg/a/a/a/c/a;

    invoke-virtual {v5, v1, p1}, Lorg/a/a/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object p1, v1

    goto :goto_3

    :cond_27
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Lorg/a/a/a/c/b;

    if-eqz v1, :cond_4

    check-cast p1, Lorg/a/a/a/c/b;

    invoke-virtual {p1}, Lorg/a/a/a/c/b;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4
.end method

.method protected final f(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/c/b;->a:Lorg/a/a/a/c/a;

    invoke-virtual {v0, p1}, Lorg/a/a/a/c/a;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public g(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public h(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->f(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    move v1, v0

    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    iget-object v4, p0, Lorg/a/a/a/c/b;->a:Lorg/a/a/a/c/a;

    invoke-virtual {v4, v3, p1}, Lorg/a/a/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    add-int/lit8 v0, v1, 0x1

    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-object v1, v2, v0

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/a/a/a/c/b;->c:I

    const/4 v0, 0x1

    goto :goto_3

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public hashCode()I
    .registers 11

    const/4 v2, 0x0

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    iget-object v4, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    :goto_9
    if-lt v3, v5, :cond_14

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0

    :cond_14
    aget-object v6, v4, v3

    if-nez v6, :cond_1c

    :cond_18
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_9

    :cond_1c
    array-length v7, v6

    move v1, v2

    :goto_1e
    if-ge v1, v7, :cond_18

    aget-object v8, v6, v1

    if-eqz v8, :cond_18

    iget-object v9, p0, Lorg/a/a/a/c/b;->a:Lorg/a/a/a/c/a;

    invoke-virtual {v9, v8}, Lorg/a/a/a/c/a;->a(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v0, v8}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/a/a/a/c/c;

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/a/a/a/c/c;-><init>(Lorg/a/a/a/c/b;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    return v0

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/a/c/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/a/c/b;->h(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 12

    const/4 v0, 0x0

    iget-object v6, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v7, v6

    move v5, v0

    move v1, v0

    :goto_6
    if-lt v5, v7, :cond_10

    iget v2, p0, Lorg/a/a/a/c/b;->c:I

    if-eq v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput v1, p0, Lorg/a/a/a/c/b;->c:I

    return v0

    :cond_10
    aget-object v8, v6, v5

    if-nez v8, :cond_18

    :goto_14
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_18
    move v2, v0

    move v3, v0

    :goto_1a
    array-length v4, v8

    if-lt v2, v4, :cond_22

    :cond_1d
    move v4, v3

    :goto_1e
    if-lt v4, v2, :cond_3c

    add-int/2addr v1, v3

    goto :goto_14

    :cond_22
    aget-object v4, v8, v2

    if-eqz v4, :cond_1d

    aget-object v4, v8, v2

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_31
    if-eq v2, v3, :cond_37

    aget-object v4, v8, v2

    aput-object v4, v8, v3

    :cond_37
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3c
    const/4 v9, 0x0

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/c/b;->c:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/b;->c(I)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_e
    if-lt v3, v6, :cond_11

    return-object v4

    :cond_11
    aget-object v7, v5, v3

    if-nez v7, :cond_19

    :cond_15
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_e

    :cond_19
    array-length v8, v7

    move v1, v2

    :goto_1b
    if-ge v1, v8, :cond_15

    aget-object v9, v7, v1

    if-eqz v9, :cond_15

    aput-object v9, v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11

    const/4 v2, 0x0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_10
    iget-object v4, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_15
    if-lt v3, v5, :cond_18

    return-object p1

    :cond_18
    aget-object v6, v4, v3

    if-nez v6, :cond_20

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_15

    :cond_20
    array-length v7, v6

    move v1, v2

    :goto_22
    if-ge v1, v7, :cond_1c

    aget-object v8, v6, v1

    if-eqz v8, :cond_1c

    aput-object v8, p1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/a/a/a/c/b;->size()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "{}"

    :goto_9
    return-object v0

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v5, p0, Lorg/a/a/a/c/b;->b:[[Ljava/lang/Object;

    array-length v6, v5

    move v3, v1

    :goto_19
    if-lt v3, v6, :cond_25

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_25
    aget-object v7, v5, v3

    if-nez v7, :cond_2d

    :cond_29
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_19

    :cond_2d
    array-length v8, v7

    move v2, v1

    :goto_2f
    if-ge v2, v8, :cond_29

    aget-object v9, v7, v2

    if-eqz v9, :cond_29

    if-eqz v0, :cond_42

    move v0, v1

    :goto_38
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_42
    const-string v10, ", "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38
.end method
