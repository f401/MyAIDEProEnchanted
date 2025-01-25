.class Lcom/sun/tools/javac/comp/Lower$EnumMapping;
.super Ljava/lang/Object;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnumMapping"
.end annotation


# instance fields
.field final forEnum:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field final mapVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

.field next:I

.field pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field final this$0:Lcom/sun/tools/javac/comp/Lower;

.field final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 12

    const/16 v4, 0x2e

    .line 376
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 398
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->next:I

    .line 377
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->forEnum:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 378
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    .line 379
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 380
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$200(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "SwitchMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$200(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$300(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/jvm/ClassWriter;

    move-result-object v2

    iget-object v3, p3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->xClassName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    const/16 v3, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$200(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 387
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$400(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    .line 388
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x1018

    new-instance v5, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v7

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v7}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->mapVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 392
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/sun/tools/javac/comp/Lower;->access$600(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 393
    return-void
.end method


# virtual methods
.method forConstant(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 411
    if-nez v0, :cond_19

    .line 412
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    iget v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->next:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->next:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_19
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0
.end method

.method translate()V
    .registers 15

    .line 418
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-interface {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 419
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->mapVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Lower;->classDef(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v7

    .line 422
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 423
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->values:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->forEnum:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 425
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 422
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->access$800(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 427
    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 428
    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 427
    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 430
    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 431
    new-instance v2, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v1, v3}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    .line 434
    new-instance v9, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v9}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 435
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 436
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->ordinal:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->forEnum:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 438
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 435
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/comp/Lower;->access$800(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v10

    .line 439
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 440
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v11

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v12

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iget-object v4, v1, Lcom/sun/tools/javac/util/Names;->ex:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 441
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symtab;->noSuchFieldErrorType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 442
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide v2, 0x200000000L

    invoke-static {v6}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 440
    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 444
    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 440
    invoke-virtual {v11, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 445
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_105
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_191

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 448
    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v4}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 449
    invoke-static {v5}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->mapVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v11, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 450
    invoke-static {v11}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v11

    iget-object v12, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v12}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v12

    iget-object v13, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v13}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v12, v1, v10}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    .line 449
    invoke-virtual {v5, v6, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v1

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 452
    invoke-static {v5}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    .line 449
    invoke-virtual {v4, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 453
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v4}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    const-wide/16 v12, 0x0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v4, v12, v13, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    .line 456
    invoke-virtual {v9, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_105

    .line 459
    :cond_191
    iget-object v0, v7, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 460
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v9}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 461
    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$EnumMapping;->mapVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, v2, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 462
    return-void
.end method
