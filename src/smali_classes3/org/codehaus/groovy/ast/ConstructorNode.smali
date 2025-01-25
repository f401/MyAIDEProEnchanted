.class public Lorg/codehaus/groovy/ast/ConstructorNode;
.super Lorg/codehaus/groovy/ast/MethodNode;


# direct methods
.method public constructor <init>(I[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V
    .registers 12

    const-string v1, "<init>"

    sget-object v3, Lorg/codehaus/groovy/ast/ClassHelper;->v5:Lorg/codehaus/groovy/ast/ClassNode;

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/groovy/ast/MethodNode;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V

    new-instance p1, Lorg/codehaus/groovy/ast/VariableScope;

    invoke-direct {p1}, Lorg/codehaus/groovy/ast/VariableScope;-><init>()V

    const/4 p3, 0x0

    :goto_12
    array-length p4, p2

    if-ge p3, p4, :cond_1d

    aget-object p4, p2, p3

    invoke-virtual {p1, p4}, Lorg/codehaus/groovy/ast/VariableScope;->j6(Lorg/codehaus/groovy/ast/Variable;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    :cond_1d
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/ast/MethodNode;->j6(Lorg/codehaus/groovy/ast/VariableScope;)V

    return-void
.end method
