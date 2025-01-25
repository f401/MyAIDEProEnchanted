.class public final Lcom/a/b/c/c/w;
.super Lcom/a/b/c/c/x;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/n;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/n;I)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/a/b/c/c/x;-><init>(I)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;II)I
    .registers 13

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ab;->b(Lcom/a/b/e/c/n;)I

    move-result v0

    sub-int v1, v0, p3

    invoke-virtual {p0}, Lcom/a/b/c/c/w;->b()I

    move-result v2

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v3, "  [%x] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v6}, Lcom/a/b/e/c/n;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/a/a/e;->a(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    field_idx:    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/a/a/e;->a(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    access_flags: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/e/b/a;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_66
    invoke-interface {p2, v1}, Lcom/a/b/g/a;->e(I)I

    invoke-interface {p2, v2}, Lcom/a/b/g/a;->e(I)I

    return v0
.end method

.method public a(Lcom/a/b/c/c/w;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    iget-object v1, p1, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/n;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/e/c/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->l()Lcom/a/b/c/c/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/e/c/n;)Lcom/a/b/c/c/aa;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/c/w;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/w;->a(Lcom/a/b/c/c/w;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/c/c/w;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/a/b/c/c/w;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/w;->a(Lcom/a/b/c/c/w;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/w;->b()I

    move-result v1

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/w;->a:Lcom/a/b/e/c/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
