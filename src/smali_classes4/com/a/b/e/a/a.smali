.class public final Lcom/a/b/e/a/a;
.super Lcom/a/b/g/t;

# interfaces
.implements Lcom/a/b/g/w;
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:Lcom/a/b/e/a/b;

.field private final c:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/a/b;)V
    .registers 5

    invoke-direct {p0}, Lcom/a/b/g/t;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visibility == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    iput-object p2, p0, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/a/a;)I
    .registers 6

    iget-object v0, p0, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    iget-object v1, p1, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ae;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    iget-object v1, p1, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, p1, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    goto :goto_a

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/e;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/a/e;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/e;->a(Lcom/a/b/e/a/e;)I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_a

    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, -0x1

    goto :goto_a

    :cond_58
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lcom/a/b/e/a/e;)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/a/a;->l()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pair == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/a/b/e/a/e;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public b(Lcom/a/b/e/a/e;)V
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/e/a/a;->l()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pair == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/a/b/e/a/e;->a()Lcom/a/b/e/c/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name already added: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    iget-object v1, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/a/a;

    invoke-virtual {p0, p1}, Lcom/a/b/e/a/a;->a(Lcom/a/b/e/a/a;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    invoke-virtual {v0}, Lcom/a/b/e/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-annotation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/e;

    if-eqz v1, :cond_62

    const/4 v1, 0x0

    :goto_46
    invoke-virtual {v0}, Lcom/a/b/e/a/e;->a()Lcom/a/b/e/c/ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->b()Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_62
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46
.end method

.method public e()Lcom/a/b/e/a/b;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/e/a/a;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/a/b/e/a/a;

    iget-object v1, p0, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    iget-object v2, p1, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    iget-object v2, p1, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public f()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/a/a;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/a/a;->b:Lcom/a/b/e/a/b;

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/a/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
