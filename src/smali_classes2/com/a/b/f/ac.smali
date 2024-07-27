.class public final Lcom/a/b/f/ac;
.super Lcom/a/b/f/an;


# instance fields
.field private final a:I

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/a/b/e/b/x;


# direct methods
.method public constructor <init>(ILcom/a/b/f/aj;)V
    .registers 4

    sget-object v0, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-static {p1, v0}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/f/an;-><init>(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    iput p1, p0, Lcom/a/b/f/ac;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/an;-><init>(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ac;->a:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget v0, v0, Lcom/a/b/f/ad;->b:I

    return v0
.end method

.method public a()Lcom/a/b/f/ac;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v0, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": phi"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/f/ac;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    invoke-virtual {v4, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[b="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget v0, v0, Lcom/a/b/f/ad;->c:I

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(ILcom/a/b/f/ap;)Ljava/util/List;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget-object v3, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p2}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v3

    iget v0, v0, Lcom/a/b/f/ad;->b:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/a/b/e/b/u;)V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget-object v3, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/a/b/e/b/u;Lcom/a/b/f/aj;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/b/f/ad;

    invoke-virtual {p2}, Lcom/a/b/f/aj;->e()I

    move-result v2

    invoke-virtual {p2}, Lcom/a/b/f/aj;->f()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/a/b/f/ad;-><init>(Lcom/a/b/e/b/u;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    return-void
.end method

.method public a(Lcom/a/b/e/d/d;Lcom/a/b/e/b/o;)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/f/ac;->b(Lcom/a/b/e/b/u;)V

    return-void
.end method

.method public final a(Lcom/a/b/f/ag;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget-object v2, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {p1, v2}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v3

    iput-object v3, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    iget-object v3, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/a/b/f/ac;->p()Lcom/a/b/f/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/f/aj;->o()Lcom/a/b/f/ap;

    move-result-object v3

    iget-object v0, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v3, p0, v2, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    goto :goto_0
.end method

.method public a(Lcom/a/b/f/ao;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/a/b/f/ao;->a(Lcom/a/b/f/ac;)V

    return-void
.end method

.method public a(Lcom/a/b/f/ap;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget-object v2, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    iget-object v3, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v2

    iput-object v2, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    goto :goto_0
.end method

.method public b()Lcom/a/b/e/b/x;
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v2}, Lcom/a/b/e/b/x;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    iget-object v0, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/f/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ad;

    iget-object v3, p0, Lcom/a/b/f/ac;->c:Lcom/a/b/e/b/x;

    iget-object v0, v0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v3, v1, v0}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public c()Lcom/a/b/e/b/j;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/b/f/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/b/e/b/aa;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/a/b/e/b/j;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/ac;->a:I

    return v0
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .registers 2

    invoke-static {}, Lcom/a/b/f/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/f/ac;->g()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic n()Lcom/a/b/f/an;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/f/ac;->a()Lcom/a/b/f/ac;

    move-result-object v0

    return-object v0
.end method
