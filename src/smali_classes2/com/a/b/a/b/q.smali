.class public final Lcom/a/b/a/b/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/a/b/v;

.field private final b:Lcom/a/b/a/b/p;

.field private final c:Lcom/a/b/g/n;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    new-instance v0, Lcom/a/b/a/b/z;

    invoke-direct {v0, p1}, Lcom/a/b/a/b/z;-><init>(I)V

    new-instance v1, Lcom/a/b/a/b/p;

    invoke-direct {v1, p2}, Lcom/a/b/a/b/p;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;)V
    .registers 4

    sget-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stack == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3}, Lcom/a/b/g/n;->m()V

    iput-object p1, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    iput-object p2, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    iput-object p3, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    return-void
.end method

.method private static a(Lcom/a/b/a/b/v;Lcom/a/b/g/n;)Lcom/a/b/a/b/v;
    .registers 3

    instance-of v0, p0, Lcom/a/b/a/b/w;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    check-cast p0, Lcom/a/b/a/b/w;

    invoke-virtual {p1}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/a/b/w;->b()Lcom/a/b/a/b/z;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Lcom/a/b/g/n;)Lcom/a/b/g/n;
    .registers 8

    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0}, Lcom/a/b/g/n;-><init>()V

    iget-object v1, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/g/n;->b()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v4, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v4

    invoke-virtual {p1, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/a/b/a/b/q;
    .registers 5

    new-instance v0, Lcom/a/b/a/b/q;

    iget-object v1, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    invoke-virtual {v1}, Lcom/a/b/a/b/v;->a()Lcom/a/b/a/b/v;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    invoke-virtual {v2}, Lcom/a/b/a/b/p;->a()Lcom/a/b/a/b/p;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    return-object v0
.end method

.method public a(II)Lcom/a/b/a/b/q;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    instance-of v0, v0, Lcom/a/b/a/b/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    check-cast v0, Lcom/a/b/a/b/w;

    invoke-virtual {v0, p2}, Lcom/a/b/a/b/w;->b(I)Lcom/a/b/a/b/v;

    move-result-object v0

    move-object v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->f()Lcom/a/b/g/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/g/n;->e()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "returning from invalid subroutine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "returning from invalid subroutine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/a/b/g/n;->c_()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t return from non-subroutine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/a/b/a/b/q;

    iget-object v1, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    invoke-direct {v0, v2, v1, v3}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public a(Lcom/a/b/a/b/q;)Lcom/a/b/a/b/q;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/v;->a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/p;->a(Lcom/a/b/a/b/p;)Lcom/a/b/a/b/p;

    move-result-object v1

    iget-object v2, p1, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-direct {p0, v2}, Lcom/a/b/a/b/q;->a(Lcom/a/b/g/n;)Lcom/a/b/g/n;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/b/a/b/q;->a(Lcom/a/b/a/b/v;Lcom/a/b/g/n;)Lcom/a/b/a/b/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    if-ne v3, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/a/b/a/b/q;

    invoke-direct {p0, v0, v1, v2}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    goto :goto_0
.end method

.method public a(Lcom/a/b/a/b/q;II)Lcom/a/b/a/b/q;
    .registers 13

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/a/b/a/b/v;->a(Lcom/a/b/a/b/v;I)Lcom/a/b/a/b/w;

    move-result-object v3

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/p;->a(Lcom/a/b/a/b/p;)Lcom/a/b/a/b/p;

    move-result-object v4

    iget-object v0, p1, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->f()Lcom/a/b/g/n;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/a/b/g/n;->c(I)V

    invoke-virtual {v1}, Lcom/a/b/g/n;->c_()V

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v0

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    :cond_1
    new-instance p0, Lcom/a/b/a/b/q;

    invoke-direct {p0, v3, v4, v2}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v2, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    move-object v0, v1

    :goto_1
    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v7

    sub-int v8, v5, v6

    add-int/2addr v8, v1

    invoke-virtual {v2, v8}, Lcom/a/b/g/n;->b(I)I

    move-result v8

    if-eq v7, v8, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incompatible merged subroutines"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    move-object v2, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public a(Lcom/a/b/e/c/ae;)Lcom/a/b/a/b/q;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/b/p;->a()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/b/p;->c()V

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/p;->a(Lcom/a/b/e/d/d;)V

    new-instance v1, Lcom/a/b/a/b/q;

    invoke-virtual {p0}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-direct {v1, v2, v0, v3}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    return-object v1
.end method

.method public a(Lcom/a/a/a/b;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/v;->a(Lcom/a/a/a/b;)V

    iget-object v0, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/p;->a(Lcom/a/a/a/b;)V

    return-void
.end method

.method public a(Lcom/a/b/e/d/b;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/d/b;->d_()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Lcom/a/b/e/d/b;->b(I)Lcom/a/b/e/d/c;

    move-result-object v1

    iget-object v4, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    invoke-virtual {v4, v0, v1}, Lcom/a/b/a/b/v;->a(ILcom/a/b/e/d/d;)V

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->j()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public a(Lcom/a/b/e/d/c;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/v;->a(Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/p;->a(Lcom/a/b/e/d/c;)V

    return-void
.end method

.method public b(II)Lcom/a/b/a/b/q;
    .registers 7

    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->f()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->c(I)V

    new-instance v0, Lcom/a/b/a/b/q;

    iget-object v1, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    invoke-virtual {v1}, Lcom/a/b/a/b/v;->b()Lcom/a/b/a/b/z;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    invoke-static {p1}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/b/a/b/q;-><init>(Lcom/a/b/a/b/v;Lcom/a/b/a/b/p;Lcom/a/b/g/n;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/b/a/b/q;->a(Lcom/a/b/a/b/q;II)Lcom/a/b/a/b/q;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    invoke-virtual {v0}, Lcom/a/b/a/b/v;->c_()V

    iget-object v0, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    invoke-virtual {v0}, Lcom/a/b/a/b/p;->c_()V

    return-void
.end method

.method public c()Lcom/a/b/a/b/v;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/q;->a:Lcom/a/b/a/b/v;

    return-object v0
.end method

.method public d()Lcom/a/b/a/b/p;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/q;->b:Lcom/a/b/a/b/p;

    return-object v0
.end method

.method public e()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/q;->c:Lcom/a/b/g/n;

    return-object v0
.end method
