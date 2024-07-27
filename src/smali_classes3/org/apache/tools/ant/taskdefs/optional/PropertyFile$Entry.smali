.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
.super Ljava/lang/Object;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;,
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_DATE_VALUE:Ljava/lang/String; = "now"

.field private static final DEFAULT_INT_VALUE:I = 0x0

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private field:I

.field private key:Ljava/lang/String;

.field private newValue:Ljava/lang/String;

.field private operation:I

.field private pattern:Ljava/lang/String;

.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    .line 282
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    .line 283
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    .line 284
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    .line 288
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    return-void
.end method

.method private checkParameters()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 525
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    if-ne v0, v5, :cond_0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    if-eq v1, v3, :cond_3

    .line 530
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 535
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 538
    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 543
    :cond_2
    return-void

    .line 527
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- is not supported for string properties (key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\"value\" and/or \"default\" attribute must be specified (key: %s)"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 539
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "pattern is not supported for string properties (key: %s)"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 536
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "key is mandatory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeDate(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 411
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 413
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 414
    const-string v0, "yyyy/MM/dd HH:mm"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    .line 416
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    if-nez v0, :cond_1

    .line 420
    const-string v0, "now"

    .line 423
    :cond_1
    const-string v3, "now"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 424
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 433
    :goto_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 434
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 437
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 438
    mul-int/lit8 v0, v0, -0x1

    .line 442
    :cond_2
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 446
    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 447
    return-void

    .line 427
    :cond_4
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value not an integer on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private executeInteger(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 457
    .line 460
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 463
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {v4, v0}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 473
    :goto_1
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 492
    :goto_2
    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 493
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    move-object v4, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 467
    goto :goto_1

    .line 469
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 477
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 479
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 485
    :goto_3
    iget v5, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    if-nez v5, :cond_3

    .line 486
    add-int/2addr v0, v2

    goto :goto_2

    .line 480
    :catch_2
    move-exception v2

    move v2, v3

    goto :goto_3

    :catch_3
    move-exception v2

    move v2, v3

    goto :goto_3

    .line 487
    :cond_3
    if-ne v5, v3, :cond_4

    .line 488
    sub-int/2addr v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method private executeString(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 503
    const-string v1, ""

    .line 505
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    if-nez v0, :cond_0

    .line 508
    const-string v0, ""

    .line 511
    :cond_0
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 516
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 517
    return-void

    .line 513
    :cond_1
    if-nez v2, :cond_2

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getCurrentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 546
    const/4 v0, 0x0

    .line 547
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 550
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 551
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 556
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move-object v0, p1

    .line 562
    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 563
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 569
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 570
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 576
    :cond_3
    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    .line 577
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 583
    :cond_4
    :goto_0
    return-object p1

    .line 580
    :cond_5
    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected executeOn(Ljava/util/Properties;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 370
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->checkParameters()V

    .line 372
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    :try_start_0
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    if-nez v1, :cond_2

    .line 381
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeInteger(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 400
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    :cond_2
    if-ne v1, v2, :cond_3

    .line 383
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 384
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 385
    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeString(Ljava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unknown operation type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setDefault(Ljava/lang/String;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setOperation(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;)V
    .registers 3

    .line 313
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;->toOperation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    .line 314
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;)V
    .registers 3

    .line 321
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;->toType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    .line 322
    return-void
.end method

.method public setUnit(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;)V
    .registers 3

    .line 361
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->getCalendarField()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    .line 362
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 304
    return-void
.end method
