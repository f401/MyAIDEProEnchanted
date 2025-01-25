.class Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "TreeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/TreeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeclScanner"
.end annotation


# instance fields
.field result:Lcom/sun/tools/javac/tree/JCTree;

.field final val$sym:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 477
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    if-nez v0, :cond_9

    .line 478
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 479
    :cond_9
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 4

    .line 485
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_9

    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 487
    :goto_8
    return-void

    .line 486
    :cond_9
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    goto :goto_8
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 4

    .line 489
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_9

    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 491
    :goto_8
    return-void

    .line 490
    :cond_9
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    goto :goto_8
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 4

    .line 481
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_9

    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 483
    :goto_8
    return-void

    .line 482
    :cond_9
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V

    goto :goto_8
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 4

    .line 497
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_f

    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 499
    :goto_e
    return-void

    .line 498
    :cond_f
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V

    goto :goto_e
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 4

    .line 493
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_9

    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 495
    :goto_8
    return-void

    .line 494
    :cond_9
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    goto :goto_8
.end method
