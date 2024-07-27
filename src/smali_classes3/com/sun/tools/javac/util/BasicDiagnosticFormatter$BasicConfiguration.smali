.class public Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;
.super Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
.source "BasicDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;,
        Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    }
.end annotation


# instance fields
.field protected availableFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected indentationLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected sourcePosition:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 274
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v3, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Ljava/util/Set;)V

    .line 278
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormat()V

    .line 279
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initIndentation()V

    .line 280
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Options;)V
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 224
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v3, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Lcom/sun/tools/javac/util/Options;Ljava/util/Set;)V

    .line 228
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormat()V

    .line 229
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initIndentation()V

    .line 230
    const-string v0, "oldDiags"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initOldFormat()V

    .line 232
    :cond_0
    const-string v0, "diagsFormat"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1

    .line 234
    const-string v1, "OLD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initOldFormat()V

    .line 239
    :cond_1
    :goto_0
    const-string v0, "sourcePosition"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 241
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    sget-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->BOTTOM:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setSourcePosition(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;)V

    .line 245
    :goto_1
    const-string v0, "diagsIndentation"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_2

    .line 247
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 249
    :try_start_0
    array-length v1, v0

    if-eq v1, v4, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 263
    :goto_2
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 264
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 263
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :cond_2
    :goto_3
    return-void

    .line 237
    :cond_3
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormats(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_4
    sget-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->AFTER_SUMMARY:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setSourcePosition(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;)V

    goto :goto_1

    .line 251
    :cond_5
    :try_start_2
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->JLS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    aget-object v2, v0, v6

    .line 252
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 251
    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 254
    :cond_6
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    aget-object v2, v0, v5

    .line 255
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 254
    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 257
    :cond_7
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    aget-object v2, v0, v4

    .line 258
    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 257
    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 260
    :cond_8
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 261
    :try_start_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 260
    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initIndentation()V

    goto :goto_3
.end method

.method private initFormat()V
    .registers 4

    .line 283
    const-string v0, "%f:%l:%_%p%L%m"

    const-string v1, "%p%L%m"

    const-string v2, "%f:%_%p%L%m"

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private initFormats(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x2

    .line 299
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 300
    array-length v1, v0

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 306
    :goto_0
    sget-object v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_POS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 308
    return-void

    .line 302
    :cond_0
    sget-object v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_CLASS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    aget-object v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 304
    :cond_1
    sget-object v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_NO_POS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFormats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 291
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->availableFormats:Ljava/util/Map;

    .line 292
    sget-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_POS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_NO_POS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_CLASS_FORMAT:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private initIndentation()V
    .registers 4

    const/4 v2, 0x0

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->indentationLevels:Ljava/util/Map;

    .line 312
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 313
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 314
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 315
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 316
    return-void
.end method

.method private initOldFormat()V
    .registers 4

    .line 287
    const-string v0, "%f:%l:%_%t%L%m"

    const-string v1, "%p%L%m"

    const-string v2, "%f:%_%t%L%m"

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method public getFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->availableFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->indentationLevels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSourcePosition()Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->sourcePosition:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    return-object v0
.end method

.method public setFormat(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->availableFormats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method public setIndentation(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->indentationLevels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public setSourcePosition(Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->sourcePosition:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    .line 346
    return-void
.end method
