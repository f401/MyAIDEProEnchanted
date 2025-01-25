.class public final Lcom/a/b/e/b/z;
.super Lcom/a/b/g/t;


# static fields
.field public static final a:Lcom/a/b/e/b/z;


# instance fields
.field private final b:[Lcom/a/b/e/b/u;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/e/b/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/e/b/z;-><init>(I)V

    sput-object v0, Lcom/a/b/e/b/z;->a:Lcom/a/b/e/b/z;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v0}, Lcom/a/b/g/t;-><init>(Z)V

    new-array v0, p1, [Lcom/a/b/e/b/u;

    iput-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    iput v1, p0, Lcom/a/b/e/b/z;->c:I

    return-void

    :cond_e
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/b/u;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;
    .registers 6

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-lt v1, v2, :cond_9

    const/4 v0, 0x0

    :cond_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, v1

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method public a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/z;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/e/b/z;->b()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, v2}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a(Lcom/a/b/e/b/z;Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->l()V

    iget-object v2, p1, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v3, v0

    array-length v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/a/b/e/b/z;->c:I

    const/4 v1, 0x0

    :goto_11
    if-lt v1, v0, :cond_16

    :goto_13
    if-lt v0, v3, :cond_2c

    return-void

    :cond_16
    iget-object v4, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v4, v4, v1

    if-nez v4, :cond_1f

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1f
    aget-object v5, v2, v1

    invoke-virtual {v4, v5, p2}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/u;Z)Lcom/a/b/e/b/u;

    move-result-object v5

    if-eq v5, v4, :cond_1c

    iget-object v4, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aput-object v5, v4, v1

    goto :goto_1c

    :cond_2c
    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v0, v0

    return v0
.end method

.method public b(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 6

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-lt v1, v2, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, v1

    if-nez v0, :cond_13

    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_13
    invoke-virtual {p1, v0}, Lcom/a/b/e/b/u;->b(Lcom/a/b/e/b/u;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_8
.end method

.method public b(I)Lcom/a/b/e/b/z;
    .registers 6

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v1, v0

    new-instance v2, Lcom/a/b/e/b/z;

    add-int v0, v1, p1

    invoke-direct {v2, v0}, Lcom/a/b/e/b/z;-><init>(I)V

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v1, :cond_1b

    iget v0, p0, Lcom/a/b/e/b/z;->c:I

    iput v0, v2, Lcom/a/b/e/b/z;->c:I

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->k()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2}, Lcom/a/b/e/b/z;->c_()V

    :cond_1a
    return-object v2

    :cond_1b
    iget-object v3, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v3, v3, v0

    if-eqz v3, :cond_28

    invoke-virtual {v3, p1}, Lcom/a/b/e/b/u;->c(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public c(Lcom/a/b/e/b/u;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/e/b/z;->c:I
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/a/b/e/b/z;->c:I

    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v3, v0

    move v1, v2

    move v0, v2

    :goto_a
    if-lt v1, v3, :cond_f

    iput v0, p0, Lcom/a/b/e/b/z;->c:I

    :cond_e
    return v0

    :cond_f
    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v2, v1

    if-eqz v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public d(Lcom/a/b/e/b/u;)V
    .registers 7

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->l()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/e/b/z;->c:I

    :try_start_11
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aput-object p1, v1, v0

    if-lez v0, :cond_2e

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->k()I

    move-result v2

    if-ne v2, v4, :cond_2e

    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_2e
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    if-ne v1, v4, :cond_3b

    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_3b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_3b} :catch_3c

    :cond_3b
    return-void

    :catch_3c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec.getReg() out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/a/b/e/b/z;
    .registers 5

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v1, v0

    new-instance v2, Lcom/a/b/e/b/z;

    invoke-direct {v2, v1}, Lcom/a/b/e/b/z;-><init>(I)V

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v1, :cond_10

    iget v0, p0, Lcom/a/b/e/b/z;->c:I

    iput v0, v2, Lcom/a/b/e/b/z;->c:I

    return-object v2

    :cond_10
    iget-object v3, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v3, v3, v0

    if-eqz v3, :cond_19

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/e/b/z;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/a/b/e/b/z;

    iget-object v2, p1, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v3, v1

    array-length v1, v2

    if-ne v3, v1, :cond_5

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/e/b/z;->d()I

    move-result v4

    if-ne v1, v4, :cond_5

    move v1, v0

    :goto_1b
    if-lt v1, v3, :cond_1f

    const/4 v0, 0x1

    goto :goto_5

    :cond_1f
    iget-object v4, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    if-ne v4, v5, :cond_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Lcom/a/b/e/b/u;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v4, v0

    move v2, v1

    move v3, v1

    :goto_6
    if-lt v2, v4, :cond_9

    return v3

    :cond_9
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, v2

    if-nez v0, :cond_17

    move v0, v1

    :goto_10
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_17
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->hashCode()I

    move-result v0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v3, 0x19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    move v0, v2

    :goto_12
    if-lt v1, v3, :cond_1e

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2e

    if-eqz v0, :cond_31

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_31
    const/4 v0, 0x1

    goto :goto_2b
.end method
