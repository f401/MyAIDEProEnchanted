.class public Lorg/apache/tools/ant/types/FilterSet;
.super Lorg/apache/tools/ant/types/DataType;
.source "FilterSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/FilterSet$Filter;,
        Lorg/apache/tools/ant/types/FilterSet$FiltersFile;,
        Lorg/apache/tools/ant/types/FilterSet$OnMissing;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOKEN_END:Ljava/lang/String; = "@"

.field public static final DEFAULT_TOKEN_START:Ljava/lang/String; = "@"


# instance fields
.field private duplicateToken:Z

.field private endOfToken:Ljava/lang/String;

.field private filterHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterSet$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private filtersFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private onMissingFiltersFile:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private passedTokens:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readingFiles:Z

.field private recurse:Z

.field private recurseDepth:I

.field private startOfToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 172
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->startOfToken:Ljava/lang/String;

    .line 173
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->endOfToken:Ljava/lang/String;

    .line 178
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurse:Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;

    .line 182
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filtersFiles:Ljava/util/Vector;

    .line 183
    sget-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->FAIL:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->onMissingFiltersFile:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 184
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/FilterSet;->readingFiles:Z

    .line 186
    iput v1, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    .line 191
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filters:Ljava/util/Vector;

    .line 197
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FilterSet;)V
    .registers 4

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 172
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->startOfToken:Ljava/lang/String;

    .line 173
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->endOfToken:Ljava/lang/String;

    .line 178
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurse:Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;

    .line 182
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filtersFiles:Ljava/util/Vector;

    .line 183
    sget-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->FAIL:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->onMissingFiltersFile:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 184
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/FilterSet;->readingFiles:Z

    .line 186
    iput v1, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    .line 191
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filters:Ljava/util/Vector;

    .line 207
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 208
    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filters:Ljava/util/Vector;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/FilterSet;)Ljava/util/Vector;
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filtersFiles:Ljava/util/Vector;

    return-object v0
.end method

