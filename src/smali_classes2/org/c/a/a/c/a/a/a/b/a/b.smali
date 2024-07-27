.class public Lorg/c/a/a/c/a/a/a/b/a/b;
.super Lorg/c/a/a/b/d/a/i;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/k;


# instance fields
.field protected c:Ljava/util/List;

.field protected d:Ljava/util/List;

.field protected e:Ljava/util/List;

.field protected f:Ljava/util/Map;

.field protected g:I

.field protected h:Lorg/c/a/a/b/d/e/i;

.field protected i:Lorg/c/a/a/d/c;

.field protected j:Lorg/c/a/a/c/a/a/a/b/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/b/a/b;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/c/a/a/b/d/a/i;-><init>(Ljava/lang/String;Lorg/c/a/a/b/d/a/g;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->f:Ljava/util/Map;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->j:Lorg/c/a/a/c/a/a/a/b/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/c/a/a/c/a/a/a/b/a/k;
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->j:Lorg/c/a/a/c/a/a/a/b/a/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->j:Lorg/c/a/a/c/a/a/a/b/a/b;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->a(Ljava/lang/String;)Lorg/c/a/a/c/a/a/a/b/a/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/g;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->b:Lorg/c/a/a/b/d/a/g;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/i;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->h:Lorg/c/a/a/b/d/e/i;

    return-void
.end method

.method public a(Lorg/c/a/a/d/c;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->i:Lorg/c/a/a/d/c;

    return-void
.end method

.method public b(Ljava/lang/String;)Lorg/c/a/a/c/a/a/a/b/a/k;
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .registers 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->d:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .registers 6

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->d(Ljava/util/List;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    move-object v1, v0

    check-cast v1, Lorg/c/a/a/b/d/a/ai;

    iget-object v3, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/a/ai;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected d(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->g:I

    if-nez v1, :cond_3

    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->g:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->g:I

    if-le v1, v0, :cond_1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->g:I

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/b/a/b;->l()Lorg/c/a/a/b/d/a/z;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/c/a/a/b/d/e/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->h:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public j()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->i:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public j_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lorg/c/a/a/c/a/a/a/b/a/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->j:Lorg/c/a/a/c/a/a/a/b/a/b;

    return-object v0
.end method

.method public l()Lorg/c/a/a/b/d/a/z;
    .registers 1

    return-object p0
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 2

    invoke-static {p0}, Lorg/c/a/a/d/b;->b(Lorg/c/a/a/d/a;)Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->g:I

    return v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileBodyDeclaration{firstLineNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
