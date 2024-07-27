.class public final Lcom/a/b/c/c/g;
.super Lcom/a/b/c/c/af;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lcom/a/b/e/c/j;

.field b:Lcom/a/b/c/c/i;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/j;)V
    .registers 3

    invoke-direct {p0}, Lcom/a/b/c/c/af;-><init>()V

    iput-object p1, p0, Lcom/a/b/c/c/g;->a:Lcom/a/b/e/c/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/c/g;->b:Lcom/a/b/c/c/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->h:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/c/g;->a:Lcom/a/b/e/c/j;

    invoke-virtual {v0}, Lcom/a/b/e/c/j;->c()Lcom/a/b/e/c/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->o()Lcom/a/b/c/c/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/b/c/c/h;->a(Lcom/a/b/e/c/i;)Lcom/a/b/c/c/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->p()Lcom/a/b/c/c/aq;

    move-result-object v3

    new-instance v0, Lcom/a/b/c/c/i;

    invoke-direct {v0, v1}, Lcom/a/b/c/c/i;-><init>(Lcom/a/b/e/c/i;)V

    invoke-virtual {v3, v0}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    invoke-virtual {v2, v1, v0}, Lcom/a/b/c/c/h;->a(Lcom/a/b/e/c/i;Lcom/a/b/c/c/i;)V

    :cond_0
    iput-object v0, p0, Lcom/a/b/c/c/g;->b:Lcom/a/b/c/c/i;

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/g;->b:Lcom/a/b/c/c/i;

    invoke-virtual {v0}, Lcom/a/b/c/c/i;->e()I

    move-result v0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/g;->a:Lcom/a/b/e/c/j;

    invoke-virtual {v3}, Lcom/a/b/e/c/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call_site_off: "

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

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/g;

    iget-object v0, p0, Lcom/a/b/c/c/g;->a:Lcom/a/b/e/c/j;

    iget-object v1, p1, Lcom/a/b/c/c/g;->a:Lcom/a/b/e/c/j;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/j;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public e_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
