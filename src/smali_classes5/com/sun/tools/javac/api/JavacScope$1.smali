.class Lcom/sun/tools/javac/api/JavacScope$1;
.super Lcom/sun/tools/javac/api/JavacScope;
.source "JavacScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/api/JavacScope;->getEnclosingScope()Lcom/sun/tools/javac/api/JavacScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/api/JavacScope;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/JavacScope;Lcom/sun/tools/javac/comp/Env;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacScope$1;->this$0:Lcom/sun/tools/javac/api/JavacScope;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/api/JavacScope;-><init>(Lcom/sun/tools/javac/comp/Env;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEnclosingScope()Lcom/sun/source/tree/Scope;
    .registers 2

    .line 62
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacScope$1;->getEnclosingScope()Lcom/sun/tools/javac/api/JavacScope;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingScope()Lcom/sun/tools/javac/api/JavacScope;
    .registers 2

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalElements()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope$1;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->getElements()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public isStarImportScope()Z
    .registers 2

    .line 64
    const/4 v0, 0x1

    return v0
.end method
