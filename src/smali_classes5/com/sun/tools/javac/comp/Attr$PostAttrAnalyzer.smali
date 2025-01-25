.class Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Attr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostAttrAnalyzer"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Attr;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Attr;)V
    .registers 2

    .line 3329
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method

.method private initTypeIfNeeded(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 3332
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_c

    .line 3333
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 3335
    :cond_c
    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 3339
    if-nez p1, :cond_3

    .line 3344
    :goto_2
    return-void

    .line 3340
    :cond_3
    instance-of v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_a

    .line 3341
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3343
    :cond_a
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_2
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 7

    .line 3402
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    if-nez v0, :cond_1e

    .line 3403
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 3404
    :cond_1e
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V

    .line 3405
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 7

    .line 3409
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    if-nez v0, :cond_1e

    .line 3410
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 3411
    :cond_1e
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V

    .line 3412
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 9

    .line 3363
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3364
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-nez v0, :cond_1a

    .line 3365
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 3367
    :cond_1a
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 3368
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 3

    .line 3348
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-nez v0, :cond_c

    .line 3349
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 3351
    :cond_c
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 9

    .line 3372
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3373
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-nez v0, :cond_1a

    .line 3374
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 3376
    :cond_1a
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    .line 3377
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 9

    .line 3391
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    if-nez v0, :cond_1f

    .line 3392
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v0, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 3394
    :cond_1f
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_2b

    .line 3395
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lcom/sun/tools/javac/code/Type;

    .line 3397
    :cond_2b
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V

    .line 3398
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 3

    .line 3355
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-nez v0, :cond_c

    .line 3356
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 3358
    :cond_c
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 3359
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 7

    .line 3416
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    if-nez v0, :cond_1e

    .line 3417
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Attr;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 3418
    :cond_1e
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V

    .line 3419
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 9

    .line 3381
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3382
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-nez v0, :cond_1f

    .line 3383
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lcom/sun/tools/javac/comp/Attr;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Attr;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 3384
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 3386
    :cond_1f
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 3387
    return-void
.end method
