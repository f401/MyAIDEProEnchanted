.class public Lcom/sun/tools/javac/comp/Env;
.super Ljava/lang/Object;
.source "Env.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sun/tools/javac/comp/Env",
        "<TA;>;>;"
    }
.end annotation


# instance fields
.field public baseClause:Z

.field public enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

.field public enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

.field public info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public next:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation
.end field

.field public outer:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation
.end field

.field public toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

.field public tree:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "TA;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Env;->baseClause:Z

    .line 82
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    .line 83
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    .line 84
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 85
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 86
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 87
    iput-object v1, p0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 88
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public dup(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/comp/Env;->dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public dup(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Env;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "TA;)",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/sun/tools/javac/comp/Env;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/comp/Env;-><init>(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Env;->dupto(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public dupto(Lcom/sun/tools/javac/comp/Env;)Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;)",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation

    .line 102
    iput-object p0, p1, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    .line 103
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    iput-object v0, p1, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    .line 104
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v0, p1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 105
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclClass:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 106
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object v0, p1, Lcom/sun/tools/javac/comp/Env;->enclMethod:Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 107
    return-object p1
.end method

.method public enclosing(I)Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;"
        }
    .end annotation

    .line 120
    .line 121
    :goto_0
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/tools/javac/comp/Env;->next:Lcom/sun/tools/javac/comp/Env;

    goto :goto_0

    .line 122
    :cond_0
    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<TA;>;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/sun/tools/javac/comp/Env$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Env$1;-><init>(Lcom/sun/tools/javac/comp/Env;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Env["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->info:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",outer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Env;->outer:Lcom/sun/tools/javac/comp/Env;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
