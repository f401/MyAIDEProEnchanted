.class public Lcom/sun/tools/javac/util/JCDiagnostic;
.super Ljava/lang/Object;
.source "JCDiagnostic.java"

# interfaces
.implements Ljavax/tools/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;,
        Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;,
        Lcom/sun/tools/javac/util/JCDiagnostic$Factory;,
        Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;,
        Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/tools/Diagnostic",
        "<",
        "Ljavax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# static fields
.field private static fragmentFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected final args:[Ljava/lang/Object;

.field private final column:I

.field private defaultFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;

.field private final line:I

.field private final lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field private final position:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private final source:Lcom/sun/tools/javac/util/DiagnosticSource;

.field private final type:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;


# direct methods
.method protected varargs constructor <init>(Lcom/sun/tools/javac/api/DiagnosticFormatter;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;",
            "Lcom/sun/tools/javac/util/DiagnosticSource;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    if-nez p5, :cond_e

    if-eqz p6, :cond_e

    invoke-interface {p6}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 376
    :cond_e
    iput-object p1, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->defaultFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    .line 377
    iput-object p2, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->type:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 378
    iput-object p3, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 379
    iput-object p4, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    .line 380
    iput-object p5, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    .line 381
    iput-object p6, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->position:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 382
    iput-object p7, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->key:Ljava/lang/String;

    .line 383
    iput-object p8, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->args:[Ljava/lang/Object;

    .line 385
    if-nez p6, :cond_30

    move v0, v1

    .line 386
    :goto_21
    if-eq v0, v1, :cond_25

    if-nez p5, :cond_35

    .line 387
    :cond_25
    iput v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->column:I

    iput v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->line:I

    .line 392
    :goto_29
    return-void

    .line 374
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 385
    :cond_30
    invoke-interface {p6}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    goto :goto_21

    .line 389
    :cond_35
    invoke-virtual {p5, v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->getLineNumber(I)I

    move-result v1

    iput v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->line:I

    .line 390
    const/4 v1, 0x1

    invoke-virtual {p5, v0, v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->column:I

    goto :goto_29
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->defaultFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/util/JCDiagnostic;)Ljava/util/Set;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->position:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object v0
.end method

.method public static varargs fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    .line 248
    invoke-static {}, Lcom/sun/tools/javac/util/JCDiagnostic;->getFragmentFormatter()Lcom/sun/tools/javac/api/DiagnosticFormatter;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 251
    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compiler."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v0, v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->key:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v3

    move-object v6, v3

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sun/tools/javac/util/JCDiagnostic;-><init>(Lcom/sun/tools/javac/api/DiagnosticFormatter;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-object v0
.end method

.method public static getFragmentFormatter()Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic;->fragmentFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    if-nez v0, :cond_f

    .line 261
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;

    invoke-static {}, Lcom/sun/tools/javac/util/JavacMessages;->getDefaultMessages()Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/JavacMessages;)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic;->fragmentFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    .line 263
    :cond_f
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic;->fragmentFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .registers 2

    .line 500
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnNumber()J
    .registers 3

    .line 492
    iget v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->column:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDiagnosticSource()Lcom/sun/tools/javac/util/DiagnosticSource;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    return-object v0
.end method

.method public getEndPosition()J
    .registers 3

    .line 476
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntEndPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getIntEndPosition()I
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->position:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getEndPosTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getEndPosition(Ljava/util/Map;)I

    move-result v0

    goto :goto_5
.end method

.method protected getIntPosition()I
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->position:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-interface {v0}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    goto :goto_5
.end method

.method protected getIntStartPosition()I
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->position:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-interface {v0}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v0

    goto :goto_5
.end method

.method public getKind()Ljavax/tools/Diagnostic$Kind;
    .registers 3

    .line 534
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    iget-object v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->type:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 544
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->OTHER:Ljavax/tools/Diagnostic$Kind;

    :goto_15
    return-object v0

    .line 542
    :cond_16
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    goto :goto_15

    .line 538
    :cond_19
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 539
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

    goto :goto_15

    .line 540
    :cond_26
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    goto :goto_15

    .line 536
    :cond_29
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    goto :goto_15
.end method

.method public getLineNumber()J
    .registers 3

    .line 484
    iget v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->line:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLintCategory()Lcom/sun/tools/javac/code/Lint$LintCategory;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->defaultFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p0, p1}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .line 472
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->type:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getPrefix(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/lang/String;
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->defaultFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->formatKind(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljavax/tools/JavaFileObject;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_6

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    goto :goto_5
.end method

.method public getStartPosition()J
    .registers 3

    .line 468
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntStartPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSubdiagnostics()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .line 407
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->type:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    return-object v0
.end method

.method public hasLintCategory()Z
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFlagSet(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMandatory()Z
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiline()Z
    .registers 2

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public setFlag(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V
    .registers 4

    .line 557
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->type:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    if-ne v0, v1, :cond_19

    .line 560
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticFlag:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 569
    :cond_19
    :goto_19
    return-void

    .line 565
    :cond_1a
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 562
    :cond_22
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic;->defaultFormatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter;->format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
