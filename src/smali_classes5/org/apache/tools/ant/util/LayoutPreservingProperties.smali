.class public Lorg/apache/tools/ant/util/LayoutPreservingProperties;
.super Ljava/util/Properties;
.source "LayoutPreservingProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;,
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;,
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;,
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private eol:Ljava/lang/String;

.field private keyedPairLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private logicalLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;",
            ">;"
        }
    .end annotation
.end field

.field private removeComments:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 86
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    .line 119
    return-void
.end method

.method private escape(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    const/16 v9, 0x20

    const/4 v1, 0x0

    .line 538
    if-nez p1, :cond_7

    .line 539
    const/4 v0, 0x0

    .line 565
    :goto_6
    return-object v0

    .line 542
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 547
    const/4 v0, 0x1

    .line 548
    array-length v5, v3

    move v2, v1

    :goto_20
    if-ge v2, v5, :cond_5b

    aget-char v6, v3, v2

    .line 549
    if-ne v6, v9, :cond_47

    .line 550
    if-nez p2, :cond_2a

    if-eqz v0, :cond_2f

    .line 551
    :cond_2a
    const-string v7, "\\"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_2f
    :goto_2f
    const-string v7, "\t\f\r\n\\:=#!"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 557
    const/4 v8, -0x1

    if-eq v7, v8, :cond_49

    .line 558
    const-string v6, "\\"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "tfrn\\:=#!"

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 548
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_47
    move v0, v1

    .line 554
    goto :goto_2f

    .line 559
    :cond_49
    if-lt v6, v9, :cond_4f

    const/16 v7, 0x7e

    if-le v6, v7, :cond_57

    .line 560
    :cond_4f
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escapeUnicode(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 562
    :cond_57
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 565
    :cond_5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private escapeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 524
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private escapeUnicode(C)Ljava/lang/String;
    .registers 4

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/tools/ant/util/UnicodeUtil;->EscapeUnicode(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private escapeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private innerSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 180
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escapeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 184
    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    .line 185
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setValue(Ljava/lang/String;)V

    .line 193
    :goto_23
    return-void

    .line 187
    :cond_24
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escapeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setNew(Z)V

    .line 190
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method private readFirstLine(Ljava/io/PushbackReader;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xa

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v1

    .line 391
    const/4 v0, 0x0

    .line 394
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    .line 396
    :goto_14
    if-ltz v1, :cond_1d

    .line 397
    if-eqz v0, :cond_22

    if-eq v1, v4, :cond_22

    .line 399
    invoke-virtual {p1, v1}, Ljava/io/PushbackReader;->unread(I)V

    .line 414
    :cond_1d
    :goto_1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_22
    const/16 v3, 0xd

    if-ne v1, v3, :cond_30

    .line 404
    const-string v0, "\r"

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    .line 405
    const/4 v0, 0x1

    .line 412
    :goto_2b
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v1

    goto :goto_14

    .line 406
    :cond_30
    if-ne v1, v4, :cond_3c

    .line 407
    if-eqz v0, :cond_39

    const-string v0, "\r\n"

    :goto_36
    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    goto :goto_1d

    :cond_39
    const-string v0, "\n"

    goto :goto_36

    .line 410
    :cond_3c
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b
.end method

.method private readLines(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 319
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 320
    new-instance v1, Ljava/io/PushbackReader;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 324
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    new-instance v2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_20
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->readFirstLine(Ljava/io/PushbackReader;)Ljava/lang/String;

    move-result-object v4

    .line 328
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v5

    move v1, v5

    .line 334
    :goto_35
    if-eqz v4, :cond_c5

    .line 335
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    if-eqz v0, :cond_7a

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    move-object v4, v2

    .line 347
    :goto_54
    if-nez v3, :cond_ca

    .line 348
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->requiresContinuation(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    .line 351
    :goto_5b
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    if-nez v2, :cond_73

    .line 355
    if-eqz v3, :cond_82

    .line 356
    new-instance v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;-><init>(Lorg/apache/tools/ant/util/LayoutPreservingProperties;Ljava/lang/String;)V

    .line 369
    :goto_6b
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    :cond_73
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move v0, v2

    move v1, v3

    goto :goto_35

    .line 342
    :cond_7a
    const-string v1, "^[ \t\f]*[#!].*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    move v3, v1

    goto :goto_54

    .line 357
    :cond_82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 358
    new-instance v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;-><init>()V

    goto :goto_6b

    .line 360
    :cond_96
    new-instance v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 361
    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 365
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_b5
    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    iget-object v9, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 374
    :cond_c5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ca
    move v2, v0

    goto :goto_5b
.end method

.method private removeCommentsEndingAt(I)V
    .registers 6

    .line 592
    add-int/lit8 v1, p1, -0x1

    move v0, v1

    .line 595
    :goto_3
    if-lez v0, :cond_f

    .line 596
    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    if-nez v2, :cond_1a

    .line 603
    :cond_f
    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-nez v2, :cond_1f

    .line 618
    :cond_19
    return-void

    .line 595
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 608
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    :cond_1f
    if-ltz v0, :cond_2b

    .line 609
    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-nez v2, :cond_1d

    .line 615
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v1, :cond_19

    .line 616
    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b
.end method

.method private requiresContinuation(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 427
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 428
    :goto_8
    if-lez v1, :cond_13

    aget-char v3, v2, v1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_13

    .line 429
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 432
    :cond_13
    array-length v2, v2

    .line 433
    sub-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0xa

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v5, v1, v2

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 460
    :goto_21
    array-length v3, v1

    if-ge v0, v3, :cond_28

    .line 461
    aget-char v3, v1, v0

    .line 462
    if-ne v3, v5, :cond_2d

    .line 489
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_2d
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_71

    .line 468
    add-int/lit8 v0, v0, 0x1

    aget-char v3, v1, v0

    .line 469
    const/16 v4, 0x6e

    if-ne v3, v4, :cond_3f

    .line 470
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 471
    :cond_3f
    const/16 v4, 0x72

    if-ne v3, v4, :cond_49

    .line 472
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 473
    :cond_49
    const/16 v4, 0x66

    if-ne v3, v4, :cond_53

    .line 474
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 475
    :cond_53
    const/16 v4, 0x74

    if-ne v3, v4, :cond_5d

    .line 476
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 477
    :cond_5d
    const/16 v4, 0x75

    if-ne v3, v4, :cond_6d

    .line 479
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->unescapeUnicode([CI)C

    move-result v3

    .line 480
    add-int/lit8 v0, v0, 0x4

    .line 481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 483
    :cond_6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 486
    :cond_71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method

.method private unescapeUnicode([CI)C
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 500
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 197
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 198
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .line 217
    invoke-super {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;

    .line 219
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 222
    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v3, :cond_3d

    .line 223
    iget-object v1, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 224
    instance-of v4, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    if-eqz v4, :cond_39

    .line 225
    check-cast v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    .line 226
    iget-object v4, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_39
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e

    .line 230
    :cond_3d
    return-object v0
.end method

.method public isRemoveComments()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeComments:Z

    return v0
.end method

.method public listLines(Ljava/io/PrintStream;)V
    .registers 6

    .line 239
    const-string v0, "-- logical lines --"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 241
    instance-of v2, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    if-eqz v2, :cond_35

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blank:   \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 243
    :cond_35
    instance-of v2, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-eqz v2, :cond_53

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "comment: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 245
    :cond_53
    instance-of v2, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    if-eqz v2, :cond_b

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pair:    \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 249
    :cond_71
    return-void
.end method

.method public load(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    invoke-super {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 152
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 156
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->innerSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 204
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 206
    if-eqz v0, :cond_23

    .line 207
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeComments:Z

    if-eqz v2, :cond_19

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeCommentsEndingAt(I)V

    .line 210
    :cond_19
    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_23
    return-object v1
.end method

.method public saveAs(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 260
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 165
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->innerSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public setRemoveComments(Z)V
    .registers 2

    .line 143
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeComments:Z

    .line 144
    return-void
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 267
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 269
    if-eqz p2, :cond_f8

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 271
    if-lez v5, :cond_f8

    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 273
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    move v1, v2

    .line 281
    :goto_4d
    if-le v5, v1, :cond_f5

    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-eqz v0, :cond_f5

    .line 284
    :try_start_59
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 286
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lorg/apache/tools/ant/util/DateUtils;->parseDateFromHeader(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6d
    .catch Ljava/text/ParseException; {:try_start_59 .. :try_end_6d} :catch_d1

    .line 287
    add-int/lit8 v0, v1, 0x1

    .line 292
    :goto_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/tools/ant/util/DateUtils;->getDateForHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_96
    :goto_96
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 296
    instance-of v0, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    if-eqz v0, :cond_d4

    move-object v0, v1

    .line 297
    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->isNew()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 298
    if-nez v3, :cond_f3

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move v0, v2

    .line 303
    :goto_b7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move v3, v0

    goto :goto_96

    .line 288
    :catch_d1
    move-exception v0

    move v0, v1

    goto :goto_6f

    .line 304
    :cond_d4
    if-eqz v1, :cond_96

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_96

    .line 308
    :cond_ef
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 309
    return-void

    :cond_f3
    move v0, v3

    goto :goto_b7

    :cond_f5
    move v0, v1

    goto/16 :goto_6f

    :cond_f8
    move v1, v3

    goto/16 :goto_4d
.end method
