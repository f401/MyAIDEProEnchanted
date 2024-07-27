.class public final Lcom/a/b/c/c/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/w;
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/z;

.field private final b:Lcom/a/b/e/a/d;

.field private final c:Lcom/a/b/c/c/bh;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/z;Lcom/a/b/e/a/d;Lcom/a/b/c/c/t;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationsList == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    iput-object p2, p0, Lcom/a/b/c/c/au;->b:Lcom/a/b/e/a/d;

    invoke-virtual {p2}, Lcom/a/b/e/a/d;->d_()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/a/b/c/c/bh;

    sget-object v1, Lcom/a/b/c/c/ah;->l:Lcom/a/b/c/c/ah;

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/c/bh;-><init>(Lcom/a/b/c/c/ah;Ljava/util/List;)V

    iput-object v0, p0, Lcom/a/b/c/c/au;->c:Lcom/a/b/c/c/bh;

    return-void

    :cond_2
    new-instance v3, Lcom/a/b/c/c/d;

    new-instance v4, Lcom/a/b/c/c/c;

    invoke-virtual {p2, v0}, Lcom/a/b/e/a/d;->a(I)Lcom/a/b/e/a/c;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/a/b/c/c/c;-><init>(Lcom/a/b/e/a/c;Lcom/a/b/c/c/t;)V

    invoke-direct {v3, v4}, Lcom/a/b/c/c/d;-><init>(Lcom/a/b/c/c/c;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/au;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    iget-object v1, p1, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/z;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->d()Lcom/a/b/c/c/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/ap;->a(Lcom/a/b/e/c/f;)Lcom/a/b/c/c/ao;

    iget-object v0, p0, Lcom/a/b/c/c/au;->c:Lcom/a/b/c/c/bh;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 9

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ap;->b(Lcom/a/b/e/c/f;)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/au;->c:Lcom/a/b/c/c/bh;

    invoke-virtual {v1}, Lcom/a/b/c/c/bh;->e()I

    move-result v1

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v4}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      method_idx:      "

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

    :cond_0
    invoke-interface {p2, v0}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->d(I)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/c/au;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/au;->a(Lcom/a/b/c/c/au;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/c/c/au;->c:Lcom/a/b/c/c/bh;

    invoke-virtual {v0}, Lcom/a/b/c/c/bh;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/d;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/a/b/c/c/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/c/c/au;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    check-cast p1, Lcom/a/b/c/c/au;

    iget-object v1, p1, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/au;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0}, Lcom/a/b/e/c/z;->hashCode()I

    move-result v0

    return v0
.end method
