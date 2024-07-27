.class public Lorg/c/a/a/b/d/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/e;


# instance fields
.field protected a:Lorg/c/a/a/b/d/c/d;

.field protected b:Z

.field protected c:Lorg/c/a/a/b/d/e/l;

.field protected d:Z

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;Lorg/c/a/a/b/d/e/l;ZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/t;->a:Lorg/c/a/a/b/d/c/d;

    iput-object p2, p0, Lorg/c/a/a/b/d/a/t;->c:Lorg/c/a/a/b/d/e/l;

    iput-boolean p3, p0, Lorg/c/a/a/b/d/a/t;->d:Z

    iput-object p4, p0, Lorg/c/a/a/b/d/a/t;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/l;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/t;->c:Lorg/c/a/a/b/d/e/l;

    iput-boolean p2, p0, Lorg/c/a/a/b/d/a/t;->d:Z

    iput-object p3, p0, Lorg/c/a/a/b/d/a/t;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/a/t;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/t;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/c/a/a/b/d/a/t;->b:Z

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/t;
    .registers 1

    return-object p0
.end method

.method public d()Lorg/c/a/a/b/d/c/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/t;->a:Lorg/c/a/a/b/d/c/d;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/a/t;->b:Z

    return v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/t;->c:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/a/t;->d:Z

    return v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/a/t;->b()Lorg/c/a/a/b/d/a/t;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 2

    invoke-static {p0}, Lorg/c/a/a/d/b;->b(Lorg/c/a/a/d/a;)Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FormalParameter{"

    iget-object v1, p0, Lorg/c/a/a/b/d/a/t;->a:Lorg/c/a/a/b/d/c/d;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormalParameter{"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/t;->a:Lorg/c/a/a/b/d/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lorg/c/a/a/b/d/a/t;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/c/a/a/b/d/a/t;->c:Lorg/c/a/a/b/d/e/l;

    iget-object v2, p0, Lorg/c/a/a/b/d/a/t;->c:Lorg/c/a/a/b/d/e/l;

    invoke-interface {v2}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lorg/c/a/a/b/d/a/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/c/a/a/b/d/a/t;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
