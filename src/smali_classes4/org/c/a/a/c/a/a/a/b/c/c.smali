.class public Lorg/c/a/a/c/a/a/a/b/c/c;
.super Lorg/c/a/a/b/d/d/j;


# instance fields
.field protected f:I

.field protected g:I


# direct methods
.method public constructor <init>(IILorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V
    .registers 7

    invoke-direct {p0, p3, p4, p5, p6}, Lorg/c/a/a/b/d/d/j;-><init>(Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/f;Lorg/c/a/a/b/d/d/b;)V

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->f:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->g:I

    return-void
.end method


# virtual methods
.method public j()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileForStatement{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->a:Lorg/c/a/a/b/d/a/w;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->a:Lorg/c/a/a/b/d/a/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_10
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->c:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->d:Lorg/c/a/a/b/d/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/c;->b:Lorg/c/a/a/b/d/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method
