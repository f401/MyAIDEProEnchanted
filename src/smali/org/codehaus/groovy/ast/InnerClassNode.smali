.class public Lorg/codehaus/groovy/ast/InnerClassNode;
.super Lorg/codehaus/groovy/ast/ClassNode;


# instance fields
.field private cn:Lorg/codehaus/groovy/ast/ClassNode;


# virtual methods
.method public KD()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/InnerClassNode;->cn:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/groovy/ast/ClassNode;->j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;

    move-result-object v0

    return-object v0
.end method

.method public j6(Lorg/codehaus/groovy/ast/ConstructorNode;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/ConstructorNode;)V

    return-void
.end method
