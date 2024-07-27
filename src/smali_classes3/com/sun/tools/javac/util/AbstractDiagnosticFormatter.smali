.class public abstract Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;
.super Ljava/lang/Object;
.source "AbstractDiagnosticFormatter.java"

# interfaces
.implements Lcom/sun/tools/javac/api/DiagnosticFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/api/DiagnosticFormatter",
        "<",
        "Lcom/sun/tools/javac/util/JCDiagnostic;",
        ">;"
    }
.end annotation


# instance fields
.field private allCaptured:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

.field protected depth:I

.field protected messages:Lcom/sun/tools/javac/util/JavacMessages;

.field protected printer:Lcom/sun/tools/javac/code/Printer;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/JavacMessages;Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    .line 89
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lcom/sun/tools/javac/util/List;

    .line 492
    new-instance v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$1;-><init>(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lcom/sun/tools/javac/code/Printer;

    .line 96
    iput-object p1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 97
    iput-object p2, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)Lcom/sun/tools/javac/util/List;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lcom/sun/tools/javac/util/List;

    return-object p1
.end method

.method private getPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;)J
    .registers 5

    .line 125
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    invoke-virtual {p2}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown diagnostic position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getColumnNumber()J

    move-result-wide v0

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getLineNumber()J

    move-result-wide v0

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntEndPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntStartPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method


# virtual methods
.method public displaySource(Lcom/sun/tools/javac/util/JCDiagnostic;)Z
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    if-eq v0, v1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic displaySource(Ljavax/tools/Diagnostic;)Z
    .registers 3

    .line 66
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->displaySource(Lcom/sun/tools/javac/util/JCDiagnostic;)Z

    move-result v0

    return v0
.end method

.method public format(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 113
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lcom/sun/tools/javac/util/List;

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 66
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->format(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected formatArgument(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 172
    instance-of v0, p2, Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    .line 176
    :try_start_0
    check-cast p2, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 179
    iget v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    .line 199
    :goto_0
    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    .line 180
    throw v0

    .line 183
    :cond_0
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    .line 184
    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatIterable(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Iterable;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    instance-of v0, p2, Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lcom/sun/tools/javac/code/Printer;

    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p2, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_2
    instance-of v0, p2, Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lcom/sun/tools/javac/code/Printer;

    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p2, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_3
    instance-of v0, p2, Ljavax/tools/JavaFileObject;

    if-eqz v0, :cond_4

    .line 193
    check-cast p2, Ljavax/tools/JavaFileObject;

    invoke-interface {p2}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_4
    instance-of v0, p2, Lcom/sun/tools/javac/api/Formattable;

    if-eqz v0, :cond_5

    .line 196
    check-cast p2, Lcom/sun/tools/javac/api/Formattable;

    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-interface {p2, p3, v0}, Lcom/sun/tools/javac/api/Formattable;->toString(Ljava/util/Locale;Lcom/sun/tools/javac/api/Messages;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected formatArguments(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 158
    invoke-virtual {p0, p1, v4, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatArgument(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract formatDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method protected formatIterable(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Iterable;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    const-string v0, ""

    .line 214
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0, p1, v3, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatArgument(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, ","

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatKind(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    .line 101
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 105
    const-string v0, "compiler.err.error"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown diagnostic type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 104
    :cond_1
    const-string v0, "compiler.warn.warning"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "compiler.note.note"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public bridge synthetic formatKind(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 66
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatKind(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected formatLintCategory(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 290
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getLintCategory()Lcom/sun/tools/javac/code/Lint$LintCategory;

    move-result-object v0

    .line 291
    if-nez v0, :cond_0

    .line 292
    const-string v0, ""

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "compiler.warn.lintOption"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {p0, p2, v1, v2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    .line 120
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->getPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic formatPosition(Ljavax/tools/Diagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 66
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatSource(Lcom/sun/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 137
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_2

    .line 140
    if-eqz p2, :cond_0

    .line 141
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    instance-of v1, v0, Lcom/sun/tools/javac/file/BaseFileObject;

    if-eqz v1, :cond_1

    .line 143
    check-cast v0, Lcom/sun/tools/javac/file/BaseFileObject;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/BaseFileObject;->getShortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v0}, Lcom/sun/tools/javac/file/BaseFileObject;->getSimpleName(Ljavax/tools/FileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic formatSource(Ljavax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 66
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatSource(Lcom/sun/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected formatSourceLine(Lcom/sun/tools/javac/util/JCDiagnostic;I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getDiagnosticSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v4

    .line 271
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v5

    .line 272
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 274
    if-nez v4, :cond_0

    const/4 v1, 0x0

    move-object v2, v1

    .line 275
    :goto_0
    if-nez v2, :cond_1

    .line 276
    const-string v0, ""

    .line 286
    :goto_1
    return-object v0

    .line 274
    :cond_0
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/DiagnosticSource;->getLine(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v4, v5, v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result v4

    .line 279
    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->isCaretEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 281
    :goto_2
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_3

    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x9

    if-ne v0, v5, :cond_2

    const-string v0, "\t"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 282
    :cond_2
    const-string v0, " "

    goto :goto_3

    .line 284
    :cond_3
    const-string v0, "^"

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected formatSubdiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 262
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected formatSubdiagnostics(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    .line 230
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I

    move-result v1

    .line 232
    if-eq v1, v5, :cond_0

    iget v2, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    if-ge v2, v1, :cond_3

    .line 233
    :cond_0
    iget v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I

    move-result v3

    .line 236
    const/4 v2, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSubdiagnostics()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 238
    if-eq v3, v5, :cond_1

    if-ge v2, v3, :cond_2

    .line 239
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatSubdiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 240
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 244
    goto :goto_0

    .line 247
    :cond_2
    iget v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    move-object v0, v1

    .line 250
    :cond_3
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    .line 248
    throw v0
.end method

.method public bridge synthetic getConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->config:Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    return-object v0
.end method

.method public getPrinter()Lcom/sun/tools/javac/code/Printer;
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lcom/sun/tools/javac/code/Printer;

    return-object v0
.end method

.method protected indent(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 347
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->indentString(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    const-string v1, ""

    .line 350
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 351
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "\n"

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected indentString(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 326
    const-string v1, "                        "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 328
    const-string v1, "                        "

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 330
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    :goto_1
    if-ge v0, p1, :cond_1

    .line 332
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isRaw()Z
    .registers 2

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method protected varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPrinter(Lcom/sun/tools/javac/code/Printer;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lcom/sun/tools/javac/code/Printer;

    .line 481
    return-void
.end method
