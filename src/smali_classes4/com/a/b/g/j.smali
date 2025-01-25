.class public Lcom/a/b/g/j;
.super Lcom/a/b/g/t;

# interfaces
.implements Lcom/a/b/g/w;


# instance fields
.field private a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, v0}, Lcom/a/b/g/t;-><init>(Z)V

    :try_start_6
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_6 .. :try_end_a} :catch_d

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Ljava/lang/Object;
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v2, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_11

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-lt v1, v2, :cond_1f

    if-eqz p3, :cond_1a

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    if-eqz v1, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    if-eqz p4, :cond_39

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/a/b/g/w;

    invoke-interface {v0}, Lcom/a/b/g/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_39
    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_35
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/b/g/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/g/j;->l()V

    :try_start_3
    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-direct {p0, p1}, Lcom/a/b/g/j;->a(I)Ljava/lang/Object;

    goto :goto_7
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/b/g/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/b/g/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d_()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method protected final e(I)Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    invoke-direct {p0, p1}, Lcom/a/b/g/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    :cond_12
    check-cast p1, Lcom/a/b/g/j;

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    iget-object v1, p1, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method protected final f(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    array-length v4, v0

    move v1, v2

    move v0, v2

    :goto_6
    if-lt v1, v4, :cond_b

    if-ne v4, v0, :cond_16

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v3, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    invoke-virtual {p0}, Lcom/a/b/g/j;->l()V

    new-array v5, v0, [Ljava/lang/Object;

    move v1, v2

    move v3, v2

    :goto_1d
    if-lt v3, v4, :cond_27

    iput-object v5, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/a/b/g/j;->c_()V

    goto :goto_a

    :cond_27
    iget-object v2, p0, Lcom/a/b/g/j;->a:[Ljava/lang/Object;

    aget-object v2, v2, v3

    if-eqz v2, :cond_31

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    :cond_31
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/b/g/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
