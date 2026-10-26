.class public Lorg/c/a/a/b/d/d/m;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lorg/c/a/a/b/d/d/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/b/d/d/r;)V
    .locals 0

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/m;->b:Lorg/c/a/a/b/d/d/r;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/m;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/c/a/a/b/d/d/r;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/m;->b:Lorg/c/a/a/b/d/d/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LabelStatement{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/d/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/d/m;->b:Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
