.class public final Lcom/a/b/e/c/i;
.super Lcom/a/b/e/c/d;


# direct methods
.method private constructor <init>(Lcom/a/b/e/c/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/c/d;-><init>(Lcom/a/b/e/c/e;)V

    return-void
.end method

.method public static a(Lcom/a/b/e/c/y;Lcom/a/b/e/c/aa;Lcom/a/b/a/b/c;)Lcom/a/b/e/c/i;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/a/b/e/c/e;

    invoke-virtual {p2}, Lcom/a/b/a/b/c;->d_()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Lcom/a/b/e/c/e;-><init>(I)V

    invoke-virtual {v1, v0, p0}, Lcom/a/b/e/c/e;->a(ILcom/a/b/e/c/a;)V

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/b/e/c/e;->a(ILcom/a/b/e/c/a;)V

    const/4 v2, 0x2

    new-instance v3, Lcom/a/b/e/c/ab;

    invoke-virtual {p1}, Lcom/a/b/e/c/aa;->b()Lcom/a/b/e/c/ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/a/b/e/d/a;->b(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/b/e/c/ab;-><init>(Lcom/a/b/e/d/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/a/b/e/c/e;->a(ILcom/a/b/e/c/a;)V

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {p2}, Lcom/a/b/a/b/c;->d_()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/a/b/e/c/e;->c_()V

    new-instance v0, Lcom/a/b/e/c/i;

    invoke-direct {v0, v1}, Lcom/a/b/e/c/i;-><init>(Lcom/a/b/e/c/e;)V

    return-object v0

    :cond_3
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p2, v0}, Lcom/a/b/a/b/c;->a(I)Lcom/a/b/e/c/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/b/e/c/e;->a(ILcom/a/b/e/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v0

    check-cast p1, Lcom/a/b/e/c/i;

    invoke-virtual {p1}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/e;->a(Lcom/a/b/e/c/e;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v0

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/b/e/c/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/c/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v0

    check-cast p1, Lcom/a/b/e/c/i;

    invoke-virtual {p1}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "call site"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/c/i;->a()Lcom/a/b/e/c/e;

    move-result-object v0

    const-string v1, "call site{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/b/e/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
