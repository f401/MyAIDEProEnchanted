.class public Lorg/c/a/a/b/d/d/j;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/a/w;

.field protected b:Lorg/c/a/a/b/d/b/f;

.field protected c:Lorg/c/a/a/b/d/b/n;

.field protected d:Lorg/c/a/a/b/d/b/f;

.field protected e:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V
    .registers 5

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/j;->b:Lorg/c/a/a/b/d/b/f;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/j;->c:Lorg/c/a/a/b/d/b/n;

    iput-object p3, p0, Lorg/c/a/a/b/d/d/j;->d:Lorg/c/a/a/b/d/b/f;

    iput-object p4, p0, Lorg/c/a/a/b/d/d/j;->e:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/w;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/j;->a:Lorg/c/a/a/b/d/a/w;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/f;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/j;->b:Lorg/c/a/a/b/d/b/f;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/j;->c:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/j;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/w;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/j;->a:Lorg/c/a/a/b/d/a/w;

    return-object v0
.end method

.method public b(Lorg/c/a/a/b/d/b/f;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/j;->d:Lorg/c/a/a/b/d/b/f;

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/b/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/j;->b:Lorg/c/a/a/b/d/b/f;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/j;->c:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/b/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/j;->d:Lorg/c/a/a/b/d/b/f;

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/j;->e:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForStatement{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/d/j;->a:Lorg/c/a/a/b/d/a/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/d/j;->b:Lorg/c/a/a/b/d/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/d/j;->c:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/d/j;->d:Lorg/c/a/a/b/d/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
