.class public Lcom/sun/tools/javac/processing/JavacMessager;
.super Ljava/lang/Object;
.source "JavacMessager.java"

# interfaces
.implements Ljavax/annotation/processing/Messager;


# instance fields
.field errorCount:I

.field log:Lcom/sun/tools/javac/util/Log;

.field processingEnv:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

.field warningCount:I


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount:I

    .line 49
    iput v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->warningCount:I

    .line 52
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    .line 53
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacMessager;->processingEnv:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 54
    return-void
.end method


# virtual methods
.method public errorCount()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount:I

    return v0
.end method

.method public errorRaised()Z
    .registers 2

    .line 166
    iget v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newRound(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 178
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount:I

    .line 180
    return-void
.end method

.method public printError(Ljava/lang/String;)V
    .registers 3

    .line 145
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/processing/JavacMessager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v3, 0x0

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/processing/JavacMessager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V

    .line 60
    return-void
.end method

.method public printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V
    .registers 10

    const/4 v4, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/processing/JavacMessager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V

    .line 65
    return-void
.end method

.method public printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)V
    .registers 11

    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/processing/JavacMessager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V

    .line 79
    return-void
.end method

.method public printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 94
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->processingEnv:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getElementUtils()Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p3, p4, p5}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_51

    .line 100
    iget-object v0, v2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 101
    if-eqz v0, :cond_4e

    .line 102
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 103
    iget-object v0, v2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    move-object v2, v1

    .line 107
    :goto_25
    :try_start_25
    sget-object v1, Lcom/sun/tools/javac/processing/JavacMessager$1;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    invoke-virtual {p1}, Ljavax/tools/Diagnostic$Kind;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v4, :cond_8d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_75

    const/4 v3, 0x3

    if-eq v1, v3, :cond_54

    .line 130
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.messager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->note(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_6c

    .line 116
    :goto_46
    if-eqz v2, :cond_4d

    .line 135
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 137
    :cond_4d
    return-void

    :cond_4e
    move-object v0, v1

    move-object v2, v1

    .line 101
    goto :goto_25

    :cond_51
    move-object v0, v1

    move-object v2, v1

    .line 99
    goto :goto_25

    .line 125
    :cond_54
    :try_start_54
    iget v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->warningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->warningCount:I

    .line 126
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.messager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->mandatoryWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_6c

    goto :goto_46

    .line 134
    :catchall_6c
    move-exception v0

    if-eqz v2, :cond_74

    .line 135
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 136
    :cond_74
    throw v0

    .line 120
    :cond_75
    :try_start_75
    iget v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->warningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->warningCount:I

    .line 121
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.messager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 109
    :cond_8d
    iget v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->errorCount:I

    .line 110
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    iget-boolean v1, v1, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z

    .line 111
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z
    :try_end_9c
    .catchall {:try_start_75 .. :try_end_9c} :catchall_6c

    .line 113
    :try_start_9c
    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v4, "proc.messager"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_9c .. :try_end_ad} :catchall_b2

    .line 115
    :try_start_ad
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v1, v0, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z

    goto :goto_46

    :catchall_b2
    move-exception v0

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacMessager;->log:Lcom/sun/tools/javac/util/Log;

    iput-boolean v1, v3, Lcom/sun/tools/javac/util/Log;->multipleErrors:Z

    .line 116
    throw v0
    :try_end_b8
    .catchall {:try_start_ad .. :try_end_b8} :catchall_6c
.end method

.method public printNotice(Ljava/lang/String;)V
    .registers 3

    .line 162
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/processing/JavacMessager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public printWarning(Ljava/lang/String;)V
    .registers 3

    .line 154
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/processing/JavacMessager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 183
    const-string v0, "javac Messager"

    return-object v0
.end method

.method public warningCount()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/sun/tools/javac/processing/JavacMessager;->warningCount:I

    return v0
.end method
