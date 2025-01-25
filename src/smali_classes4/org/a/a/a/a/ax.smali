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

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lorg/a/a/a/a/ax;->h:Z

    new-instance v0, Lorg/a/a/a/a/y;

    invoke-direct {v0}, Lorg/a/a/a/a/y;-><init>()V

    sput-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    sput v1, Lorg/a/a/a/a/ax;->e:I

    return-void

    :cond_16
    move v0, v1

    goto :goto_a
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

    :goto_8
    if-lt v2, v3, :cond_15

    array-length v2, p1

    :goto_b
    if-lt v0, v2, :cond_1e

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0

    :cond_15
    aget-object v4, p0, v2

    invoke-static {v1, v4}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    aget v3, p1, v0

    invoke-static {v1, v3}, Lorg/a/a/a/c/k;->a(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;
    .registers 6

    sget-boolean v0, Lorg/a/a/a/a/ax;->h:Z

    if-nez v0, :cond_e

    if-eqz p0, :cond_8

    if-nez p1, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    if-eq p0, p1, :cond_16

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-object p0

    :cond_17
    instance-of v0, p0, Lorg/a/a/a/a/bg;

    if-eqz v0, :cond_28

    instance-of v0, p1, Lorg/a/a/a/a/bg;

    if-eqz v0, :cond_28

    check-cast p0, Lorg/a/a/a/a/bg;

    check-cast p1, Lorg/a/a/a/a/bg;

    invoke-static {p0, p1, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object p0

    goto :goto_16

    :cond_28
    if-eqz p2, :cond_34

    instance-of v0, p0, Lorg/a/a/a/a/y;

    if-nez v0, :cond_16

    instance-of v0, p1, Lorg/a/a/a/a/y;

    if-eqz v0, :cond_34

    move-object p0, p1

    goto :goto_16

    :cond_34
    instance-of v0, p0, Lorg/a/a/a/a/bg;

    if-eqz v0, :cond_55

    new-instance v0, Lorg/a/a/a/a/r;

    check-cast p0, Lorg/a/a/a/a/bg;

    invoke-direct {v0, p0}, Lorg/a/a/a/a/r;-><init>(Lorg/a/a/a/a/bg;)V

    :goto_3f
    instance-of v1, p1, Lorg/a/a/a/a/bg;

    if-eqz v1, :cond_53

    new-instance v1, Lorg/a/a/a/a/r;

    check-cast p1, Lorg/a/a/a/a/bg;

    invoke-direct {v1, p1}, Lorg/a/a/a/a/r;-><init>(Lorg/a/a/a/a/bg;)V

    :goto_4a
    check-cast v0, Lorg/a/a/a/a/r;

    check-cast v1, Lorg/a/a/a/a/r;

    invoke-static {v0, v1, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/r;Lorg/a/a/a/a/r;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object p0

    goto :goto_16

    :cond_53
    move-object v1, p1

    goto :goto_4a

    :cond_55
    move-object v0, p0

    goto :goto_3f
.end method

.method public static a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;Z)Lorg/a/a/a/a/ax;
    .registers 10

    const v6, 0x7fffffff

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_16

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_f

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p1, v0, :cond_51

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    goto :goto_e

    :cond_16
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_21

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p1, v0, :cond_21

    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    goto :goto_e

    :cond_21
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p0, v0, :cond_39

    iget v1, p1, Lorg/a/a/a/a/bg;->b:I

    new-array v2, v3, [Lorg/a/a/a/a/ax;

    iget-object v0, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v0, v2, v4

    new-instance v0, Lorg/a/a/a/a/r;

    new-array v3, v3, [I

    aput v1, v3, v4

    aput v6, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    goto :goto_e

    :cond_39
    sget-object v0, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    if-ne p1, v0, :cond_51

    iget v1, p0, Lorg/a/a/a/a/bg;->b:I

    new-array v2, v3, [Lorg/a/a/a/a/ax;

    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v0, v2, v4

    new-instance v0, Lorg/a/a/a/a/r;

    new-array v3, v3, [I

    aput v1, v3, v4

    aput v6, v3, v5

    invoke-direct {v0, v2, v3}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    goto :goto_e

    :cond_51
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_16

    invoke-virtual {p3, p0, p1}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p3, p1, p0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-nez v0, :cond_d

    :cond_16
    invoke-static {p0, p1, p2}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/bg;Lorg/a/a/a/a/bg;Z)Lorg/a/a/a/a/ax;

    move-result-object v0

    if-eqz v0, :cond_22

    if-eqz p3, :cond_d

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_22
    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    iget v1, p1, Lorg/a/a/a/a/bg;->b:I

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    invoke-static {v0, v1, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-ne v0, v1, :cond_36

    move-object v0, p0

    goto :goto_d

    :cond_36
    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-ne v0, v1, :cond_3c

    move-object v0, p1

    goto :goto_d

    :cond_3c
    iget v1, p0, Lorg/a/a/a/a/bg;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/a/bg;->b(Lorg/a/a/a/a/ax;I)Lorg/a/a/a/a/bg;

    move-result-object v0

    if-eqz p3, :cond_d

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_48
    const/4 v0, 0x0

    if-eq p0, p1, :cond_59

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iget-object v2, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    invoke-virtual {v1, v2}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :cond_59
    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    move-object v1, v0

    :goto_5c
    if-eqz v1, :cond_87

    new-array v2, v6, [I

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    iget v3, p1, Lorg/a/a/a/a/bg;->b:I

    if-le v0, v3, :cond_76

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    :cond_76
    new-instance v0, Lorg/a/a/a/a/r;

    new-array v3, v6, [Lorg/a/a/a/a/ax;

    aput-object v1, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v0, v3, v2}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    if-eqz p3, :cond_d

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_87
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

    if-le v1, v3, :cond_b3

    iget v0, p1, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v4

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    aput v0, v2, v5

    new-array v0, v6, [Lorg/a/a/a/a/ax;

    iget-object v1, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    aput-object v1, v0, v5

    :cond_b3
    move-object v1, v0

    new-instance v0, Lorg/a/a/a/a/r;

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    if-eqz p3, :cond_d

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_c0
    move-object v1, v0

    goto :goto_5c
.end method

.method public static a(Lorg/a/a/a/a/r;Lorg/a/a/a/a/r;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;
    .registers 16

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_15

    invoke-virtual {p3, p0, p1}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p3, p1, p0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    if-nez v0, :cond_c

    :cond_15
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

    :goto_2a
    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v6, v6

    if-ge v2, v6, :cond_34

    iget-object v6, p1, Lorg/a/a/a/a/r;->b:[I

    array-length v6, v6

    if-lt v0, v6, :cond_51

    :cond_34
    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v6, v6

    if-ge v2, v6, :cond_da

    :goto_39
    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v0, v0

    if-lt v2, v0, :cond_b8

    :goto_3e
    array-length v0, v5

    if-ge v3, v0, :cond_117

    if-ne v3, v7, :cond_e1

    aget-object v0, v5, v1

    aget v1, v4, v1

    invoke-static {v0, v1}, Lorg/a/a/a/a/bg;->b(Lorg/a/a/a/a/ax;I)Lorg/a/a/a/a/bg;

    move-result-object v0

    if-eqz p3, :cond_c

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_51
    iget-object v6, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v9, v6, v2

    iget-object v6, p1, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v10, v6, v0

    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v2

    iget-object v8, p1, Lorg/a/a/a/a/r;->b:[I

    aget v8, v8, v0

    if-ne v6, v8, :cond_98

    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v11, v6, v2

    const v6, 0x7fffffff

    if-ne v11, v6, :cond_8b

    if-nez v9, :cond_8b

    if-nez v10, :cond_8b

    move v8, v7

    :goto_71
    if-eqz v9, :cond_8d

    if-eqz v10, :cond_8d

    invoke-virtual {v9, v10}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    move v6, v7

    :goto_7c
    if-nez v8, :cond_80

    if-eqz v6, :cond_8f

    :cond_80
    aput-object v9, v5, v3

    aput v11, v4, v3

    :goto_84
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_8b
    move v8, v1

    goto :goto_71

    :cond_8d
    move v6, v1

    goto :goto_7c

    :cond_8f
    invoke-static {v9, v10, p2, p3}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object v6

    aput-object v6, v5, v3

    aput v11, v4, v3

    goto :goto_84

    :cond_98
    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v2

    iget-object v8, p1, Lorg/a/a/a/a/r;->b:[I

    aget v8, v8, v0

    if-ge v6, v8, :cond_ad

    aput-object v9, v5, v3

    iget-object v6, p0, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v2

    aput v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_ad
    aput-object v10, v5, v3

    iget-object v6, p1, Lorg/a/a/a/a/r;->b:[I

    aget v6, v6, v0

    aput v6, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_b8
    iget-object v0, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v0, v0, v2

    aput-object v0, v5, v3

    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    aget v0, v0, v2

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_39

    :cond_ca
    iget-object v2, p1, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v2, v2, v0

    aput-object v2, v5, v3

    iget-object v2, p1, Lorg/a/a/a/a/r;->b:[I

    aget v2, v2, v0

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_da
    iget-object v2, p1, Lorg/a/a/a/a/r;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_ca

    goto/16 :goto_3e

    :cond_e1
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/a/ax;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v2, v0

    :goto_ec
    new-instance v0, Lorg/a/a/a/a/r;

    invoke-direct {v0, v2, v1}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    invoke-virtual {v0, p0}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    if-eqz p3, :cond_fc

    invoke-virtual {p3, p0, p1, p0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fc
    move-object v0, p0

    goto/16 :goto_c

    :cond_ff
    invoke-virtual {v0, p1}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    if-eqz p3, :cond_10a

    invoke-virtual {p3, p0, p1, p1}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10a
    move-object v0, p1

    goto/16 :goto_c

    :cond_10d
    invoke-static {v2}, Lorg/a/a/a/a/ax;->a([Lorg/a/a/a/a/ax;)V

    if-eqz p3, :cond_c

    invoke-virtual {p3, p0, p1, v0}, Lorg/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_117
    move-object v1, v4

    move-object v2, v5

    goto :goto_ec
.end method

.method protected static a([Lorg/a/a/a/a/ax;)V
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_7
    array-length v3, p0

    if-lt v0, v3, :cond_e

    :goto_a
    array-length v0, p0

    if-lt v1, v0, :cond_1c

    return-void

    :cond_e
    aget-object v3, p0, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    aget-object v0, p0, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ax;

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
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

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
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

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/ax;->g:I

    return v0
.end method
