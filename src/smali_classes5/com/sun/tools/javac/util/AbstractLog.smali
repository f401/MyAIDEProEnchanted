.class public abstract Lcom/sun/tools/javac/util/AbstractLog;
.super Ljava/lang/Object;
.source "AbstractLog.java"


# instance fields
.field protected diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field protected source:Lcom/sun/tools/javac/util/DiagnosticSource;

.field protected sourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/tools/JavaFileObject;",
            "Lcom/sun/tools/javac/util/DiagnosticSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->sourceMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private wrap(I)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .registers 3

    .line 248
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    goto :goto_4
.end method


# virtual methods
.method public currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    return-object v0
.end method

.method protected varargs abstract directError(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs error(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/AbstractLog;->wrap(I)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->error(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 118
    return-void
.end method

.method public varargs error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/util/AbstractLog;->wrap(I)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->error(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->setFlag(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 131
    return-void
.end method

.method public varargs error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->error(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->setFlag(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 108
    return-void
.end method

.method public varargs error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->error(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 95
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->error(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 85
    return-void
.end method

.method protected getSource(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/util/DiagnosticSource;
    .registers 4

    .line 62
    if-nez p1, :cond_5

    .line 63
    sget-object v0, Lcom/sun/tools/javac/util/DiagnosticSource;->NO_SOURCE:Lcom/sun/tools/javac/util/DiagnosticSource;

    .line 69
    :cond_4
    :goto_4
    return-object v0

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->sourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/DiagnosticSource;

    .line 65
    if-nez v0, :cond_4

    .line 66
    new-instance v0, Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-direct {v0, p1, p0}, Lcom/sun/tools/javac/util/DiagnosticSource;-><init>(Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/AbstractLog;)V

    .line 67
    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->sourceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public varargs mandatoryNote(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/AbstractLog;->getSource(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->mandatoryNote(Lcom/sun/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 241
    return-void
.end method

.method public varargs mandatoryWarning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    .line 200
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->mandatoryWarning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 201
    return-void
.end method

.method public varargs mandatoryWarning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->mandatoryWarning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 191
    return-void
.end method

.method public varargs note(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 224
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/AbstractLog;->wrap(I)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->note(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 225
    return-void
.end method

.method public varargs note(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->note(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 217
    return-void
.end method

.method public varargs note(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->note(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 209
    return-void
.end method

.method public varargs note(Ljavax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 232
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/AbstractLog;->getSource(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->note(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 233
    return-void
.end method

.method protected abstract report(Lcom/sun/tools/javac/util/JCDiagnostic;)V
.end method

.method public useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 57
    :goto_5
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/AbstractLog;->getSource(Ljavax/tools/JavaFileObject;)Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    .line 58
    return-object v0

    .line 56
    :cond_c
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    goto :goto_5
.end method

.method public varargs warning(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 181
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/AbstractLog;->wrap(I)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->warning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 182
    return-void
.end method

.method public varargs warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    .line 171
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 172
    return-void
.end method

.method public varargs warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 151
    return-void
.end method

.method public varargs warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->warning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 161
    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 140
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractLog;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractLog;->source:Lcom/sun/tools/javac/util/DiagnosticSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->warning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractLog;->report(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 141
    return-void
.end method
