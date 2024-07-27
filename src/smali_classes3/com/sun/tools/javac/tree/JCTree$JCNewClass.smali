.class public Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/NewClassTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCNewClass"
.end annotation


# instance fields
.field public args:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public constructor:Lcom/sun/tools/javac/code/Symbol;

.field public constructorType:Lcom/sun/tools/javac/code/Type;

.field public def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

.field public encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public typeargs:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public varargsElement:Lcom/sun/tools/javac/code/Type;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ")V"
        }
    .end annotation

    .line 1986
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 1987
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1988
    if-nez p2, :cond_0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p2

    .line 1989
    :cond_0
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    .line 1990
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1991
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    .line 1992
    iput-object p5, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 1993
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

    .line 2026
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1997
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V

    .line 1998
    return-void
.end method

.method public getArguments()Lcom/sun/tools/javac/util/List;
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

    .line 2017
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getArguments()Ljava/util/List;
    .registers 2

    .line 1972
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->getArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassBody()Lcom/sun/source/tree/ClassTree;
    .registers 2

    .line 1972
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->getClassBody()Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    return-object v0
.end method

.method public getClassBody()Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 2

    .line 2021
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    return-object v0
.end method

.method public bridge synthetic getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1972
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->getEnclosingExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2005
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1972
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->getIdentifier()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2013
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2001
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2031
    const/16 v0, 0x1b

    return v0
.end method

.method public getTypeArguments()Lcom/sun/tools/javac/util/List;
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

    .line 2009
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 1972
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
