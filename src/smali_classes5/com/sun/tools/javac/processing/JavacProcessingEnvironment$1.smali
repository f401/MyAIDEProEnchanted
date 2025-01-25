.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$1;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "JavacProcessingEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1355
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 1357
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1358
    if-eqz p1, :cond_8

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 1360
    :cond_8
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 3

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 1383
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V

    .line 1384
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 3

    .line 1390
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 1391
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V

    .line 1392
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 3

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1367
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 1368
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 3

    .line 1398
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1399
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V

    .line 1400
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 3

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1371
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    .line 1372
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 3

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 1379
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V

    .line 1380
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 3

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1395
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 1396
    return-void
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 3

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 1363
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V

    .line 1364
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 3

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 1387
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V

    .line 1388
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 3

    .line 1374
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1375
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 1376
    return-void
.end method
