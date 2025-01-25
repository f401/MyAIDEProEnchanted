.class public Lorg/c/a/a/c/a/a/a/b/a/l;
.super Lorg/c/a/a/b/d/a/ac;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/e;


# instance fields
.field protected k:Lorg/c/a/a/c/a/a/a/b/a/b;

.field protected l:Lorg/c/a/a/b/a/a;

.field protected m:Lorg/c/a/a/b/a/d;

.field protected n:Ljava/util/List;

.field protected o:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/b/a/d;Lorg/c/a/a/b/d/c/d;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Ljava/util/List;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/b/d/c/g;I)V
    .registers 24

    invoke-virtual {p3}, Lorg/c/a/a/b/a/d;->a()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {p3}, Lorg/c/a/a/b/a/d;->c()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/c/a/a/b/d/a/ac;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/e;Lorg/c/a/a/b/d/e/d;Ljava/lang/String;Lorg/c/a/a/b/d/d/b;Lorg/c/a/a/b/d/c/g;)V

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->k:Lorg/c/a/a/c/a/a/a/b/a/b;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->l:Lorg/c/a/a/b/a/a;

    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->n:Ljava/util/List;

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->m:Lorg/c/a/a/b/a/d;

    move/from16 v0, p11

    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->o:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->b:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/e;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->f:Lorg/c/a/a/b/d/a/e;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/b;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->i:Lorg/c/a/a/b/d/d/b;

    return-void
.end method

.method public j()Lorg/c/a/a/c/a/a/a/b/a/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->k:Lorg/c/a/a/c/a/a/a/b/a/b;

    return-object v0
.end method

.method public k()Lorg/c/a/a/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->l:Lorg/c/a/a/b/a/a;

    return-object v0
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->o:I

    return v0
.end method

.method public r_()Lorg/c/a/a/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->m:Lorg/c/a/a/b/a/d;

    return-object v0
.end method

.method public s_()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->n:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileMethodDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/l;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
