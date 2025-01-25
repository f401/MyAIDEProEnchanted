.class final Lorg/c/a/a/c/a/a/c/ae;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[C

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/c/a/a/c/a/a/c/ae;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/ae;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    array-length v0, v0

    iput v0, p0, Lorg/c/a/a/c/a/a/c/ae;->c:I

    iput p2, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    return-void
.end method


# virtual methods
.method public a()C
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    iget v1, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    aget-char v0, v0, v1

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    iget v2, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public a(C)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    iget v1, p0, Lorg/c/a/a/c/a/a/c/ae;->c:I

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    iget v1, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b()C
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    array-length v1, v0

    :goto_3
    iget v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    :cond_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    iget v2, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    aget-char v0, v0, v2

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_8

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_8

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    goto :goto_3
.end method

.method public b(C)Z
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    array-length v1, v0

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    :goto_5
    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    aget-char v2, v2, v0

    if-ne v2, p1, :cond_13

    iput v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    iget v1, p0, Lorg/c/a/a/c/a/a/c/ae;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignatureReader{index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/ae;->b:[C

    iget v3, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    iget v4, p0, Lorg/c/a/a/c/a/a/c/ae;->c:I

    iget v5, p0, Lorg/c/a/a/c/a/a/c/ae;->d:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