.method private handleMissingFile(Ljava/lang/String;)V
    .registers 4

    .line 616
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->onMissingFiltersFile:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->getIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 625
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid value for onMissingFiltersFile"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/FilterSet;->log(Ljava/lang/String;I)V

    .line 623
    :pswitch_1
    return-void

    .line 620
    :pswitch_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private iReplaceTokens(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const/4 v9, -0x1

    monitor-enter p0

    .line 516
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getBeginToken()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getEndToken()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 520
    if-le v0, v9, :cond_4

    .line 521
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getFilterHash()Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 523
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 526
    :goto_0
    if-le v1, v9, :cond_0

    .line 528
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 530
    if-ne v0, v9, :cond_1

    .line 559
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    monitor-exit p0

    .line 565
    :goto_1
    return-object p1

    .line 533
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 535
    invoke-virtual {v6, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/FilterSet;->recurse:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 540
    invoke-direct {p0, v0, v7}, Lorg/apache/tools/ant/types/FilterSet;->replaceTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Replacing: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-virtual {p0, v2, v8}, Lorg/apache/tools/ant/types/FilterSet;->log(Ljava/lang/String;I)V

    .line 544
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 546
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 547
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    .line 556
    :goto_2
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v2, v0

    .line 557
    goto :goto_0

    .line 553
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 554
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 561
    :catch_0
    move-exception v0

    .line 562
    monitor-exit p0

    goto :goto_1

    .line 565
    :cond_4
    monitor-exit p0

    goto :goto_1

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private replaceTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    monitor-enter p0

    .line 578
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getBeginToken()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getEndToken()Ljava/lang/String;

    move-result-object v2

    .line 580
    iget v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    .line 583
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    .line 584
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z

    if-nez v0, :cond_1

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z

    .line 586
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Infinite loop in tokens. Currently known tokens : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    .line 588
    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nProblem token : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " called from "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    .line 590
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    iget v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    .line 612
    :goto_0
    return-object p2

    .line 594
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 595
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FilterSet;->iReplaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 596
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    if-ne v0, v3, :cond_3

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    .line 611
    :cond_2
    :goto_1
    iget v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurseDepth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    monitor-exit p0

    goto :goto_0

    .line 598
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z

    if-eqz v0, :cond_4

    .line 600
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 602
    iget-object v3, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->duplicateToken:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 607
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 609
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->passedTokens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    move-object p2, v0

    goto :goto_1
.end method


# virtual methods
.method public addConfiguredFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    .registers 4

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterSet$Filter;

    .line 437
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    :cond_0
    monitor-exit p0

    return-void

    .line 434
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public addConfiguredPropertySet(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 6

    monitor-enter p0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 453
    new-instance v2, Lorg/apache/tools/ant/types/FilterSet$Filter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/types/FilterSet$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 456
    :cond_0
    monitor-exit p0

    return-void

    .line 448
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$Filter;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/types/FilterSet$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 422
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V
    .registers 3

    monitor-enter p0

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 396
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getRef()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 485
    :goto_0
    return-object v0

    .line 480
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterSet;

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 483
    iput-object v1, v0, Lorg/apache/tools/ant/types/FilterSet;->filters:Ljava/util/Vector;

    .line 484
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterSet;->setProject(Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    monitor-exit p0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createFiltersfile()Lorg/apache/tools/ant/types/FilterSet$FiltersFile;
    .registers 2

    .line 408
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$FiltersFile;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/FilterSet$FiltersFile;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public getBeginToken()Ljava/lang/String;
    .registers 2

    .line 294
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getRef()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->getBeginToken()Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->startOfToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndToken()Ljava/lang/String;
    .registers 2

    .line 321
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getRef()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->getEndToken()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->endOfToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilterHash()Ljava/util/Hashtable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getRef()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->getFilterHash()Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 256
    :goto_0
    return-object v0

    .line 251
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->dieOnCircularReference()V

    .line 252
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;

    .line 254
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getFilters()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterSet$Filter;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getRef()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 230
    :goto_0
    return-object v0

    .line 220
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->dieOnCircularReference()V

    .line 222
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->readingFiles:Z

    if-nez v0, :cond_2

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->readingFiles:Z

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filtersFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->readFiltersFromFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filtersFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->readingFiles:Z

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filters:Ljava/util/Vector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0
.end method

.method public getOnMissingFiltersFile()Lorg/apache/tools/ant/types/FilterSet$OnMissing;
    .registers 2

    .line 504
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->onMissingFiltersFile:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/FilterSet;
    .registers 2

    .line 239
    const-class v0, Lorg/apache/tools/ant/types/FilterSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterSet;

    return-object v0
.end method

.method public hasFilters()Z
    .registers 2

    monitor-enter p0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRecurse()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/FilterSet;->recurse:Z

    return v0
.end method

.method public synthetic lambda$getFilterHash$0$FilterSet(Lorg/apache/tools/ant/types/FilterSet$Filter;)V
    .registers 5

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FilterSet$Filter;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FilterSet$Filter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$readFiltersFromFile$1$FilterSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 363
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$Filter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/types/FilterSet$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V

    return-void
.end method

.method public readFiltersFromFile(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_4

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read filters from file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as it doesn\'t exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->handleMissingFile(Ljava/lang/String;)V

    .line 358
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading filters from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/FilterSet;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 361
    :try_start_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 363
    new-instance v2, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/types/FilterSet$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 372
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filterHash:Ljava/util/Hashtable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 373
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_1
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :try_start_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read filters from file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 350
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 369
    :cond_3
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must specify a file rather than a directory in the filtersfile attribute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/FilterSet;->handleMissingFile(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 360
    :catchall_2
    move-exception v1

    goto :goto_1
.end method

.method public replaceTokens(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 386
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FilterSet;->iReplaceTokens(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBeginToken(Ljava/lang/String;)V
    .registers 4

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet;->startOfToken:Ljava/lang/String;

    .line 286
    return-void

    .line 283
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "beginToken must not be empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setEndToken(Ljava/lang/String;)V
    .registers 4

    .line 306
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet;->endOfToken:Ljava/lang/String;

    .line 313
    return-void

    .line 310
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "endToken must not be empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setFiltersfile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet;->filtersFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 271
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setOnMissingFiltersFile(Lorg/apache/tools/ant/types/FilterSet$OnMissing;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet;->onMissingFiltersFile:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 497
    return-void
.end method

.method public setRecurse(Z)V
    .registers 2

    .line 332
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/FilterSet;->recurse:Z

    .line 333
    return-void
.end method
