.class Lcom/sun/tools/javac/comp/Attr$IdentAttributer;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "Attr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdentAttributer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        "Lcom/sun/tools/javac/comp/Env",
        "<",
        "Lcom/sun/tools/javac/comp/AttrContext;",
        ">;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Attr;


# direct methods
.method private constructor <init>(Lcom/sun/tools/javac/comp/Attr;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/comp/Attr;Lcom/sun/tools/javac/comp/Attr$1;)V
    .registers 3

    .line 302
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;-><init>(Lcom/sun/tools/javac/comp/Attr;)V

    return-void
.end method


# virtual methods
.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Symbol;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IdentifierTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, v0, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-interface {p1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x3

    invoke-virtual {v1, p2, v0, v2}, Lcom/sun/tools/javac/comp/Resolve;->findIdent(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 302
    check-cast p2, Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Symbol;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MemberSelectTree;",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 306
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    .line 314
    :goto_0
    return-object v0

    .line 308
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/util/Name;

    .line 309
    iget v2, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 310
    iget-object v3, p2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object v2, v3, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 311
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const/4 v3, 0x3

    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/sun/tools/javac/comp/Resolve;->findIdentInPackage(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    iget-object v3, p2, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v2, v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 314
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Attr;->rs:Lcom/sun/tools/javac/comp/Resolve;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, p2, v3, v1, v0}, Lcom/sun/tools/javac/comp/Resolve;->findMemberType(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 302
    check-cast p2, Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Attr$IdentAttributer;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method
