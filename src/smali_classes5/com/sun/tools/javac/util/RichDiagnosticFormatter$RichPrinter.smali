.class public Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;
.super Lcom/sun/tools/javac/code/Printer;
.source "RichDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RichPrinter"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Printer;-><init>()V

    return-void
.end method


# virtual methods
.method public capturedVarId(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v2, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v1, p1, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected className(Lcom/sun/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 393
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 394
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->length()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    .line 395
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/RichConfiguration;->isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 396
    :cond_18
    invoke-super {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Printer;->className(Lcom/sun/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_1c
    return-object v0

    .line 397
    :cond_1d
    if-eqz p2, :cond_2c

    .line 398
    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->simplify(Lcom/sun/tools/javac/code/Symbol;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 400
    :cond_2c
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected printMethodArgs(Lcom/sun/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 417
    invoke-super {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Printer;->printMethodArgs(Lcom/sun/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 350
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/RichConfiguration;->isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 373
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 375
    invoke-static {v0, p1, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v0

    .line 373
    const-string v1, "compiler.misc.captured.type"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p2, v1, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_26
    return-object v0

    :cond_27
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public bridge synthetic visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 350
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 422
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->simplify(Lcom/sun/tools/javac/code/Symbol;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    .line 424
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/RichConfiguration;->isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 425
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_20
    return-object v0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 350
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 382
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    .line 383
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/RichConfiguration;->isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 384
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 386
    invoke-static {v0, p1, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v0

    .line 384
    const-string v1, "compiler.misc.intersection.type"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p2, v1, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_2c
    return-object v0

    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method public bridge synthetic visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 350
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 11

    .line 433
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStaticOrInstanceInit()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 449
    :cond_c
    :goto_c
    return-object v0

    .line 437
    :cond_d
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_7d

    .line 440
    :goto_19
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_c

    .line 441
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_48

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitTypes(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 445
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 446
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x400000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_84

    const/4 v0, 0x1

    .line 444
    :goto_6c
    invoke-virtual {p0, v2, v0, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->printMethodArgs(Lcom/sun/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 439
    :cond_7d
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 446
    :cond_84
    const/4 v0, 0x0

    goto :goto_6c
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 350
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 364
    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    if-ne p1, v1, :cond_15

    .line 366
    const-string v0, "compiler.misc.type.null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_15
    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 350
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    .line 405
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$100(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type$TypeVar;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    .line 406
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/RichConfiguration;->isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 407
    :cond_16
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$TypeVar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$TypeVar;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    sget-object v2, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v1, p1, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v1

    const-string v2, "compiler.misc.type.var"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method
