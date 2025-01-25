.class public Lorg/c/a/a/c/a/a/a/b/c/b;
.super Lorg/c/a/a/b/d/d/i;


# instance fields
.field protected e:Lorg/c/a/a/c/a/a/a/c/a;


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/c/a;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V
    .registers 6

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/c/a/a/b/d/d/i;-><init>(Lorg/c/a/a/b/d/e/l;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/c/b;->e:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/b;->e:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileForEachStatement{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/b;->a:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/b;->e:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/b;->c:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
