.class public final Lcom/a/b/c/c/c;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/e/a/c;

.field private final b:[Lcom/a/b/c/c/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V
    .registers 8

    const/4 v0, 0x4

    invoke-static {p1}, Lcom/a/b/c/c/c;->a(Lcom/a/b/e/a/c;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    iput-object p1, p0, Lcom/a/b/c/c/c;->a:Lcom/a/b/e/a/c;

    invoke-virtual {p1}, Lcom/a/b/e/a/c;->b()I

    move-result v0

    new-array v0, v0, [Lcom/a/b/c/c/a;

    iput-object v0, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    invoke-virtual {p1}, Lcom/a/b/e/a/c;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/a;

    iget-object v3, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    new-instance v4, Lcom/a/b/c/c/a;

    invoke-direct {v4, v0, p2}, Lcom/a/b/c/c/a;-><init>(Lcom/a/b/e/a/a;Lcom/a/b/c/c/t;)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Lcom/a/b/e/a/c;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/a/b/e/a/c;->b()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Lcom/a/b/c/c/at;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/c;

    iget-object v0, p0, Lcom/a/b/c/c/c;->a:Lcom/a/b/e/a/c;

    iget-object v1, p1, Lcom/a/b/c/c/c;->a:Lcom/a/b/e/a/c;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->m:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    invoke-static {v0}, Lcom/a/b/c/c/a;->a([Lcom/a/b/c/c/a;)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->p()Lcom/a/b/c/c/aq;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    array-length v3, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    iget-object v0, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/a/b/c/c/aq;->b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/a;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 10

    const/4 v6, 0x4

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    array-length v2, v2

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v2}, Lcom/a/b/g/a;->d(I)V

    :goto_0
    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/a/b/c/c/a;->e()I

    move-result v3

    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  entries["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v6, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/c/c/c;->b:[Lcom/a/b/c/c/a;

    aget-object v4, v4, v0

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/a/b/c/c/a;->a(Lcom/a/b/g/a;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/c;->a:Lcom/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/a/b/e/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/c;->a:Lcom/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/a/b/e/a/c;->hashCode()I

    move-result v0

    return v0
.end method
