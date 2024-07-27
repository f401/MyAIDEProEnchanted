.class public final Lcom/a/b/c/b/y;
.super Lcom/a/b/c/b/p;


# instance fields
.field private final a:[Lcom/a/b/e/c/a;

.field private final b:[I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;[Lcom/a/b/e/c/a;)V
    .registers 8

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/b/p;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constants == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p4, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/b/c/b/y;->b:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/b/c/b/y;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/a/b/c/b/y;->c:I

    return-void

    :cond_1
    aget-object v1, p4, v0

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constants[i] == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/a/b/c/b/y;->b:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;[Lcom/a/b/e/c/a;[II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/b/p;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    iput-object p4, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    iput-object p5, p0, Lcom/a/b/c/b/y;->b:[I

    iput p6, p0, Lcom/a/b/c/b/y;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
    .registers 9

    new-instance v0, Lcom/a/b/c/b/y;

    invoke-virtual {p0}, Lcom/a/b/c/b/y;->k()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/c/b/y;->l()Lcom/a/b/e/b/x;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    iget-object v5, p0, Lcom/a/b/c/b/y;->b:[I

    iget v6, p0, Lcom/a/b/c/b/y;->c:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/b/c/b/y;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;[Lcom/a/b/e/c/a;[II)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 9

    new-instance v0, Lcom/a/b/c/b/y;

    invoke-virtual {p0}, Lcom/a/b/c/b/y;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/y;->k()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v4, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    iget-object v5, p0, Lcom/a/b/c/b/y;->b:[I

    iget v6, p0, Lcom/a/b/c/b/y;->c:I

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/b/c/b/y;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;[Lcom/a/b/e/c/a;[II)V

    return-object v0
.end method

.method public a(I)Lcom/a/b/e/c/a;
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(II)V
    .registers 5

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/b/c/b/y;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/c/b/y;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public b(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/y;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index not yet set for constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/b/y;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method protected b()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    array-length v0, v0

    return v0
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lcom/a/b/c/b/y;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)Z
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/b/y;->b:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/b/y;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/c/b/y;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/a/b/c/b/y;->c:I

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/a/b/c/b/y;->a:[Lcom/a/b/e/c/a;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/b/c/b/y;->e(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/c/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/y;->b(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
