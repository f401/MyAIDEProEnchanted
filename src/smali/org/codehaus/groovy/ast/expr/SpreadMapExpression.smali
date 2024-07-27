.class public Lorg/codehaus/groovy/ast/expr/SpreadMapExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;


# instance fields
.field private tp:Lorg/codehaus/groovy/ast/expr/Expression;


# virtual methods
.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/expr/SpreadMapExpression;->tp:Lorg/codehaus/groovy/ast/expr/Expression;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/expr/Expression;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method
