.class public Lcom/sun/tools/javac/comp/AttrContext;
.super Ljava/lang/Object;
.source "AttrContext.java"


# instance fields
.field enclVar:Lcom/sun/tools/javac/code/Symbol;

.field isSelfCall:Z

.field lint:Lcom/sun/tools/javac/code/Lint;

.field scope:Lcom/sun/tools/javac/code/Scope;

.field selectSuper:Z

.field staticLevel:I

.field tvars:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field varArgs:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 47
    iput v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    .line 51
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    .line 55
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 59
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 63
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    .line 72
    iput-object v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method dup()Lcom/sun/tools/javac/comp/AttrContext;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/AttrContext;->dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;

    move-result-object v0

    return-object v0
.end method

.method dup(Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/comp/AttrContext;
    .registers 4

    .line 77
    new-instance v0, Lcom/sun/tools/javac/comp/AttrContext;

    invoke-direct {v0}, Lcom/sun/tools/javac/comp/AttrContext;-><init>()V

    .line 78
    iput-object p1, v0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 79
    iget v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    iput v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->staticLevel:I

    .line 80
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->isSelfCall:Z

    .line 81
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->selectSuper:Z

    .line 82
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    iput-boolean v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->varArgs:Z

    .line 83
    iget-object v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->tvars:Lcom/sun/tools/javac/util/List;

    .line 84
    iget-object v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 85
    iget-object v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    iput-object v1, v0, Lcom/sun/tools/javac/comp/AttrContext;->enclVar:Lcom/sun/tools/javac/code/Symbol;

    .line 86
    return-object v0
.end method

.method public getLocalElements()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    if-nez v0, :cond_9

    .line 97
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 98
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope;->getElements()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttrContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/AttrContext;->scope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
