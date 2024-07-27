.class public Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
.super Ljava/lang/Object;
.source "AbstractDiagnosticFormatter.java"

# interfaces
.implements Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleConfiguration"
.end annotation


# instance fields
.field protected caretEnabled:Z

.field protected multilineLimits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected visibleParts:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Options;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Options;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 378
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Ljava/util/Set;)V

    .line 379
    const-string v0, "showSource"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 382
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 386
    :cond_0
    :goto_0
    const-string v0, "diags"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_3

    .line 388
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 389
    const-string v1, "short"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 391
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 393
    :cond_1
    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v1, v4}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 395
    :cond_2
    const-string v1, "-source"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 398
    :cond_3
    const-string v0, "multilinePolicy"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 400
    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 401
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    .line 423
    :cond_4
    :goto_1
    const-string v0, "showCaret"

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 425
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 426
    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setCaretEnabled(Z)V

    .line 429
    :goto_2
    return-void

    .line 383
    :cond_5
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V

    goto :goto_0

    .line 402
    :cond_6
    const-string v1, "limit:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    const-string v1, "limit:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    :try_start_0
    array-length v1, v0

    if-eq v1, v4, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 408
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 409
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 412
    :cond_7
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 413
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 419
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    goto :goto_1

    .line 428
    :cond_8
    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setCaretEnabled(Z)V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    const/4 v1, -0x1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->multilineLimits:Ljava/util/Map;

    .line 370
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setVisible(Ljava/util/Set;)V

    .line 371
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 372
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->setCaretEnabled(Z)V

    .line 374
    return-void
.end method


# virtual methods
.method public getMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->multilineLimits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVisible()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVisible()Ljava/util/Set;
    .registers 2

    .line 362
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public isCaretEnabled()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->caretEnabled:Z

    return v0
.end method

.method public setCaretEnabled(Z)V
    .registers 2

    .line 462
    iput-boolean p1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->caretEnabled:Z

    .line 463
    return-void
.end method

.method public setMultilineLimit(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
    .registers 5

    const/4 v0, -0x1

    .line 440
    iget-object v1, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->multilineLimits:Ljava/util/Map;

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method

.method public setVisible(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    .line 446
    return-void
.end method

.method public setVisiblePart(Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;Z)V
    .registers 4

    .line 449
    if-eqz p2, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->visibleParts:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
