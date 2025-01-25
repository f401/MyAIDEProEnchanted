.class public Lorg/codehaus/groovy/ast/DynamicVariable;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/groovy/ast/Variable;


# instance fields
.field private j6:Ljava/lang/String;


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/DynamicVariable;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
