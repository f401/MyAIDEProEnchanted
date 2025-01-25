.class public Lorg/c/a/a/c/a/a/a/b/a/f;
.super Lorg/c/a/a/b/d/a/n;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/k;


# instance fields
.field protected d:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/c/a/a/a/b/a/b;)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/b/d/a/n;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/d;Ljava/util/List;Lorg/c/a/a/b/d/a/i;)V

    if-nez p6, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/f;->d:I

    return-void

    :cond_11
    invoke-virtual {p6}, Lorg/c/a/a/c/a/a/a/b/a/b;->q_()I

    move-result v0

    goto :goto_e
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/f;->h:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/f;->b:Ljava/util/List;

    return-void
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/f;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileEnumDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
