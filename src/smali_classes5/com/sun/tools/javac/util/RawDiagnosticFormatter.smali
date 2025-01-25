.class public final Lcom/sun/tools/javac/util/RawDiagnosticFormatter;
.super Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;
.source "RawDiagnosticFormatter.java"


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Options;)V
    .registers 6

    .line 57
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    .line 58
    new-instance v3, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Lcom/sun/tools/javac/util/Options;Ljava/util/Set;)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/JavacMessages;Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected formatArgument(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 120
    instance-of v0, p2, Lcom/sun/tools/javac/api/Formattable;

    if-eqz v0, :cond_23

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_8
    instance-of v1, p2, Lcom/sun/tools/javac/util/JCDiagnostic;

    if-eqz v1, :cond_22

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_22
    return-object v0

    .line 122
    :cond_23
    instance-of v0, p2, Lcom/sun/tools/javac/file/BaseFileObject;

    if-eqz v0, :cond_2f

    move-object v0, p2

    .line 123
    check-cast v0, Lcom/sun/tools/javac/file/BaseFileObject;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/BaseFileObject;->getShortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 125
    :cond_2f
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;->formatArgument(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public formatDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 66
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_61

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatSource(Lcom/sun/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatPosition(Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :goto_3c
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatMessage(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->displaySource(Lcom/sun/tools/javac/util/JCDiagnostic;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 84
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatSourceLine(Lcom/sun/tools/javac/util/JCDiagnostic;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_60
    return-object v0

    .line 75
    :cond_61
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getSource()Ljavax/tools/JavaFileObject;

    move-result-object v2

    invoke-interface {v2}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v2

    sget-object v3, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    if-ne v2, v3, :cond_84

    .line 76
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatSource(Lcom/sun/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ":-:-:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 89
    :catch_82
    move-exception v1

    goto :goto_60

    .line 80
    :cond_84
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_89} :catch_82

    goto :goto_3c
.end method

.method public formatMessage(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatArguments(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/util/Collection;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v0}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->getConfiguration()Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 100
    invoke-virtual {p0, p1, v3}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatSubdiagnostics(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 102
    const-string v0, ""

    .line 103
    const-string v1, ",{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0, p1, v3}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatSubdiagnostics(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, ","

    move-object v1, v0

    .line 110
    goto :goto_49

    .line 111
    :cond_69
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    :cond_6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 50
    check-cast p1, Lcom/sun/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/util/RawDiagnosticFormatter;->formatMessage(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRaw()Z
    .registers 2

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method protected varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ": "

    .line 137
    array-length v3, p3

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_1b

    aget-object v4, p3, v0

    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", "

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 142
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
