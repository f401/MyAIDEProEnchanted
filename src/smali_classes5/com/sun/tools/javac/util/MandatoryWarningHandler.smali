.class public Lcom/sun/tools/javac/util/MandatoryWarningHandler;
.super Ljava/lang/Object;
.source "MandatoryWarningHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
    }
.end annotation


# instance fields
.field private deferredDiagnosticArg:Ljava/lang/Object;

.field private deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field private deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

.field private final enforceMandatory:Z

.field private final lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

.field private log:Lcom/sun/tools/javac/util/Log;

.field private prefix:Ljava/lang/String;

.field private sourcesWithReportedWarnings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private verbose:Z


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Log;ZZLjava/lang/String;Lcom/sun/tools/javac/code/Lint$LintCategory;)V
    .registers 6

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    .line 115
    iput-boolean p2, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->verbose:Z

    .line 116
    iput-object p4, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    .line 117
    iput-boolean p3, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->enforceMandatory:Z

    .line 118
    iput-object p5, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

    .line 119
    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 187
    if-eqz p0, :cond_4

    if-nez p1, :cond_8

    :cond_4
    if-ne p0, p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private varargs logMandatoryNote(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 265
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->enforceMandatory:Z

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->mandatoryNote(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :goto_9
    return-void

    .line 268
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->note(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private varargs logMandatoryWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 254
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->enforceMandatory:Z

    if-eqz v0, :cond_c

    .line 255
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->mandatoryWarning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :goto_b
    return-void

    .line 257
    :cond_c
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->lintCategory:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method


# virtual methods
.method public varargs report(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Log;->currentSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    .line 127
    iget-boolean v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->verbose:Z

    if-eqz v1, :cond_5c

    .line 128
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    if-nez v1, :cond_16

    .line 129
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    .line 131
    :cond_16
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    iget v1, v1, Lcom/sun/tools/javac/util/Log;->nwarnings:I

    iget-object v2, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->log:Lcom/sun/tools/javac/util/Log;

    iget v2, v2, Lcom/sun/tools/javac/util/Log;->MaxWarnings:I

    if-ge v1, v2, :cond_29

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->logMandatoryWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_28
    :goto_28
    return-void

    .line 135
    :cond_29
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-nez v1, :cond_43

    .line 137
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->sourcesWithReportedWarnings:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 139
    sget-object v1, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 144
    :goto_39
    iput-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    .line 145
    iput-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_28

    .line 142
    :cond_3e
    sget-object v1, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    goto :goto_39

    .line 146
    :cond_43
    sget-object v2, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-eq v1, v2, :cond_4d

    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    sget-object v2, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-ne v1, v2, :cond_28

    :cond_4d
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    .line 148
    invoke-static {v1, v0}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 150
    sget-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 151
    iput-object v3, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_28

    .line 154
    :cond_5c
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-nez v1, :cond_69

    .line 156
    sget-object v1, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 157
    iput-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    .line 158
    iput-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_28

    .line 159
    :cond_69
    sget-object v2, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    .line 160
    invoke-static {v1, v0}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 162
    sget-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    iput-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 163
    iput-object v3, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    goto :goto_28
.end method

.method public reportDeferredDiagnostic()V
    .registers 6

    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticKind:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    if-eqz v0, :cond_34

    .line 173
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    if-nez v1, :cond_35

    .line 174
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    iget-object v2, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->logMandatoryNote(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_16
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->verbose:Z

    if-nez v0, :cond_34

    .line 179
    iget-object v0, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".recompile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->logMandatoryNote(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_34
    return-void

    .line 176
    :cond_35
    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticSource:Ljavax/tools/JavaFileObject;

    iget-object v2, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->deferredDiagnosticArg:Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler;->logMandatoryNote(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
