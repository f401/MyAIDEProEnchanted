.class public Lcom/sun/tools/javac/api/JavacScope;
.super Ljava/lang/Object;
.source "JavacScope.java"

# interfaces
.implements Lcom/sun/source/tree/Scope;


# instance fields
.field protected final env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Env;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 98
    instance-of v1, p1, Lcom/sun/tools/javac/api/JavacScope;

    if-eqz v1, :cond_1c

    .line 99
    check-cast p1, Lcom/sun/tools/javac/api/JavacScope;

    .line 100
    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v2, p1, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 101
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v2

    if-ne v1, v2, :cond_1c

    const/4 v0, 0x1

    .line 103
    :cond_1c
    return v0
.end method

.method public getEnclosingClass()Ljavax/lang/model/element/TypeElement;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, v1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_f
.end method

.method public getEnclosingMethod()Ljavax/lang/model/element/ExecutableElement;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_7
.end method

.method public bridge synthetic getEnclosingScope()Lcom/sun/source/tree/Scope;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacScope;->getEnclosingScope()Lcom/sun/tools/javac/api/JavacScope;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingScope()Lcom/sun/tools/javac/api/JavacScope;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    if-eq v0, v1, :cond_18

    .line 59
    new-instance v0, Lcom/sun/tools/javac/api/JavacScope;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/api/JavacScope;-><init>(Lcom/sun/tools/javac/comp/Env;)V

    .line 62
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/sun/tools/javac/api/JavacScope$1;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/api/JavacScope$1;-><init>(Lcom/sun/tools/javac/api/JavacScope;Lcom/sun/tools/javac/comp/Env;)V

    goto :goto_17
.end method

.method public getEnv()Lcom/sun/tools/javac/comp/Env;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

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

    .line 86
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lcom/sun/tools/javac/comp/AttrContext;->getLocalElements()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isStarImportScope()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavacScope[env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/api/JavacScope;->env:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",starImport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/tools/javac/api/JavacScope;->isStarImportScope()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
