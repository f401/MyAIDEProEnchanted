.class public final Lcom/a/b/c/c/d;
.super Lcom/a/b/c/c/at;


# instance fields
.field private a:Lcom/a/b/c/c/c;


# direct methods
.method public constructor <init>(Lcom/a/b/c/c/c;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/c/c/d;->a:Lcom/a/b/c/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->x:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->d()Lcom/a/b/c/c/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/d;->a:Lcom/a/b/c/c/c;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aq;->b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/c;

    iput-object v0, p0, Lcom/a/b/c/c/d;->a:Lcom/a/b/c/c/c;

    return-void
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/d;->a:Lcom/a/b/c/c/c;

    invoke-virtual {v0}, Lcom/a/b/c/c/c;->e()I

    move-result v0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  annotations_off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/a/b/g/a;->d(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/d;->a:Lcom/a/b/c/c/c;

    invoke-virtual {v0}, Lcom/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
