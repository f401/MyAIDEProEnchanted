.class public final Lcom/a/b/c/c/ba;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/e/c/ad;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ad;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/a/b/c/c/ba;->a(Lcom/a/b/e/c/ad;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    iput-object p1, p0, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    return-void
.end method

.method private static a(Lcom/a/b/e/c/ad;)I
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/e/c/ad;->m()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/a/b/e/c/ad;->l()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected a(Lcom/a/b/c/c/at;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/ba;

    iget-object v0, p0, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->p:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 2

    return-void
.end method

.method public a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->k()Lcom/a/b/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->m()I

    move-result v1

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v1}, Lcom/a/a/e;->a(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "utf16_size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/g/e;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v3}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_3b
    invoke-interface {p2, v1}, Lcom/a/b/g/a;->e(I)I

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a(Lcom/a/b/g/e;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/ba;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
