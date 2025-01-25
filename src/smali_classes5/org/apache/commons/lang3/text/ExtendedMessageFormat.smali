.class public Lorg/apache/commons/lang3/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "ExtendedMessageFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private toPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 128
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 130
    iput-object p3, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 9

    const/16 v4, 0x27

    .line 478
    if-eqz p3, :cond_7

    .line 483
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_7
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 487
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 489
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3a

    .line 491
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aget-char v3, v2, v3

    if-ne v3, v4, :cond_34

    .line 492
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 493
    if-nez p3, :cond_2b

    const/4 p3, 0x0

    :goto_2a
    return-object p3

    .line 494
    :cond_2b
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 493
    sub-int/2addr v0, v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 496
    :cond_34
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 498
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated quoted string at position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 518
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 526
    :cond_9
    :goto_9
    return v0

    .line 521
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    if-eqz v2, :cond_e

    .line 523
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .registers 6

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-eqz v0, :cond_34

    .line 308
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 309
    if-lez v0, :cond_35

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 311
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object p1, v3

    .line 313
    :goto_22
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/FormatFactory;

    .line 314
    if-eqz v0, :cond_34

    .line 315
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/commons/lang3/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v2

    .line 318
    :cond_34
    return-object v2

    :cond_35
    move-object v1, v2

    goto :goto_22
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 4

    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 510
    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 438
    :goto_7
    return-object p1

    .line 408
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 410
    const/4 v0, -0x1

    .line 412
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_65

    .line 413
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 414
    sparse-switch v2, :sswitch_data_6a

    .line 434
    :goto_2e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-direct {p0, v4}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_19

    .line 431
    :sswitch_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 419
    :sswitch_38
    add-int/lit8 v1, v1, 0x1

    .line 420
    const/16 v2, 0x7b

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 423
    add-int/lit8 v2, v0, 0x1

    .line 424
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    if-eqz v0, :cond_5f

    .line 426
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    move v0, v2

    .line 428
    goto :goto_19

    .line 416
    :sswitch_61
    invoke-direct {p0, p1, v4, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 438
    :cond_65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 414
    :sswitch_data_6a
    .sparse-switch
        0x27 -> :sswitch_61
        0x7b -> :sswitch_38
        0x7d -> :sswitch_35
    .end sparse-switch
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .registers 3

    .line 463
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 464
    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 8

    .line 371
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 372
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 373
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 374
    const/4 v0, 0x1

    .line 375
    :goto_c
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 376
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_50

    .line 388
    :cond_21
    :goto_21
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_c

    .line 381
    :sswitch_25
    add-int/lit8 v0, v0, -0x1

    .line 382
    if-nez v0, :cond_21

    .line 383
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :sswitch_32
    add-int/lit8 v0, v0, 0x1

    .line 379
    goto :goto_21

    .line 387
    :sswitch_35
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V

    goto :goto_21

    .line 393
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated format element at position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :sswitch_data_50
    .sparse-switch
        0x27 -> :sswitch_35
        0x7b -> :sswitch_32
        0x7d -> :sswitch_25
    .end sparse-switch
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .registers 10

    const/16 v6, 0x7d

    const/16 v5, 0x2c

    .line 329
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 330
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    const/4 v0, 0x0

    .line 333
    :goto_11
    if-nez v0, :cond_5e

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5e

    .line 334
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 336
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 337
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 338
    if-eq v0, v5, :cond_3f

    if-eq v0, v6, :cond_3f

    .line 339
    const/4 v0, 0x1

    .line 333
    :goto_3b
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_11

    :cond_3f
    move v1, v0

    .line 343
    if-eq v1, v5, :cond_44

    if-ne v1, v6, :cond_54

    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_54

    .line 345
    :try_start_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_51} :catch_53

    move-result v0

    return v0

    .line 346
    :catch_53
    move-exception v0

    .line 351
    :cond_54
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 352
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 354
    :cond_5e
    if-eqz v0, :cond_87

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid format argument index at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unterminated format element at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 6

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 451
    :cond_4
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v1

    .line 452
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 453
    if-lez v1, :cond_24

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 454
    :cond_24
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .registers 15

    const/16 v12, 0x2c

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 150
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 212
    :cond_12
    :goto_12
    return-void

    .line 154
    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    new-instance v9, Ljava/text/ParsePosition;

    invoke-direct {v9, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move v0, v1

    .line 161
    :goto_30
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_d1

    .line 162
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aget-char v3, v10, v3

    sparse-switch v3, :sswitch_data_10c

    .line 193
    :goto_43
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aget-char v3, v10, v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p0, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_30

    .line 167
    :sswitch_50
    add-int/lit8 v5, v0, 0x1

    .line 168
    invoke-direct {p0, p1, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 169
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    .line 170
    invoke-direct {p0, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v0

    .line 171
    const/16 v3, 0x7b

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p0, p1, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 175
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    aget-char v0, v10, v0

    if-ne v0, v12, :cond_108

    .line 176
    invoke-direct {p0, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v0

    .line 179
    if-nez v0, :cond_88

    .line 180
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_88
    :goto_88
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    if-nez v0, :cond_8e

    move-object v3, v2

    :cond_8e
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_b1

    move v0, v4

    :goto_98
    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->isTrue(Z)V

    .line 186
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_b3

    move v0, v4

    :goto_a2
    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->isTrue(Z)V

    .line 187
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    aget-char v0, v10, v0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_b5

    move v0, v5

    goto :goto_43

    :cond_b1
    move v0, v1

    .line 185
    goto :goto_98

    :cond_b3
    move v0, v1

    .line 186
    goto :goto_a2

    .line 188
    :cond_b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unreadable format element at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :sswitch_cc
    invoke-direct {p0, p1, v9, v8}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_30

    .line 197
    :cond_d1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 198
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 199
    invoke-direct {p0, v6}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v2

    .line 204
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .line 206
    if-eqz v0, :cond_100

    .line 207
    aput-object v0, v2, v1

    .line 204
    :cond_100
    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    .line 210
    :cond_103
    invoke-super {p0, v2}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    goto/16 :goto_12

    :cond_108
    move-object v0, v2

    move-object v3, v2

    goto/16 :goto_88

    .line 162
    :sswitch_data_10c
    .sparse-switch
        0x27 -> :sswitch_cc
        0x7b -> :sswitch_50
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 268
    if-ne p1, p0, :cond_5

    .line 269
    const/4 v0, 0x1

    .line 284
    :cond_4
    :goto_4
    return v0

    .line 271
    :cond_5
    if-eqz p1, :cond_4

    .line 274
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 280
    check-cast p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;

    .line 281
    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 284
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object v1, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .line 292
    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    .line 293
    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v1

    .line 294
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v2

    .line 295
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 4

    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 4

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 3

    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
