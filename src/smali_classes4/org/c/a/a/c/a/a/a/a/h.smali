.class public Lorg/c/a/a/c/a/a/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/a/a/a;

.field protected b:Ljava/util/HashSet;

.field protected c:Lorg/c/a/a/c/a/a/a/a/a;


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public b()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public c()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_35

    check-cast p1, Lorg/c/a/a/c/a/a/a/a/h;

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v3, p1, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v2, v3}, Lorg/c/a/a/c/a/a/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    iget-object v3, p1, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v3, p1, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v2, v3}, Lorg/c/a/a/c/a/a/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p1, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->hashCode()I

    move-result v1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->hashCode()I

    move-result v2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->hashCode()I

    move-result v0

    :goto_16
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loop{start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/h;->a:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", members=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/h;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_72

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "], end="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    if-nez v0, :cond_94

    const-string v0, ""

    :goto_63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_94
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/h;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_63
.end method
