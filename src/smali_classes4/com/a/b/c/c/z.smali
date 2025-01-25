.class public final Lcom/a/b/c/c/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/w;
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/n;

.field private b:Lcom/a/b/c/c/c;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/n;Lcom/a/b/c/c/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    iput-object p2, p0, Lcom/a/b/c/c/z;->b:Lcom/a/b/c/c/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/z;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    iget-object v1, p1, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/n;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->d()Lcom/a/b/c/c/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/e/c/n;)Lcom/a/b/c/c/aa;

    iget-object v0, p0, Lcom/a/b/c/c/z;->b:Lcom/a/b/c/c/c;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/aq;->b(Lcom/a/b/c/c/at;)Lcom/a/b/c/c/at;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/c;

    iput-object v0, p0, Lcom/a/b/c/c/z;->b:Lcom/a/b/c/c/c;

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 9

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ab;->b(Lcom/a/b/e/c/n;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/z;->b:Lcom/a/b/c/c/c;

    invoke-virtual {v1}, Lcom/a/b/c/c/c;->e()I

    move-result v1

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v4}, Lcom/a/b/e/c/n;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      field_idx:       "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      annotations_off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_5c
    invoke-interface {p2, v0}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->d(I)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/c/z;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/z;->a(Lcom/a/b/c/c/z;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v1}, Lcom/a/b/e/c/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/z;->b:Lcom/a/b/c/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/c/c/z;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    check-cast p1, Lcom/a/b/c/c/z;

    iget-object v1, p1, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/z;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->hashCode()I

    move-result v0

    return v0
.end method
