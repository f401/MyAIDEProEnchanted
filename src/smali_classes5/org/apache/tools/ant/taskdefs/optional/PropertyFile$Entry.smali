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

    if-ne v0, v5, :cond_b

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    if-eq v1, v3, :cond_23

    .line 530
    :cond_b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-nez v1, :cond_18

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_41

    .line 535
    :cond_18
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 538
    if-ne v0, v5, :cond_22

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-nez v0, :cond_4f

    .line 543
    :cond_22
    return-void

    .line 527
    :cond_23
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
    :cond_41
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\"value\" and/or \"default\" attribute must be specified (key: %s)"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 539
    :cond_4f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "pattern is not supported for string properties (key: %s)"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 536
    :cond_5d
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

    if-nez v0, :cond_c

    .line 414
    const-string v0, "yyyy/MM/dd HH:mm"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    .line 416
    :cond_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    if-nez v0, :cond_1b

    .line 420
    const-string v0, "now"

    .line 423
    :cond_1b
    const-string v3, "now"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 424
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 433
    :goto_2b
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_42

    .line 434
    :try_start_30
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 437
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_38} :catch_57

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    .line 438
    mul-int/lit8 v0, v0, -0x1

    .line 442
    :cond_3d
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 446
    :cond_42
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 447
    return-void

    .line 427
    :cond_4d
    :try_start_4d
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_54
    .catch Ljava/text/ParseException; {:try_start_4d .. :try_end_54} :catch_55

    goto :goto_2b

    .line 428
    :catch_55
    move-exception v0

    goto :goto_2b

    .line 440
    :catch_57
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

    if-eqz v0, :cond_29

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 463
    :goto_e
    :try_start_e
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_30

    .line 465
    invoke-virtual {v4, v0}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1b} :catch_35
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_1b} :catch_32

    move-result v0

    .line 473
    :goto_1c
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_38

    .line 492
    :goto_21
    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 493
    return-void

    .line 461
    :cond_29
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    move-object v4, v0

    goto :goto_e

    :cond_30
    move v0, v1

    .line 467
    goto :goto_1c

    .line 469
    :catch_32
    move-exception v0

    move v0, v1

    goto :goto_1c

    :catch_35
    move-exception v0

    move v0, v1

    goto :goto_1c

    .line 477
    :cond_38
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-eqz v2, :cond_56

    .line 479
    :try_start_3c
    invoke-virtual {v4, v2}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_43} :catch_4d
    .catch Ljava/text/ParseException; {:try_start_3c .. :try_end_43} :catch_4a

    move-result v2

    .line 485
    :goto_44
    iget v5, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    if-nez v5, :cond_50

    .line 486
    add-int/2addr v0, v2

    goto :goto_21

    .line 480
    :catch_4a
    move-exception v2

    move v2, v3

    goto :goto_44

    :catch_4d
    move-exception v2

    move v2, v3

    goto :goto_44

    .line 487
    :cond_50
    if-ne v5, v3, :cond_54

    .line 488
    sub-int/2addr v0, v2

    goto :goto_21

    :cond_54
    move v0, v1

    goto :goto_21

    :cond_56
    move v2, v3

    goto :goto_44
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
    if-nez v0, :cond_a

    .line 508
    const-string v0, ""

    .line 511
    :cond_a
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 516
    :goto_f
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 517
    return-void

    .line 513
    :cond_12
    if-nez v2, :cond_26

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_26
    move-object v0, v1

    goto :goto_f
.end method

.method private getCurrentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 546
    const/4 v0, 0x0

    .line 547
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 550
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 551
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 556
    :cond_10
    if-nez v1, :cond_19

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_19

    if-eqz p1, :cond_19

    move-object v0, p1

    .line 562
    :cond_19
    if-nez v1, :cond_23

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_23

    if-nez p1, :cond_23

    .line 563
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 569
    :cond_23
    if-eqz v1, :cond_2d

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_2d

    if-eqz p1, :cond_2d

    .line 570
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 576
    :cond_2d
    if-eqz v1, :cond_3d

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_3d

    if-nez p1, :cond_3d

    .line 577
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 583
    :cond_37
    :goto_37
    return-object p1

    .line 580
    :cond_38
    if-nez p1, :cond_37

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    goto :goto_37

    :cond_3d
    move-object p1, v0

    goto :goto_37
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

    if-ne v0, v1, :cond_f

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :goto_e
    return-void

    .line 378
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    :try_start_17
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    if-nez v1, :cond_2e

    .line 381
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeInteger(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_1e} :catch_34

    .line 395
    :goto_1e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 400
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 382
    :cond_2e
    if-ne v1, v2, :cond_39

    .line 383
    :try_start_30
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeDate(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_1e

    .line 389
    :catch_34
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1e

    .line 384
    :cond_39
    const/4 v2, 0x2

    if-ne v1, v2, :cond_40

    .line 385
    :try_start_3c
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeString(Ljava/lang/String;)V

    goto :goto_1e

    .line 387
    :cond_40
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
    :try_end_54
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_54} :catch_34
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
