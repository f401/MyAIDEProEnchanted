.class public Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/VariableTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCVariableDecl"
.end annotation


# instance fields
.field public init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

.field public name:Lcom/sun/tools/javac/util/Name;

.field public sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

.field public vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 6

    .line 1046
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1047
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 1048
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 1049
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1050
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1051
    iput-object p5, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1052
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1081
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1056
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 1057
    return-void
.end method

.method public bridge synthetic getInitializer()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1035
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1060
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getModifiers()Lcom/sun/source/tree/ModifiersTree;
    .registers 2

    .line 1035
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 2

    .line 1064
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    return-object v0
.end method

.method public getName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 1068
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 1035
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1086
    const/4 v0, 0x5

    return v0
.end method

.method public bridge synthetic getType()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 1035
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 1072
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
