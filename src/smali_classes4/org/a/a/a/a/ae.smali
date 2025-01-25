.class public Lorg/a/a/a/a/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lorg/a/a/a/a/ad;

.field private final b:I


# direct methods
.method public constructor <init>([Lorg/a/a/a/a/ad;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    array-length v2, p1

    const/4 v1, 0x0

    :goto_b
    if-lt v1, v2, :cond_15

    array-length v1, p1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a/ae;->b:I

    return-void

    :cond_15
    aget-object v3, p1, v1

    invoke-static {v0, v3}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static a(Lorg/a/a/a/a/ae;Lorg/a/a/a/a/ad;)Lorg/a/a/a/a/ae;
    .registers 5

    if-nez p0, :cond_e

    new-instance v0, Lorg/a/a/a/a/ae;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/a/a/a/a/ad;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/a/a/a/a/ae;-><init>([Lorg/a/a/a/a/ad;)V

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    iget-object v1, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/a/ad;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    new-instance v1, Lorg/a/a/a/a/ae;

    invoke-direct {v1, v0}, Lorg/a/a/a/a/ae;-><init>([Lorg/a/a/a/a/ad;)V

    move-object v0, v1

    goto :goto_d
.end method


# virtual methods
.method public a(I)Lorg/a/a/a/a/ae;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    array-length v2, v2

    if-lt v1, v2, :cond_a

    if-nez v0, :cond_34

    :goto_9
    return-object p0

    :cond_a
    iget-object v2, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/a/a/a/a/ad;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    aget-object v2, v2, v1

    instance-of v2, v2, Lorg/a/a/a/a/ai;

    if-nez v2, :cond_31

    if-nez v0, :cond_26

    iget-object v0, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    invoke-virtual {v0}, [Lorg/a/a/a/a/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/a/ad;

    :cond_26
    new-instance v2, Lorg/a/a/a/a/ai;

    iget-object v3, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    aget-object v3, v3, v1

    invoke-direct {v2, p1, v3}, Lorg/a/a/a/a/ai;-><init>(ILorg/a/a/a/a/ad;)V

    aput-object v2, v0, v1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_34
    new-instance p0, Lorg/a/a/a/a/ae;

    invoke-direct {p0, v0}, Lorg/a/a/a/a/ae;-><init>([Lorg/a/a/a/a/ad;)V

    goto :goto_9
.end method

.method public a(Lorg/a/a/a/p;Lorg/a/a/a/c;I)V
    .registers 14

    const/4 v4, 0x0

    invoke-interface {p2}, Lorg/a/a/a/c;->b()I

    move-result v6

    :try_start_5
    iget-object v7, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    array-length v8, v7
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_44

    move v5, v4

    move v3, v4

    :goto_a
    if-lt v5, v8, :cond_12

    if-eqz v3, :cond_11

    invoke-interface {p2, v6}, Lorg/a/a/a/c;->b(I)V

    :cond_11
    return-void

    :cond_12
    aget-object v2, v7, v5

    :try_start_14
    instance-of v1, v2, Lorg/a/a/a/a/ai;

    if-eqz v1, :cond_39

    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/ai;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/a/a/a/a/ai;->b()I

    move-result v1

    add-int v9, p3, v1

    invoke-interface {p2, v9}, Lorg/a/a/a/c;->b(I)V

    check-cast v2, Lorg/a/a/a/a/ai;

    invoke-virtual {v2}, Lorg/a/a/a/a/ai;->c()Lorg/a/a/a/a/ad;
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_4d

    move-result-object v2

    add-int/2addr v1, p3

    if-eq v1, v6, :cond_37

    const/4 v1, 0x1

    :goto_2f
    :try_start_2f
    invoke-interface {v2, p1}, Lorg/a/a/a/a/ad;->a(Lorg/a/a/a/p;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_51

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    goto :goto_a

    :cond_37
    move v1, v4

    goto :goto_2f

    :cond_39
    :try_start_39
    invoke-interface {v2}, Lorg/a/a/a/a/ad;->a()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p2, v6}, Lorg/a/a/a/c;->b(I)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_4d

    move v1, v4

    goto :goto_2f

    :catchall_44
    move-exception v1

    move v2, v4

    move-object v5, v1

    :goto_47
    if-eqz v2, :cond_4c

    invoke-interface {p2, v6}, Lorg/a/a/a/c;->b(I)V

    :cond_4c
    throw v5

    :catchall_4d
    move-exception v1

    move v2, v3

    move-object v5, v1

    goto :goto_47

    :catchall_51
    move-exception v3

    move v2, v1

    move-object v5, v3

    goto :goto_47

    :cond_55
    move v1, v3

    goto :goto_2f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/a/a/a/a/ae;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/a/a/a/a/ae;

    iget v2, p0, Lorg/a/a/a/a/ae;->b:I

    iget v3, p1, Lorg/a/a/a/a/ae;->b:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    iget-object v3, p1, Lorg/a/a/a/a/ae;->a:[Lorg/a/a/a/a/ad;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/ae;->b:I

    return v0
.end method
