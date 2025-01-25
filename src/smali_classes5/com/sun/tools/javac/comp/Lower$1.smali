.class Lcom/sun/tools/javac/comp/Lower$1;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field final this$0:Lcom/sun/tools/javac/comp/Lower;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$1;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1;->currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 660
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower$1;->currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 662
    :try_start_6
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    .line 665
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1;->currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 666
    return-void

    .line 665
    :catchall_c
    move-exception v1

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1;->currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 666
    throw v1
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 6

    .line 645
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$900(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$1;->currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->checkConflicts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 646
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    .line 647
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 6

    .line 651
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 652
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$900(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$1;->currentClass:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Check;->checkConflicts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 654
    :cond_1a
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 655
    return-void
.end method
