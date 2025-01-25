.class public Lorg/c/a/a/b/d/a/j;
.super Lorg/c/a/a/b/d/a/v;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/l;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/b/d/a/i;)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/b/d/a/v;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/b/d/a/i;)V

    iput-object p6, p0, Lorg/c/a/a/b/d/a/j;->a:Lorg/c/a/a/b/d/e/l;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/j;->a:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/j;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
