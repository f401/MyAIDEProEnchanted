.class public Lcom/sun/tools/javac/tree/TreeMaker;
.super Ljava/lang/Object;
.source "TreeMaker.java"

# interfaces
.implements Lcom/sun/tools/javac/tree/JCTree$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;
    }
.end annotation


# static fields
.field protected static final treeMakerKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/tree/TreeMaker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field annotationBuilder:Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;

.field names:Lcom/sun/tools/javac/util/Names;

.field public pos:I

.field syms:Lcom/sun/tools/javac/code/Symtab;

.field public toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

.field types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/tree/TreeMaker;->treeMakerKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lcom/sun/tools/javac/util/Names;Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Symtab;)V
    .registers 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 762
    new-instance v0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;-><init>(Lcom/sun/tools/javac/tree/TreeMaker;)V

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->annotationBuilder:Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 92
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 93
    iput-object p2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    .line 94
    iput-object p3, p0, Lcom/sun/tools/javac/tree/TreeMaker;->types:Lcom/sun/tools/javac/code/Types;

    .line 95
    iput-object p4, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    const/4 v1, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 762
    new-instance v0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;-><init>(Lcom/sun/tools/javac/tree/TreeMaker;)V

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->annotationBuilder:Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;

    .line 80
    sget-object v0, Lcom/sun/tools/javac/tree/TreeMaker;->treeMakerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 81
    iput v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 83
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    .line 84
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 85
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->types:Lcom/sun/tools/javac/code/Types;

    .line 86
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;
    .registers 2

    .line 55
    sget-object v0, Lcom/sun/tools/javac/tree/TreeMaker;->treeMakerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/TreeMaker;

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeMaker;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 58
    :cond_0
    return-object v0
.end method


# virtual methods
.method public Annotation(Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .registers 3

    .line 767
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->annotationBuilder:Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;

    check-cast p1, Lcom/sun/tools/javac/code/Attribute$Compound;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public Annotation(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;"
        }
    .end annotation

    .line 463
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;-><init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)V

    .line 464
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos:I

    .line 465
    return-object v0
.end method

