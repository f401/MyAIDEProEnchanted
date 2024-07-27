.class public Lorg/c/a/a/b/d/b/i;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected d:Z


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/i;->a:Lorg/c/a/a/b/d/b/n;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/b/d/b/i;->d:Z

    return-void
.end method

.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/i;->a:Lorg/c/a/a/b/d/b/n;

    iput-boolean p4, p0, Lorg/c/a/a/b/d/b/i;->d:Z

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/i;->a:Lorg/c/a/a/b/d/b/n;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/b/d/b/i;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/i;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/i;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/i;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/b/i;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CastExpression{cast ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/i;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/i;->a:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
