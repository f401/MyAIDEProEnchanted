.class public Lorg/c/a/a/b/d/d/aa;
.super Lorg/c/a/a/b/d/d/w;


# instance fields
.field protected b:Lorg/c/a/a/b/d/d/z;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/d/z;Lorg/c/a/a/b/d/d/b;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/c/a/a/b/d/d/w;-><init>(Lorg/c/a/a/b/d/d/b;)V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/aa;->b:Lorg/c/a/a/b/d/d/z;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/aa;)V

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/d/z;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/aa;->b:Lorg/c/a/a/b/d/d/z;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LabelBlock{label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/d/aa;->b:Lorg/c/a/a/b/d/d/z;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
