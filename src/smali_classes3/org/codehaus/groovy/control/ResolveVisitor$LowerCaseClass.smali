.class Lorg/codehaus/groovy/control/ResolveVisitor$LowerCaseClass;
.super Lorg/codehaus/groovy/ast/ClassNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/control/ResolveVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowerCaseClass"
.end annotation


# instance fields
.field cn:Ljava/lang/String;


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    if-eq v0, p0, :cond_b

    invoke-super {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/codehaus/groovy/control/ResolveVisitor$LowerCaseClass;->cn:Ljava/lang/String;

    return-object v0
.end method
