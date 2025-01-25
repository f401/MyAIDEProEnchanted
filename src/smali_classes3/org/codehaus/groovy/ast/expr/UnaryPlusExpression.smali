.class public Lorg/codehaus/groovy/ast/expr/UnaryPlusExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;


# instance fields
.field private final tp:Lorg/codehaus/groovy/ast/expr/Expression;


# virtual methods
.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/UnaryPlusExpression;->tp:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/expr/Expression;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method
