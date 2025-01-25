.class public Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
.super Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;
.source "RichDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;,
        Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;,
        Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter",
        "<",
        "Lcom/sun/tools/javac/util/JCDiagnostic;",
        "Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field final diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

.field final messages:Lcom/sun/tools/javac/util/JavacMessages;

.field protected nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

.field private printer:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

.field protected symbolPreprocessor:Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final syms:Lcom/sun/tools/javac/code/Symtab;

.field protected typePreprocessor:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final types:Lcom/sun/tools/javac/code/Types;

.field whereClauses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 8

    .line 105
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Log;->getDiagnosticFormatter()Lcom/sun/tools/javac/api/DiagnosticFormatter;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/ForwardingDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/api/DiagnosticFormatter;)V

    .line 468
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$1;-><init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 590
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$2;-><init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->symbolPreprocessor:Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;

    .line 106
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;-><init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->setRichPrinter(Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;)V

    .line 107
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 108
    invoke-static {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 109
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->types:Lcom/sun/tools/javac/code/Types;

    .line 110
    invoke-static {p1}, Lcom/sun/tools/javac/util/JavacMessages;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    .line 112
    new-instance v1, Lcom/sun/tools/javac/util/RichConfiguration;

    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/util/RichConfiguration;-><init>(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;)V

    iput-object v1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->configuration:Lcom/sun/tools/javac/util/ForwardingConfiguration;

    .line 113
    invoke-static {}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->values()[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_57
    if-ge v0, v2, :cond_68

    aget-object v3, v1, v0

    .line 114
    iget-object v4, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 115
    :cond_68
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->indexOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;Lcom/sun/tools/javac/code/Type$TypeVar;)Z
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->unique(Lcom/sun/tools/javac/code/Type$TypeVar;)Z

    move-result v0

    return v0
.end method

.method private indexOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I
    .registers 8

    .line 224
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 226
    iget-object v3, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v3, v4, :cond_24

    .line 234
    :goto_23
    return v1

    .line 229
    :cond_24
    sget-object v3, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    if-ne p2, v3, :cond_36

    .line 230
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 231
    :cond_36
    add-int/lit8 v0, v1, 0x1

    :goto_38
    move v1, v0

    .line 233
    goto :goto_11

    .line 234
    :cond_3a
    const/4 v1, -0x1

    goto :goto_23

    :cond_3c
    move v0, v1

    goto :goto_38
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
    .registers 2

    .line 98
    const-class v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    .line 99
    if-nez v0, :cond_f

    .line 100
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 101
    :cond_f
    return-object v0
.end method

.method private unique(Lcom/sun/tools/javac/code/Type$TypeVar;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 238
    .line 239
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 240
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$TypeVar;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 241
    add-int/lit8 v0, v1, 0x1

    :goto_31
    move v1, v0

    .line 243
    goto :goto_15

    .line 244
    :cond_33
    if-lt v1, v3, :cond_39

    .line 246
    if-ne v1, v3, :cond_38

    move v2, v3

    :cond_38
    return v2

    .line 245
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing type variable in where clause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_50
    move v0, v1

    goto :goto_31
.end method


# virtual methods
.method public format(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 9

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;-><init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    .line 121
    invoke-static {}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->values()[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object v2

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v4, :cond_26

    aget-object v0, v2, v1

    .line 122
    iget-object v5, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 123
    :cond_26
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->format(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/RichConfiguration;->isEnabled(Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 126
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getWhereClauses()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, ""

    move-object v2, v0

    .line 129
    :goto_51
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_55
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 130
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->format(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_55

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 128
    :cond_88
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->indentString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_51

    .line 136
    :cond_93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 77
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->format(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/sun/tools/javac/util/RichConfiguration;
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->configuration:Lcom/sun/tools/javac/util/ForwardingConfiguration;

    check-cast v0, Lcom/sun/tools/javac/util/RichConfiguration;

    return-object v0
.end method

.method protected getRichPrinter()Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->printer:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

    return-object v0
.end method

.method protected getWhereClauses()Lcom/sun/tools/javac/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 205
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 206
    invoke-static {}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->values()[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_c
    if-ge v4, v7, :cond_84

    aget-object v8, v6, v4

    .line 207
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 210
    goto :goto_24

    .line 211
    :cond_3a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 212
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->key()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    if-le v2, v11, :cond_89

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 215
    :goto_5c
    iget-object v9, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    new-array v10, v11, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    aput-object v0, v10, v5

    invoke-virtual {v9, v2, v10}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 216
    new-instance v2, Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$MultilineDiagnostic;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/util/List;)V

    .line 217
    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 206
    :goto_7f
    add-int/lit8 v1, v4, 0x1

    move-object v3, v0

    move v4, v1

    goto :goto_c

    .line 220
    :cond_84
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_89
    move-object v2, v0

    goto :goto_5c

    :cond_8b
    move-object v0, v3

    goto :goto_7f
.end method

.method protected preprocessArgument(Ljava/lang/Object;)V
    .registers 4

    .line 185
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_a

    .line 186
    check-cast p1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessType(Lcom/sun/tools/javac/code/Type;)V

    .line 196
    :cond_9
    :goto_9
    return-void

    .line 187
    :cond_a
    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_14

    .line 188
    check-cast p1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessSymbol(Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_9

    .line 189
    :cond_14
    instance-of v0, p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_1e

    .line 190
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    goto :goto_9

    .line 191
    :cond_1e
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_9

    .line 192
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 193
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessArgument(Ljava/lang/Object;)V

    goto :goto_28
.end method

.method protected preprocessDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 6

    .line 167
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    .line 168
    if-eqz v3, :cond_f

    .line 169
    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessArgument(Ljava/lang/Object;)V

    .line 167
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 172
    :cond_12
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 173
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSubdiagnostics()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 174
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;)V

    goto :goto_20

    .line 176
    :cond_30
    return-void
.end method

.method protected preprocessSymbol(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 586
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->symbolPreprocessor:Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method protected preprocessType(Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    .line 465
    return-void
.end method

.method protected setRichPrinter(Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->printer:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

    .line 146
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->setPrinter(Lcom/sun/tools/javac/code/Printer;)V

    .line 147
    return-void
.end method
