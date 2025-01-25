.class public final Lcom/a/b/g/n;
.super Lcom/a/b/g/t;


# static fields
.field public static final a:Lcom/a/b/g/n;


# instance fields
.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/g/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/g/n;-><init>(I)V

    sput-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    sget-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/a/b/g/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/a/b/g/t;-><init>(Z)V

    :try_start_4
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/a/b/g/n;->b:[I
    :try_end_8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_8} :catch_e

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/g/n;->c:I

    iput-boolean v1, p0, Lcom/a/b/g/n;->d:Z

    return-void

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(I)Lcom/a/b/g/n;
    .registers 3

    new-instance v0, Lcom/a/b/g/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/b/g/n;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/a/b/g/n;->c(I)V

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    return-object v0
.end method

.method public static a(II)Lcom/a/b/g/n;
    .registers 4

    new-instance v0, Lcom/a/b/g/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/a/b/g/n;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/a/b/g/n;->c(I)V

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->c(I)V

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    return-object v0
.end method

.method private h()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/a/b/g/n;->c:I

    iget-object v1, p0, Lcom/a/b/g/n;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/a/b/g/n;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/a/b/g/n;->b:[I

    iget v2, p0, Lcom/a/b/g/n;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/a/b/g/n;->b:[I

    :cond_1b
    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/g/n;->c:I

    return v0
.end method

.method public b(I)I
    .registers 4

    iget v0, p0, Lcom/a/b/g/n;->c:I

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    aget v0, v0, p1
    :try_end_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/g/n;->l()V

    iget v0, p0, Lcom/a/b/g/n;->c:I

    if-lt p1, v0, :cond_f

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    aput p2, v0, p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/g/n;->d:Z
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_16} :catch_17

    :cond_16
    return-void

    :catch_17
    move-exception v0

    if-gez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/b/g/n;->l()V

    invoke-direct {p0}, Lcom/a/b/g/n;->h()V

    iget-object v1, p0, Lcom/a/b/g/n;->b:[I

    iget v2, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/b/g/n;->c:I

    aput p1, v1, v2

    iget-boolean v1, p0, Lcom/a/b/g/n;->d:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/a/b/g/n;->c:I

    if-le v1, v0, :cond_25

    iget-object v1, p0, Lcom/a/b/g/n;->b:[I

    iget v2, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    if-lt p1, v1, :cond_26

    :goto_23
    iput-boolean v0, p0, Lcom/a/b/g/n;->d:Z

    :cond_25
    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public c(II)V
    .registers 7

    iget v0, p0, Lcom/a/b/g/n;->c:I

    if-le p1, v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n > size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lcom/a/b/g/n;->h()V

    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    iget-object v1, p0, Lcom/a/b/g/n;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/a/b/g/n;->c:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    aput p2, v0, p1

    iget v0, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/g/n;->c:I

    iget-boolean v0, p0, Lcom/a/b/g/n;->d:Z

    if-eqz v0, :cond_45

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-le p2, v0, :cond_45

    :cond_33
    iget v0, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_41

    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-ge p2, v0, :cond_45

    :cond_41
    const/4 v0, 0x1

    :goto_42
    iput-boolean v0, p0, Lcom/a/b/g/n;->d:Z

    return-void

    :cond_45
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .registers 6

    iget v0, p0, Lcom/a/b/g/n;->c:I

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/a/b/g/n;->b:[I

    iget v3, p0, Lcom/a/b/g/n;->c:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/b/g/n;->c:I

    return-void
.end method

.method public e()I
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/g/n;->l()V

    iget v0, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    iget v1, p0, Lcom/a/b/g/n;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/a/b/g/n;->c:I

    return v0
.end method

.method public e(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v0, p0, Lcom/a/b/g/n;->c:I

    if-le p1, v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {p0}, Lcom/a/b/g/n;->l()V

    iput p1, p0, Lcom/a/b/g/n;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/a/b/g/n;

    if-eqz v2, :cond_29

    check-cast p1, Lcom/a/b/g/n;

    iget-boolean v2, p0, Lcom/a/b/g/n;->d:Z

    iget-boolean v3, p1, Lcom/a/b/g/n;->d:Z

    if-ne v2, v3, :cond_29

    iget v2, p0, Lcom/a/b/g/n;->c:I

    iget v3, p1, Lcom/a/b/g/n;->c:I

    if-ne v2, v3, :cond_29

    move v2, v1

    :goto_18
    iget v3, p0, Lcom/a/b/g/n;->c:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/a/b/g/n;->b:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/a/b/g/n;->b:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public f(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/g/n;->g(I)I

    move-result v0

    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public f()Lcom/a/b/g/n;
    .registers 5

    iget v1, p0, Lcom/a/b/g/n;->c:I

    new-instance v2, Lcom/a/b/g/n;

    invoke-direct {v2, v1}, Lcom/a/b/g/n;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_b

    return-object v2

    :cond_b
    iget-object v3, p0, Lcom/a/b/g/n;->b:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public g(I)I
    .registers 7

    iget v1, p0, Lcom/a/b/g/n;->c:I

    iget-boolean v0, p0, Lcom/a/b/g/n;->d:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_b

    neg-int v0, v1

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/a/b/g/n;->b:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v2, -0x1

    move v0, v1

    move v3, v2

    :goto_17
    add-int/lit8 v2, v3, 0x1

    if-gt v0, v2, :cond_27

    if-eq v0, v1, :cond_36

    iget-object v1, p0, Lcom/a/b/g/n;->b:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_a

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_27
    sub-int v2, v0, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/a/b/g/n;->b:[I

    aget v4, v4, v2

    if-gt p1, v4, :cond_34

    move v0, v2

    goto :goto_17

    :cond_34
    move v3, v2

    goto :goto_17

    :cond_36
    neg-int v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method public g()V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/g/n;->l()V

    iget-boolean v0, p0, Lcom/a/b/g/n;->d:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/g/n;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/a/b/g/n;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/g/n;->d:Z

    :cond_12
    return-void
.end method

.method public h(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/g/n;->f(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget v1, p0, Lcom/a/b/g/n;->c:I

    if-lt v0, v1, :cond_8

    return v2

    :cond_8
    mul-int/lit8 v1, v2, 0x1f

    iget-object v2, p0, Lcom/a/b/g/n;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/a/b/g/n;->c:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_11
    iget v2, p0, Lcom/a/b/g/n;->c:I

    if-lt v0, v2, :cond_1f

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    if-eqz v0, :cond_26

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget-object v2, p0, Lcom/a/b/g/n;->b:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method
