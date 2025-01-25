.class public final Lcom/a/b/c/c/v;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/e/c/d;

.field private b:[B


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/d;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput-object p1, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/c/v;->b:[B

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/b/c/c/at;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/v;

    iget-object v0, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    iget-object v1, p1, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/d;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->s:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 7

    new-instance v0, Lcom/a/b/g/h;

    invoke-direct {v0}, Lcom/a/b/g/h;-><init>()V

    new-instance v1, Lcom/a/b/c/c/bi;

    invoke-virtual {p1}, Lcom/a/b/c/c/ax;->f()Lcom/a/b/c/c/t;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/b/c/c/bi;-><init>(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    iget-object v2, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/c/d;Z)V

    invoke-virtual {v0}, Lcom/a/b/g/h;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/v;->b:[B

    iget-object v0, p0, Lcom/a/b/c/c/v;->b:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/v;->a(I)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    invoke-static {p1, v0}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/c/c/t;Lcom/a/b/e/c/a;)V

    return-void
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 6

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/v;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/a/b/c/c/bi;

    invoke-direct {v0, p1, p2}, Lcom/a/b/c/c/bi;-><init>(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    iget-object v1, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/c/d;Z)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/a/b/c/c/v;->b:[B

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a([B)V

    goto :goto_2c
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    invoke-virtual {v0}, Lcom/a/b/e/c/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/v;->a:Lcom/a/b/e/c/d;

    invoke-virtual {v0}, Lcom/a/b/e/c/d;->hashCode()I

    move-result v0

    return v0
.end method
