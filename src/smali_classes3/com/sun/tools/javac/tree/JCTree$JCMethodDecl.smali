.class public Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/MethodTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCMethodDecl"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

.field public defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

.field public name:Lcom/sun/tools/javac/util/Name;

.field public params:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation
.end field

.field public restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field public thrown:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public typarams:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            ")V"
        }
    .end annotation

    .line 962
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    .line 963
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 964
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 965
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 966
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    .line 967
    iput-object p5, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 968
    iput-object p6, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    .line 969
    iput-object p7, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 970
    iput-object p8, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 971
    iput-object p9, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 972
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

    .line 1017
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 976
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    .line 977
    return-void
.end method

.method public bridge synthetic getBody()Lcom/sun/source/tree/BlockTree;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getBody()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 2

    .line 1008
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getDefaultValue()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 1012
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 980
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getModifiers()Lcom/sun/source/tree/ModifiersTree;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 2

    .line 984
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    return-object v0
.end method

.method public getName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 988
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getParameters()Ljava/util/List;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReturnType()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getReturnType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 992
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1022
    const/4 v0, 0x4

    return v0
.end method

.method public getThrows()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getThrows()Ljava/util/List;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getThrows()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeParameters()Ljava/util/List;
    .registers 2

    .line 943
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
