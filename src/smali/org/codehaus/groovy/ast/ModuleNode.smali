.class public Lorg/codehaus/groovy/ast/ModuleNode;
.super Lorg/codehaus/groovy/ast/ASTNode;

# interfaces
.implements Lgroovyjarjarasm/asm/Opcodes;


# instance fields
.field private VH:Lorg/codehaus/groovy/ast/PackageNode;

.field private Zo:Lorg/codehaus/groovy/ast/CompileUnit;

.field private transient gn:Lorg/codehaus/groovy/control/SourceUnit;


# virtual methods
.method public VH()Lorg/codehaus/groovy/ast/PackageNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ModuleNode;->VH:Lorg/codehaus/groovy/ast/PackageNode;

    return-object v0
.end method

.method public Zo()Lorg/codehaus/groovy/control/SourceUnit;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ModuleNode;->gn:Lorg/codehaus/groovy/control/SourceUnit;

    return-object v0
.end method

.method public gn()Lorg/codehaus/groovy/ast/CompileUnit;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/ModuleNode;->Zo:Lorg/codehaus/groovy/ast/CompileUnit;

    return-object v0
.end method
