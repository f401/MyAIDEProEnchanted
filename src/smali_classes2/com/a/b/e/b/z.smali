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

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/b/g/t;-><init>(Z)V

    new-array v0, p1, [Lcom/a/b/e/b/u;

    iput-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    iput v1, p0, Lcom/a/b/e/b/z;->c:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/b/u;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
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

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
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

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    if-lt v0, v3, :cond_3

    return-void

    :cond_0
    iget-object v4, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v4, v4, v1

    if-nez v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, v2, v1

    invoke-virtual {v4, v5, p2}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/u;Z)Lcom/a/b/e/b/u;

    move-result-object v5

    if-eq v5, v4, :cond_1

    iget-object v4, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aput-object v5, v4, v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
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

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/a/b/e/b/u;->b(Lcom/a/b/e/b/u;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1
.end method

.method public b(I)Lcom/a/b/e/b/z;
    .registers 6

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v1, v0

    new-instance v2, Lcom/a/b/e/b/z;

    add-int v0, v1, p1

    invoke-direct {v2, v0}, Lcom/a/b/e/b/z;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/a/b/e/b/z;->c:I

    iput v0, v2, Lcom/a/b/e/b/z;->c:I

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/a/b/e/b/z;->c_()V

    :cond_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/a/b/e/b/u;->c(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v3, v0

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_1

    iput v0, p0, Lcom/a/b/e/b/z;->c:I

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(Lcom/a/b/e/b/u;)V
    .registers 7

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->l()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/e/b/z;->c:I

    :try_start_0
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aput-object p1, v1, v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->k()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_1
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
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

    :goto_0
    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/a/b/e/b/z;->c:I

    iput v0, v2, Lcom/a/b/e/b/z;->c:I

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/e/b/z;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/e/b/z;

    iget-object v2, p1, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    iget-object v1, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v3, v1

    array-length v1, v2

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/b/e/b/z;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/e/b/z;->d()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    if-ne v4, v5, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Lcom/a/b/e/b/u;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    array-length v4, v0

    move v2, v1

    move v3, v1

    :goto_0
    if-lt v3, v4, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->hashCode()I

    move-result v0

    goto :goto_1
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

    :goto_0
    if-lt v1, v3, :cond_0

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/a/b/e/b/z;->b:[Lcom/a/b/e/b/u;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
