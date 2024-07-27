.class public abstract Lorg/a/a/a/a/ax;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lorg/a/a/a/a/y;

.field public static e:I

.field static final h:Z


# instance fields
.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/a/a/a/ax;->h:Z

    new-instance v0, Lorg/a/a/a/a/y;

    invoke-direct {v0}, Lorg/a/a/a/a/y;-><init>()V

    sput-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    sput v1, Lorg/a/a/a/a/ax;->e:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/a/a/a/a/ax;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/a/a/a/a/ax;->e:I

    iput v0, p0, Lorg/a/a/a/a/ax;->f:I

    iput p1, p0, Lorg/a/a/a/a/ax;->g:I

    return-void
.end method

.method protected static a(Lorg/a/a/a/a/ax;I)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/a/a/a/c/k;->a(I)I

    move-result v0

    invoke-static {v0, p0}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0, p1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

.method protected static a([Lorg/a/a/a/a/ax;[I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/a/a/a/c/k;->a(I)I

    move-result v1

    array-length v3, p0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    array-length v2, p1

    :goto_1
    if-lt v0, v2, :cond_1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0

    :cond_0
    aget-object v4, p0, v2

    invoke-static {v1, v4}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget v3, p1, v0

    invoke-static {v1, v3}, Lorg/a/a/a/c/k;->a(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;
    .registers 6

    sget-boolean v0, Lorg/a/a/a/a/ax;->h:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-eq p0, p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/a/a/a/a/bg;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lorg/a/a/a/a/bg;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/a/a/a/a/bg;

    check-cast p1, Lorg/a/a/a/a/bg;

    invoke-static {p0, p1, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    instance-of v0, p0, Lorg/a/a/a/a/y;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/a/a/a/a/y;

    if-eqz v0, :cond_5

    move-object p0, p1

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lorg/a/a/a/a/bg;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/a/a/a/a/r;

    check-cast p0, Lorg/a/a/a/a/bg;

    invoke-direct {v0, p0}, Lorg/a/a/a/a/r;-><init>(Lorg/a/a/a/a/bg;)V

    :goto_1
    instance-of v1, p1, Lorg/a/a/a/a/bg;

    if-eqz v1, :cond_6

    new-instance v1, Lorg/a/a/a/a/r;

    check-cast p1, Lorg/a/a/a/a/bg;

    invoke-direct {v1, p1}, Lorg/a/a/a/a/r;-><init>(Lorg/a/a/a/a/bg;)V

    :goto_2
    check-cast v0, Lorg/a/a/a/a/r;

    check-cast v1, Lorg/a/a/a/a/r;

    invoke-static {v0, v1, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/r;Lorg/a/a/a/a/r;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object v1, p1

    goto :goto_2

    :cond_7
    move-object v0, p0

    goto :goto_1
.end method

.method public static a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;Z)Lorg/a/a/a/a/ax;
    .registers 10

    const v6, 0x7fffffff

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p1, v0, :cond_4

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_2

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p1, v0, :cond_2

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_3

    iget v1, p1, Lorg/a/a/a/a/bg;->b:I

    new-array v2, v3, [Lorg/a/a/a/a/ax;

    iget-object v0, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v0, v2, v4

    new-instance v0, Lorg/a/a/a/a/r;

    new-array v3, v3, [I

    aput v1, v3, v4

    aput v6, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p1, v0, :cond_4

    iget v1, p0, Lorg/a/a/a/a/bg;->b:I

    new-array v2, v3, [Lorg/a/a/a/a/ax;

    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v0, v2, v4

    new-instance v0, Lorg/a/a/a/a/r;

    new-array v3, v3, [I

    aput v1, v3, v4

    aput v6, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0, p1}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p3, p1, p0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;Z)Lorg/a/a/a/a/ax;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    iget v1, p1, Lorg/a/a/a/a/bg;->b:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    invoke-static {v0, v1, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-ne v0, v1, :cond_4

    move-object v0, p0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-ne v0, v1, :cond_5

    move-object v0, p1

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/a/a/a/a/bg;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/a/bg;->b(Lorg/a/a/a/a/ax;I)Lorg/a/a/a/a/bg;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    if-eq p0, p1, :cond_7

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iget-object v2, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    invoke-virtual {v1, v2}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_7
    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_9

    new-array v2, v6, [I

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    iget v3, p1, Lorg/a/a/a/a/bg;->b:I

    if-le v0, v3, :cond_8

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    :cond_8
    new-instance v0, Lorg/a/a/a/a/r;

    new-array v3, v6, [Lorg/a/a/a/a/ax;

    aput-object v1, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v0, v3, v2}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    new-array v2, v6, [I

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    new-array v0, v6, [Lorg/a/a/a/a/ax;

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v1, v0, v4

    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v1, v0, v5

    iget v1, p0, Lorg/a/a/a/a/bg;->b:I

    iget v3, p1, Lorg/a/a/a/a/bg;->b:I

    if-le v1, v3, :cond_a

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    new-array v0, v6, [Lorg/a/a/a/a/ax;

    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v1, v0, v5

    :cond_a
    move-object v1, v0

    new-instance v0, Lorg/a/a/a/a/r;

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Lorg/a/a/a/a/r;Lorg/a/a/a/a/r;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;
    .registers 16

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0, p1}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p3, p1, p0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v0, v0

    iget-object v2, p1, Lorg/a/a/a/a/r;->b:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v4, v0, [I

    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v0, v0

    iget-object v2, p1, Lorg/a/a/a/a/r;->b:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v5, v0, [Lorg/a/a/a/a/ax;

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    iget-object v6, p1, Lorg/a/a/a/a/r;->b:[I

    array-length v6, v6

    if-lt v0, v6, :cond_4

    :cond_3
    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v6, v6

    if-ge v2, v6, :cond_d

    :goto_2
    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v0, v0

    if-lt v2, v0, :cond_b

    :goto_3
    array-length v0, v5

    if-ge v3, v0, :cond_13

    if-ne v3, v7, :cond_e

    aget-object v0, v5, v1

    aget v1, v4, v1

    invoke-static {v0, v1}, Lorg/a/a/a/a/bg;->b(Lorg/a/a/a/a/ax;I)Lorg/a/a/a/a/bg;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v9, v6, v2

    iget-object v6, p1, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v10, v6, v0

    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v2

    iget-object v8, p1, Lorg/a/a/a/a/r;->b:[I

    aget v8, v8, v0

    if-ne v6, v8, :cond_9

    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v11, v6, v2

    const v6, 0x7fffffff

    if-ne v11, v6, :cond_6

    if-nez v9, :cond_6

    if-nez v10, :cond_6

    move v8, v7

    :goto_4
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v9, v10}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    :goto_5
    if-nez v8, :cond_5

    if-eqz v6, :cond_8

    :cond_5
    aput-object v9, v5, v3

    aput v11, v4, v3

    :goto_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v8, v1

    goto :goto_4

    :cond_7
    move v6, v1

    goto :goto_5

    :cond_8
    invoke-static {v9, v10, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object v6

    aput-object v6, v5, v3

    aput v11, v4, v3

    goto :goto_6

    :cond_9
    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v2

    iget-object v8, p1, Lorg/a/a/a/a/r;->b:[I

    aget v8, v8, v0

    if-ge v6, v8, :cond_a

    aput-object v9, v5, v3

    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v2

    aput v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    aput-object v10, v5, v3

    iget-object v6, p1, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v0

    aput v6, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v0, v0, v2

    aput-object v0, v5, v3

    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    aget v0, v0, v2

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_c
    iget-object v2, p1, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v2, v2, v0

    aput-object v2, v5, v3

    iget-object v2, p1, Lorg/a/a/a/a/r;->b:[I

    aget v2, v2, v0

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_d
    iget-object v2, p1, Lorg/a/a/a/a/r;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_c

    goto/16 :goto_3

    :cond_e
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/a/ax;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v2, v0

    :goto_8
    new-instance v0, Lorg/a/a/a/a/r;

    invoke-direct {v0, v2, v1}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    invoke-virtual {v0, p0}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p3, :cond_f

    invoke-virtual {p3, p0, p1, p0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object v0, p0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0, p1}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p3, :cond_11

    invoke-virtual {p3, p0, p1, p1}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object v0, p1

    goto/16 :goto_0

    :cond_12
    invoke-static {v2}, Lorg/a/a/a/a/ax;->a([Lorg/a/a/a/a/ax;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    move-object v1, v4

    move-object v2, v5

    goto :goto_8
.end method

.method protected static a([Lorg/a/a/a/a/ax;)V
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    :goto_1
    array-length v0, p0

    if-lt v1, v0, :cond_2

    return-void

    :cond_0
    aget-object v3, p0, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p0, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected static d()I
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/a/a/a/c/k;->a(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(I)Lorg/a/a/a/a/ax;
.end method

.method public a()Z
    .registers 2

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()I
.end method

.method public abstract b(I)I
.end method

.method public c()Z
    .registers 3

    invoke-virtual {p0}, Lorg/a/a/a/a/ax;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a/a/ax;->b(I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/ax;->g:I

    return v0
.end method
