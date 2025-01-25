.class public Lorg/c/a/a/c/a/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lorg/c/a/a/d/c;

.field protected c:Lorg/c/a/a/c/a/a/a/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->b:Lorg/c/a/a/d/c;

    if-nez v0, :cond_b

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->b:Lorg/c/a/a/d/c;

    :cond_b
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_a
    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_6

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_6
    return-void
.end method

.method public b()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->b:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public c()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/b;->b:Lorg/c/a/a/d/c;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicBlock.Handler{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicBlock.Handler{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/b;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/b;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method
