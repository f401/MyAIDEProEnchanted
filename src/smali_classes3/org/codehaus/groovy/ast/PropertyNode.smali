.class public Lorg/codehaus/groovy/ast/PropertyNode;
.super Lorg/codehaus/groovy/ast/AnnotatedNode;

# interfaces
.implements Lgroovyjarjarasm/asm/Opcodes;
.implements Lorg/codehaus/groovy/ast/Variable;


# instance fields
.field private u7:Lorg/codehaus/groovy/ast/FieldNode;


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/PropertyNode;->u7:Lorg/codehaus/groovy/ast/FieldNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/FieldNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/PropertyNode;->u7:Lorg/codehaus/groovy/ast/FieldNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/FieldNode;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/PropertyNode;->u7:Lorg/codehaus/groovy/ast/FieldNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/FieldNode;->j6()Z

    move-result v0

    return v0
.end method
