.class public Lorg/c/a/a/c/a/a/a/b/a/d;
.super Lorg/c/a/a/b/d/a/k;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/e;


# instance fields
.field protected h:Lorg/c/a/a/c/a/a/a/b/a/b;

.field protected i:Lorg/c/a/a/b/a/a;

.field protected j:Lorg/c/a/a/b/a/d;

.field protected k:Ljava/util/List;

.field protected l:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/b/a/d;Lorg/c/a/a/b/d/c/d;Lorg/c/a/a/b/d/e/f;Ljava/util/List;Lorg/c/a/a/b/d/e/d;I)V
    .registers 18

    invoke-virtual {p3}, Lorg/c/a/a/b/a/d;->a()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {p3}, Lorg/c/a/a/b/a/d;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object v4, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lorg/c/a/a/b/d/a/k;-><init>(Lorg/c/a/a/b/d/c/d;ILorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/a/e;Lorg/c/a/a/b/d/e/d;Ljava/lang/String;Lorg/c/a/a/b/d/d/b;)V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->h:Lorg/c/a/a/c/a/a/a/b/a/b;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->i:Lorg/c/a/a/b/a/a;

    move/from16 v0, p8

    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->l:I

    iput-object p6, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->k:Ljava/util/List;

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->j:Lorg/c/a/a/b/a/d;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->b:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/e;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->d:Lorg/c/a/a/b/d/a/e;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/b;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->g:Lorg/c/a/a/b/d/d/b;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->l:I

    return-void
.end method

.method public j()Lorg/c/a/a/c/a/a/a/b/a/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->h:Lorg/c/a/a/c/a/a/a/b/a/b;

    return-object v0
.end method

.method public k()Lorg/c/a/a/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->i:Lorg/c/a/a/b/a/a;

    return-object v0
.end method

.method public o_()Lorg/c/a/a/b/d/e/l;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->l:I

    return v0
.end method

.method public r_()Lorg/c/a/a/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->j:Lorg/c/a/a/b/a/d;

    return-object v0
.end method

.method public s_()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->k:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileConstructorDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->i:Lorg/c/a/a/b/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/b/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/d;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
