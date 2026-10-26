.class public Lorg/codehaus/groovy/ast/InnerClassNode;
.super Lorg/codehaus/groovy/ast/ClassNode;


# instance fields
.field private cn:Lorg/codehaus/groovy/ast/ClassNode;


# virtual methods
.method public KD()Lorg/codehaus/groovy/ast/ClassNode;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/groovy/ast/InnerClassNode;->cn:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/groovy/ast/ClassNode;->j6(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)Lorg/codehaus/groovy/ast/ConstructorNode;

    move-result-object v0

    return-object v0
.end method

.method public j6(Lorg/codehaus/groovy/ast/ConstructorNode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->j6(Lorg/codehaus/groovy/ast/ConstructorNode;)V

    return-void
.end method