.method public Annotations(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    .line 676
    if-nez p1, :cond_0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 677
    :cond_0
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 678
    :goto_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    .line 680
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotation(Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 678
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 682
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public AnonymousClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    .line 504
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 506
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 502
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    return-object v0
.end method

.method public App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 4

    .line 599
    const/4 v0, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method public App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method public Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V

    .line 330
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->pos:I

    .line 331
    return-object v0
.end method

.method public Assert(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssert;
    .registers 5

    .line 320
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCAssert;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 321
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->pos:I

    .line 322
    return-object v0
.end method

.method public Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;
    .registers 5

    .line 361
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 362
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->pos:I

    .line 363
    return-object v0
.end method

.method public Assignment(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 5

    .line 843
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    return-object v0
.end method

.method public Assignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;
    .registers 6

    .line 367
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;-><init>(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol;)V

    .line 368
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos:I

    .line 369
    return-object v0
.end method

.method public Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;
    .registers 6

    .line 379
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;-><init>(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)V

    .line 380
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos:I

    .line 381
    return-object v0
.end method

.method public Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCBlock;-><init>(JLcom/sun/tools/javac/util/List;)V

    .line 199
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos:I

    .line 200
    return-object v0
.end method

.method public Break(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCBreak;
    .registers 4

    .line 296
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/tree/JCTree$JCBreak;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 297
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->pos:I

    .line 298
    return-object v0
.end method

.method public Call(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 4

    .line 837
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    goto :goto_0
.end method

.method public Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCCase;"
        }
    .end annotation

    .line 244
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCCase;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V

    .line 245
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pos:I

    .line 246
    return-object v0
.end method

.method public Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;
    .registers 5

    .line 269
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V

    .line 270
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos:I

    .line 271
    return-object v0
.end method

.method public ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 160
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    .line 161
    return-object v0
.end method

.method public ClassLiteral(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 568
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassLiteral(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public ClassLiteral(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 9

    .line 574
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x19

    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public Conditional(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCConditional;
    .registers 6

    .line 278
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 279
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->pos:I

    .line 280
    return-object v0
.end method

.method public Continue(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCContinue;
    .registers 4

    .line 302
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCContinue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/tree/JCTree$JCContinue;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 303
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->pos:I

    .line 304
    return-object v0
.end method

.method public Create(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 605
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 606
    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    move-object v0, p0

    move-object v2, v1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    .line 607
    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 608
    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 609
    return-object v0
.end method

.method public DoLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;
    .registers 5

    .line 204
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 205
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->pos:I

    .line 206
    return-object v0
.end method

.method public Erroneous()Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .registers 2

    .line 480
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    return-object v0
.end method

.method public Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCErroneous;"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;-><init>(Lcom/sun/tools/javac/util/List;)V

    .line 485
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->pos:I

    .line 486
    return-object v0
.end method

.method public Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;
    .registers 4

    .line 290
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 291
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->pos:I

    .line 292
    return-object v0
.end method

.method public ForLoop(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCForLoop;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCForLoop;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V

    .line 221
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->pos:I

    .line 222
    return-object v0
.end method

.method public ForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;
    .registers 6

    .line 226
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V

    .line 227
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->pos:I

    .line 228
    return-object v0
.end method

.method public Ident(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 546
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    return-object v0
.end method

.method public Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;
    .registers 4

    .line 519
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v1, :cond_0

    .line 520
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 521
    :goto_0
    new-instance v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    invoke-direct {v1, v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iget v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 522
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->setPos(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 523
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 519
    return-object v0

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    goto :goto_0
.end method

.method public Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;
    .registers 4

    .line 409
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    .line 410
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos:I

    .line 411
    return-object v0
.end method

.method public Idents(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 554
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 554
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;
    .registers 6

    .line 284
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCIf;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCIf;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V

    .line 285
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->pos:I

    .line 286
    return-object v0
.end method

.method public Import(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/tree/JCTree$JCImport;
    .registers 5

    .line 141
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCImport;-><init>(Lcom/sun/tools/javac/tree/JCTree;Z)V

    .line 142
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->pos:I

    .line 143
    return-object v0
.end method

.method public Indexed(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;
    .registers 5

    .line 849
    new-instance v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 850
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iput-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->type:Lcom/sun/tools/javac/code/Type;

    .line 851
    return-object v1
.end method

.method public Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;
    .registers 5

    .line 397
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 398
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->pos:I

    .line 399
    return-object v0
.end method

.method public Labelled(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;
    .registers 5

    .line 232
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V

    .line 233
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->pos:I

    .line 234
    return-object v0
.end method

.method public LetExpr(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$LetExpr;
    .registers 5

    .line 511
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$LetExpr;

    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sun/tools/javac/tree/JCTree$LetExpr;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 512
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->pos:I

    .line 513
    return-object v0
.end method

.method public LetExpr(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$LetExpr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$LetExpr;"
        }
    .end annotation

    .line 490
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$LetExpr;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$LetExpr;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 491
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->pos:I

    .line 492
    return-object v0
.end method

.method public Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
    .registers 5

    .line 415
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;-><init>(ILjava/lang/Object;)V

    .line 416
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->pos:I

    .line 417
    return-object v0
.end method

.method public Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
    .registers 5

    .line 686
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 688
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 689
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    .line 690
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 691
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 692
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 694
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    .line 695
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 696
    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 697
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    .line 698
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 699
    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 700
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 701
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    .line 702
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 703
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 704
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    .line 705
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 707
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    .line 708
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_0

    .line 709
    :cond_6
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 710
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    .line 711
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_0

    .line 712
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 713
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 714
    const/16 v1, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 715
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_0

    .line 717
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .registers 14

    .line 780
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotations(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 784
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 785
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeParams(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 786
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Params(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 787
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p3

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 790
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->setPos(I)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/JCTree;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 780
    return-object v0
.end method

.method public MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .registers 4

    .line 773
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    return-object v0
.end method

.method public MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 181
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos:I

    .line 182
    return-object v0
.end method

.method public Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 4

    .line 476
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;"
        }
    .end annotation

    .line 469
    new-instance v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-direct {v1, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;-><init>(JLcom/sun/tools/javac/util/List;)V

    .line 470
    const-wide/16 v2, 0x2dff

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 471
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    .line 472
    return-object v1

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    goto :goto_1
.end method

.method public NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewArray;"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 350
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->pos:I

    .line 351
    return-object v0
.end method

.method public NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    .registers 12
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
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    .line 340
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 341
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos:I

    .line 342
    return-object v0
.end method

.method public Param(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 11

    .line 813
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public Params(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 820
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 821
    iget v0, p2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 822
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 823
    check-cast p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 824
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 821
    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 827
    :goto_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->paramName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v3, v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Param(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 827
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 830
    :cond_2
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Parens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCParens;
    .registers 4

    .line 355
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCParens;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCParens;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 356
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCParens;->pos:I

    .line 357
    return-object v0
.end method

.method public QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 537
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->isUnqualifiable(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 539
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0
.end method

.method public Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;
    .registers 4

    .line 308
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCReturn;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 309
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->pos:I

    .line 310
    return-object v0
.end method

.method public Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 530
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-direct {v0, p1, v1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->setPos(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    .registers 5

    .line 403
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    .line 404
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos:I

    .line 405
    return-object v0
.end method

.method public Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;
    .registers 3

    .line 192
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    invoke-direct {v0}, Lcom/sun/tools/javac/tree/JCTree$JCSkip;-><init>()V

    .line 193
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCSkip;->pos:I

    .line 194
    return-object v0
.end method

.method public Super(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;
    .registers 10

    .line 584
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x10

    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    return-object v0
.end method

.method public Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCase;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCSwitch;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V

    .line 239
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos:I

    .line 240
    return-object v0
.end method

.method public Synchronized(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;
    .registers 5

    .line 250
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V

    .line 251
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->pos:I

    .line 252
    return-object v0
.end method

.method public This(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 9

    .line 562
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x10

    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    return-object v0
.end method

.method public Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;
    .registers 4

    .line 314
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCThrow;-><init>(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 315
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->pos:I

    .line 316
    return-object v0
.end method

.method public TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 125
    invoke-static {p1}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 127
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    instance-of v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 133
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Lcom/sun/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 134
    :cond_2
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Scope$ImportScope;Lcom/sun/tools/javac/code/Scope$StarImportScope;)V

    .line 136
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pos:I

    .line 137
    return-object v0
.end method

.method public Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    return-object v0
.end method

.method public Try(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation

    .line 263
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sun/tools/javac/tree/JCTree$JCTry;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V

    .line 264
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->pos:I

    .line 265
    return-object v0
.end method

.method public Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    const/16 v2, 0x13

    .line 615
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 624
    :goto_0
    return-object v0

    .line 617
    :cond_0
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 640
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    .line 624
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    .line 631
    :pswitch_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 632
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 633
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 635
    :goto_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    goto :goto_1

    .line 634
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_2

    .line 620
    :pswitch_2
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    goto :goto_1

    .line 643
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p1

    .line 626
    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 627
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    goto :goto_1

    .line 623
    :cond_5
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    goto :goto_1

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;"
        }
    .end annotation

    .line 433
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V

    .line 434
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->pos:I

    .line 435
    return-object v0
.end method

.method public TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;
    .registers 4

    .line 427
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 428
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->pos:I

    .line 429
    return-object v0
.end method

.method public TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;
    .registers 4

    .line 457
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;-><init>(Lcom/sun/tools/javac/code/BoundKind;)V

    .line 458
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->pos:I

    .line 459
    return-object v0
.end method

.method public TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;
    .registers 4

    .line 857
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    return-object v0
.end method

.method public TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;
    .registers 5

    .line 385
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;-><init>(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 386
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->pos:I

    .line 387
    return-object v0
.end method

.method public TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
    .registers 4

    .line 421
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;-><init>(I)V

    .line 422
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->pos:I

    .line 423
    return-object v0
.end method

.method public TypeParam(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->types:Lcom/sun/tools/javac/code/Types;

    .line 797
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeParameter(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->setPos(I)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/JCTree;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 796
    return-object v0
.end method

.method public TypeParameter(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)V

    .line 446
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos:I

    .line 447
    return-object v0
.end method

.method public TypeParams(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation

    .line 803
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 804
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeParam(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 805
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 807
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public TypeTest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;
    .registers 5

    .line 391
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 392
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->pos:I

    .line 393
    return-object v0
.end method

.method public TypeUnion(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;"
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;-><init>(Lcom/sun/tools/javac/util/List;)V

    .line 440
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->pos:I

    .line 441
    return-object v0
.end method

.method public Types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 654
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 655
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 655
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;
    .registers 5

    .line 373
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;-><init>(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)V

    .line 374
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->pos:I

    .line 375
    return-object v0
.end method

.method public VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 9

    .line 664
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotations(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 668
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 670
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->setPos(I)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 664
    return-object v0
.end method

.method public VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 11

    .line 186
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 187
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos:I

    .line 188
    return-object v0
.end method

.method public WhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;
    .registers 5

    .line 210
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V

    .line 211
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->pos:I

    .line 212
    return-object v0
.end method

.method public Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;
    .registers 5

    .line 451
    new-instance v0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;-><init>(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)V

    .line 452
    iget v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->pos:I

    .line 453
    return-object v0
.end method

.method public at(I)Lcom/sun/tools/javac/tree/TreeMaker;
    .registers 2

    .line 107
    iput p1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 108
    return-object p0
.end method

.method public at(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/tree/TreeMaker;
    .registers 3

    .line 114
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->pos:I

    .line 115
    return-object p0

    .line 114
    :cond_0
    invoke-interface {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v0

    goto :goto_0
.end method

.method public forToplevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/tree/TreeMaker;
    .registers 6

    .line 101
    new-instance v0, Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lcom/sun/tools/javac/util/Names;Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Symtab;)V

    return-object v0
.end method

.method isUnqualifiable(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 867
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v0

    .line 871
    :cond_1
    iget v2, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v2, :cond_7

    .line 873
    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lcom/sun/tools/javac/code/Scope$ImportScope;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope$ImportScope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    .line 874
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v3, :cond_3

    .line 875
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v3, p1, :cond_2

    .line 877
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 879
    :cond_3
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    .line 880
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v3, :cond_5

    .line 881
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v3, p1, :cond_4

    .line 883
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 885
    :cond_5
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeMaker;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lcom/sun/tools/javac/code/Scope$StarImportScope;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    .line 886
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v3, :cond_7

    .line 887
    iget-object v3, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v3, p1, :cond_6

    .line 889
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 892
    goto :goto_0
.end method

.method public paramName(I)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 897
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public typaramName(I)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 901
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method
