.class public Lcom/a/b/c/c/s;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/c/b/j;

.field private b:[B

.field private final c:Z

.field private final d:Lcom/a/b/e/c/z;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/j;ZLcom/a/b/e/c/z;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/c/c/s;->a:Lcom/a/b/c/b/j;

    iput-boolean p2, p0, Lcom/a/b/c/c/s;->c:Z

    iput-object p3, p0, Lcom/a/b/c/c/s;->d:Lcom/a/b/e/c/z;

    return-void
.end method

.method private a(Lcom/a/b/c/c/t;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/a/b/c/c/s;->b(Lcom/a/b/c/c/t;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/a/b/c/c/t;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B
    .registers 14

    iget-object v0, p0, Lcom/a/b/c/c/s;->a:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->h()Lcom/a/b/c/b/ac;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/c/c/s;->a:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->i()Lcom/a/b/c/b/s;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/c/c/s;->a:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v3

    new-instance v0, Lcom/a/b/c/c/p;

    invoke-virtual {v3}, Lcom/a/b/c/b/m;->e()I

    move-result v4

    invoke-virtual {v3}, Lcom/a/b/c/b/m;->f()I

    move-result v5

    iget-boolean v6, p0, Lcom/a/b/c/c/s;->c:Z

    iget-object v7, p0, Lcom/a/b/c/c/s;->d:Lcom/a/b/e/c/z;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/a/b/c/c/p;-><init>(Lcom/a/b/c/b/ac;Lcom/a/b/c/b/s;Lcom/a/b/c/c/t;IIZLcom/a/b/e/c/z;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lcom/a/b/c/c/p;->a()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/a/b/c/c/p;->a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->q:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Lcom/a/b/c/c/ax;->f()Lcom/a/b/c/c/t;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/c/s;->a(Lcom/a/b/c/c/t;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/s;->b:[B

    iget-object v0, p0, Lcom/a/b/c/c/s;->b:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/s;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while placing debug info for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/c/c/s;->d:Lcom/a/b/e/c/z;

    invoke-virtual {v2}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v0

    throw v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/c/s;->a(Lcom/a/b/c/c/t;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B

    return-void
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 9

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a(Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/c/c/s;->a(Lcom/a/b/c/c/t;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/c/s;->b:[B

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a([B)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
