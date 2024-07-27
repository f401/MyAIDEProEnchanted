.class public Lorg/codehaus/groovy/ast/expr/MethodPointerExpression;
.super Lorg/codehaus/groovy/ast/expr/Expression;


# virtual methods
.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->Zo:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->J8()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method
