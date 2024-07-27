.class public Lorg/c/a/a/c/a/a/a/b/a/i;
.super Lorg/c/a/a/b/d/a/t;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/c/g;


# instance fields
.field protected f:Lorg/c/a/a/c/a/a/a/c/a;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;Lorg/c/a/a/c/a/a/a/c/a;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, v0}, Lorg/c/a/a/b/d/a/t;-><init>(Lorg/c/a/a/b/d/c/d;Lorg/c/a/a/b/d/e/l;ZLjava/lang/String;)V

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/c/a;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, v0}, Lorg/c/a/a/b/d/a/t;-><init>(Lorg/c/a/a/b/d/e/l;ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ClassFileFormalParameter{"

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->a:Lorg/c/a/a/b/d/c/d;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileFormalParameter{"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->a:Lorg/c/a/a/b/d/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    iget-boolean v2, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->d:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/i;->f:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
