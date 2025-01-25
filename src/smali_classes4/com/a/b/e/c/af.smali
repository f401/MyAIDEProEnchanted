.class public final Lcom/a/b/e/c/af;
.super Lcom/a/b/g/t;

# interfaces
.implements Lcom/a/b/e/c/b;


# instance fields
.field private final a:[Lcom/a/b/e/c/a;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x1

    if-le p1, v1, :cond_11

    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/a/b/g/t;-><init>(Z)V

    if-ge p1, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_4

    :cond_13
    new-array v0, p1, [Lcom/a/b/e/c/a;

    iput-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    return-void
.end method

.method private static d(I)Lcom/a/b/e/c/a;
    .registers 4

    new-instance v0, Lcom/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid constant pool index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lcom/a/b/e/c/a;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/a/b/e/c/af;->d(I)Lcom/a/b/e/c/a;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-static {p1}, Lcom/a/b/e/c/af;->d(I)Lcom/a/b/e/c/a;

    move-result-object v0

    goto :goto_9
.end method

.method public a(ILcom/a/b/e/c/a;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/c/af;->l()V

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/a/b/e/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_e
    if-ge p1, v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_e

    :cond_1a
    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    add-int/lit8 v1, p1, 0x1

    aput-object v2, v0, v1

    :cond_31
    if-eqz p2, :cond_4d

    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    aget-object v0, v0, p1

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    add-int/lit8 v1, p1, -0x1

    aput-object v2, v0, v1

    :cond_4d
    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    aput-object p2, v0, p1

    return-void
.end method

.method public b(I)Lcom/a/b/e/c/a;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/a/b/e/c/af;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    goto :goto_3
.end method

.method public c(I)Lcom/a/b/e/c/a;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/a/b/e/c/af;->a:[Lcom/a/b/e/c/a;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {p1}, Lcom/a/b/e/c/af;->d(I)Lcom/a/b/e/c/a;

    move-result-object v0

    goto :goto_4
.end method
