.class Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;
.super Lcom/sun/tools/javac/code/Types$UnaryVisitor;
.source "RichDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/sun/tools/javac/util/List;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 473
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_0

    .line 474
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 501
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    .line 517
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v0, p1, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    if-ne v0, v1, :cond_1

    const-string v0, ".1"

    .line 519
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where.captured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    .line 520
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v2, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 522
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 523
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 525
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    .line 530
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v0, p1, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 533
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 534
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const-string v3, "where.intersection"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v3

    .line 535
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v4, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/util/List;)Ljava/lang/Void;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->addUsage(Lcom/sun/tools/javac/code/Symbol;)V

    .line 541
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/util/List;)Ljava/lang/Void;

    .line 542
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_1

    .line 543
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 544
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 493
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ErrorType;->getOriginalType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 496
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 479
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/util/List;)Ljava/lang/Void;

    .line 480
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 486
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/util/List;)Ljava/lang/Void;

    .line 487
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 549
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v0, p1, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 551
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 552
    :goto_0
    instance-of v1, v0, Lcom/sun/tools/javac/code/Type$ErrorType;

    if-eqz v1, :cond_0

    .line 553
    check-cast v0, Lcom/sun/tools/javac/code/Type$ErrorType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ErrorType;->getOriginalType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_0
    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 560
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->addUsage(Lcom/sun/tools/javac/code/Symbol;)V

    .line 562
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x12

    if-eq v0, v4, :cond_1

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0x13

    if-ne v0, v4, :cond_4

    :cond_1
    move v0, v3

    .line 567
    :goto_2
    iget-object v4, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v4, v4, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "where.typevar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    if-eqz v0, :cond_5

    const-string v0, ".1"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 569
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v5

    iget-object v6, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    .line 567
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v1, v7, v3

    const/4 v2, 0x2

    aput-object v5, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    invoke-virtual {v4, v0, v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v2

    .line 570
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v3, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->symbolPreprocessor:Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/util/List;)Ljava/lang/Void;

    .line 574
    :cond_2
    return-object v8

    .line 558
    :cond_3
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 562
    goto :goto_2

    .line 568
    :cond_5
    const-string v0, ""

    goto :goto_3
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 469
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 507
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 508
    const/4 v0, 0x0

    return-object v0
.end method
