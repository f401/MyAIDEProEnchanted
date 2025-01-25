.class public Lorg/c/a/a/c/a/a/a/b/a/c;
.super Lorg/c/a/a/b/d/a/j;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/k;


# instance fields
.field protected e:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/c/a/a/a/b/a/b;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lorg/c/a/a/b/d/a/j;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/b/d/a/i;)V

    if-nez p8, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/c;->e:I

    return-void

    :cond_9
    invoke-virtual {p8}, Lorg/c/a/a/c/a/a/a/b/a/b;->q_()I

    move-result v0

    goto :goto_6
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/c;->h:I

    return-void
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/c;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileClassDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
