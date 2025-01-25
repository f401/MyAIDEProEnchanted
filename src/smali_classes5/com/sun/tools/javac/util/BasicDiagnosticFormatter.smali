.class public Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;
.super Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;
.source "BasicDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;,
        Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;,
        Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/JavacMessages;)V
    .registers 3

    .line 85
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/JavacMessages;Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Options;Lcom/sun/tools/javac/util/JavacMessages;)V
    .registers 4

    .line 76
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;-><init>(Lcom/sun/tools/javac/util/Options;)V

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/JavacMessages;Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V

    .line 77
    return-void
.end method

.method private selectFormat(Lcom/sun/tools/javac/util/JCDiagnostic;)Ljava/lang/String;
    .registers 6

    .line 197
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getDiagnosticSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v1

    .line 198
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_NO_POS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v1, :cond_25

    sget-object v2, Lcom/sun/tools/javac/util/DiagnosticSource;->NO_SOURCE:Lcom/sun/tools/javac/util/DiagnosticSource;

    if-eq v1, v2, :cond_25

    .line 200
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 201
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_POS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_25
    :goto_25
    return-object v0

    .line 202
    :cond_26
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 203
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/DiagnosticSource;->getFile()Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v1

    sget-object v2, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    if-ne v1, v2, :cond_25

    .line 204
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_CLASS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method


# virtual methods
.method protected addSourceLineIfNeeded(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 134
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->displaySource(Lcom/sun/tools/javac/util/JCDiagnostic;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    :goto_6
    return-object p2

    .line 137
    :cond_7
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatSourceLine(Lcom/sun/tools/javac/util/JCDiagnostic;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4e

    const/4 v0, 0x1

    .line 141
    :goto_30
    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getSourcePosition()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->BOTTOM:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    if-ne v0, v2, :cond_50

    .line 142
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 140
    :cond_4e
    const/4 v0, 0x0

    goto :goto_30

    .line 144
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method

.method public formatDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    .line 89
    if-nez p2, :cond_9

    .line 90
    iget-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p2

    .line 91
    :cond_9
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->selectFormat(Lcom/sun/tools/javac/util/JCDiagnostic;)Ljava/lang/String;

    move-result-object v5

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 93
    :goto_13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 96
    const/16 v2, 0x25

    if-ne v4, v2, :cond_54

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_54

    .line 97
    const/4 v3, 0x1

    .line 98
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v0

    .line 100
    :goto_31
    if-eqz v3, :cond_3d

    invoke-virtual {p0, v4, p1, p2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatMeta(CLcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v2, 0x1

    goto :goto_13

    .line 100
    :cond_3d
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 102
    :cond_42
    iget v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->depth:I

    if-nez v0, :cond_4f

    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->addSourceLineIfNeeded(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_4e
    return-object v0

    :cond_4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_54
    move v2, v0

    move v3, v1

    goto :goto_31
.end method

.method public formatMessage(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatArguments(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/util/Collection;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v4, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v5, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 115
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    sget-object v5, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 116
    aget-object v1, v4, v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_42
    array-length v1, v4

    if-le v1, v2, :cond_81

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v5, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 119
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v1

    sget-object v5, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v1, v5}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v1

    add-int/2addr v1, v0

    move v0, v2

    .line 120
    :goto_61
    array-length v2, v4

    if-ge v0, v2, :cond_82

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v0

    invoke-virtual {p0, v5, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_81
    move v1, v0

    .line 124
    :cond_82
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 125
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v2

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatSubdiagnostics(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_aa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v1, v2

    invoke-virtual {p0, v0, v6}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 130
    :cond_d1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d6
    move v0, v1

    goto/16 :goto_42
.end method

.method public bridge synthetic formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 67
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatMessage(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected formatMeta(CLcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 149
    const/16 v2, 0x25

    if-eq p1, v2, :cond_a0

    const/16 v2, 0x4c

    if-eq p1, v2, :cond_9b

    const/16 v2, 0x5f

    if-eq p1, v2, :cond_98

    const/16 v2, 0x62

    if-eq p1, v2, :cond_93

    const/16 v2, 0x63

    if-eq p1, v2, :cond_8c

    const/16 v2, 0x65

    if-eq p1, v2, :cond_85

    const/16 v2, 0x66

    if-eq p1, v2, :cond_80

    const/16 v2, 0x6c

    if-eq p1, v2, :cond_79

    const/16 v2, 0x6d

    if-eq p1, v2, :cond_74

    const/16 v2, 0x6f

    if-eq p1, v2, :cond_6d

    const/16 v2, 0x70

    if-eq p1, v2, :cond_68

    const/16 v2, 0x73

    if-eq p1, v2, :cond_61

    const/16 v2, 0x74

    if-eq p1, v2, :cond_3b

    .line 192
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    return-object v0

    .line 168
    :cond_3b
    sget-object v2, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/JCDiagnostic;->getType()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_5c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_53

    .line 171
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_5e

    .line 179
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatKind(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 173
    :cond_53
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4c

    move v0, v1

    goto :goto_4c

    :cond_5c
    move v0, v1

    .line 170
    goto :goto_4c

    .line 181
    :cond_5e
    const-string v0, ""

    goto :goto_3a

    .line 165
    :cond_61
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->START:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 163
    :cond_68
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatKind(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 161
    :cond_6d
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->OFFSET:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 184
    :cond_74
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatMessage(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 157
    :cond_79
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 155
    :cond_80
    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatSource(Lcom/sun/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 153
    :cond_85
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->END:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 159
    :cond_8c
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 151
    :cond_93
    invoke-virtual {p0, p2, v1, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatSource(Lcom/sun/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 188
    :cond_98
    const-string v0, " "

    goto :goto_3a

    .line 186
    :cond_9b
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->formatLintCategory(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 190
    :cond_a0
    const-string v0, "%"

    goto :goto_3a
.end method

.method public bridge synthetic getConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;
    .registers 2

    .line 213
    invoke-super {p0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    return-object v0
.end method
