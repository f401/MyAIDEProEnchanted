.class public Lorg/a/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;


# instance fields
.field protected a:Z

.field public b:Lorg/a/a/a/a/d;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field protected e:Ljava/util/BitSet;

.field public f:Z

.field public g:Z

.field public final h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/a/a/a/a/c;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/a/c;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/c;->i:I

    new-instance v0, Lorg/a/a/a/a/f;

    invoke-direct {v0}, Lorg/a/a/a/a/f;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    iput-boolean p1, p0, Lorg/a/a/a/a/c;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Z)V
    .registers 3

    iput-boolean p1, p0, Lorg/a/a/a/a/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    return-void
.end method

.method public a(Lorg/a/a/a/a/b;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/a/a/a/a/c;->a(Lorg/a/a/a/a/b;Lorg/a/a/a/c/d;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/a/a/a/a/b;Lorg/a/a/a/c/d;)Z
    .registers 8

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    sget-object v1, Lorg/a/a/a/a/bd;->a:Lorg/a/a/a/a/bd;

    if-eq v0, v1, :cond_1

    iput-boolean v2, p0, Lorg/a/a/a/a/c;->f:Z

    :cond_1
    invoke-virtual {p1}, Lorg/a/a/a/a/b;->a()I

    move-result v0

    if-lez v0, :cond_2

    iput-boolean v2, p0, Lorg/a/a/a/a/c;->g:Z

    :cond_2
    iget-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    invoke-virtual {v0, p1}, Lorg/a/a/a/a/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/b;

    if-ne v0, p1, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/c;->i:I

    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/a/a/a/a/c;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v3, v0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    iget-object v4, p1, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    invoke-static {v3, v4, v1, p2}, Lorg/a/a/a/a/ax;->a(Lorg/a/a/a/a/ax;Lorg/a/a/a/a/ax;ZLorg/a/a/a/c/d;)Lorg/a/a/a/a/ax;

    move-result-object v1

    iget v3, v0, Lorg/a/a/a/a/b;->d:I

    iget v4, p1, Lorg/a/a/a/a/b;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lorg/a/a/a/a/b;->d:I

    invoke-virtual {p1}, Lorg/a/a/a/a/b;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lorg/a/a/a/a/b;->a(Z)V

    :cond_4
    iput-object v1, v0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lorg/a/a/a/a/b;

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/c;->a(Lorg/a/a/a/a/b;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/b;

    invoke-virtual {p0, v0}, Lorg/a/a/a/a/c;->a(Lorg/a/a/a/a/b;)Z

    goto :goto_0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/a/a/a/a/c;->a:Z

    return v0
.end method

.method public c()[Lorg/a/a/a/a/b;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    invoke-virtual {v0}, Lorg/a/a/a/a/d;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/a/b;

    return-object v0
.end method

.method public clear()V
    .registers 3

    iget-boolean v0, p0, Lorg/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/c;->i:I

    iget-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    invoke-virtual {v0}, Lorg/a/a/a/a/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not implemented for readonly sets."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    invoke-virtual {v0, p1}, Lorg/a/a/a/a/d;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lorg/a/a/a/a/c;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/a/a/a/a/c;

    iget-object v2, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/a/a/a/a/c;->h:Z

    iget-boolean v3, p1, Lorg/a/a/a/a/c;->h:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/a/a/a/a/c;->d:I

    iget v3, p1, Lorg/a/a/a/a/c;->d:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/a/a/a/a/c;->e:Ljava/util/BitSet;

    iget-object v3, p1, Lorg/a/a/a/a/c;->e:Ljava/util/BitSet;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lorg/a/a/a/a/c;->f:Z

    iget-boolean v3, p1, Lorg/a/a/a/a/c;->f:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lorg/a/a/a/a/c;->g:Z

    iget-boolean v3, p1, Lorg/a/a/a/a/c;->g:Z

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/a/a/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/a/a/a/a/c;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a/c;->i:I

    :cond_0
    iget v0, p0, Lorg/a/a/a/a/c;->i:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/a/a/c;->c()[Lorg/a/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/c;->b:Lorg/a/a/a/a/d;

    invoke-virtual {v0, p1}, Lorg/a/a/a/a/d;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/a/a/a/a/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/a/a/a/a/c;->f:Z

    if-eqz v1, :cond_0

    const-string v1, ",hasSemanticContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/a/a/a/a/c;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lorg/a/a/a/a/c;->d:I

    if-eqz v1, :cond_1

    const-string v1, ",uniqueAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/a/a/a/a/c;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/a/a/a/a/c;->e:Ljava/util/BitSet;

    if-eqz v1, :cond_2

    const-string v1, ",conflictingAlts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/a/a/c;->e:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lorg/a/a/a/a/c;->g:Z

    if-eqz v1, :cond_3

    const-string v1, ",dipsIntoOuterContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
