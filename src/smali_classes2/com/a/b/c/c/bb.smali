.class public final Lcom/a/b/c/c/bb;
.super Lcom/a/b/c/c/af;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/ad;

.field private b:Lcom/a/b/c/c/ba;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ad;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/c/c/af;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/c/bb;->b:Lcom/a/b/c/c/ba;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->b:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/c/bb;->b:Lcom/a/b/c/c/ba;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->c()Lcom/a/b/c/c/aq;

    move-result-object v0

    new-instance v1, Lcom/a/b/c/c/ba;

    iget-object v2, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    invoke-direct {v1, v2}, Lcom/a/b/c/c/ba;-><init>(Lcom/a/b/e/c/ad;)V

    iput-object v1, p0, Lcom/a/b/c/c/bb;->b:Lcom/a/b/c/c/ba;

    iget-object v1, p0, Lcom/a/b/c/c/bb;->b:Lcom/a/b/c/c/ba;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/c/c/bb;->b:Lcom/a/b/c/c/ba;

    invoke-virtual {v0}, Lcom/a/b/c/c/ba;->e()I

    move-result v0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/bb;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/a/b/e/c/ad;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  string_data_off: "

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

.method public c()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/bb;

    iget-object v0, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public e_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/c/c/bb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/a/b/c/c/bb;

    iget-object v0, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/bb;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v0

    return v0
.end method
