.class public Lorg/apache/tools/ant/types/Commandline;
.super Ljava/lang/Object;
.source "Commandline.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Commandline$Marker;
    }
.end annotation


# static fields
.field protected static final DISCLAIMER:Ljava/lang/String;

.field private static final IS_WIN_9X:Z


# instance fields
.field private arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Commandline$Argument;",
            ">;"
        }
    .end annotation
.end field

.field private executable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    const-string v0, "win9x"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/types/Commandline;->IS_WIN_9X:Z

    .line 68
    const-string v0, "%nThe \' characters around the executable and arguments are%nnot part of the command.%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Commandline;->DISCLAIMER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_2c

    array-length v0, v1

    if-lez v0, :cond_2c

    .line 80
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 85
    :cond_2c
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/Commandline;)Ljava/util/List;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public static describeArguments(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .registers 2

    .line 634
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeArguments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static describeArguments([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 669
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/types/Commandline;->describeArguments([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static describeArguments([Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 683
    const-string v0, ""

    if-eqz p0, :cond_9

    array-length v1, p0

    if-gt v1, p1, :cond_c

    .line 684
    :cond_9
    const-string v0, ""

    .line 692
    :goto_b
    return-object v0

    .line 686
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    array-length v2, p0

    if-le v2, p1, :cond_16

    const-string v0, "s"

    :cond_16
    const-string v2, "argument%s:%n"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :goto_23
    array-length v0, p0

    if-ge p1, v0, :cond_38

    .line 689
    const-string v0, "\'%s\'%n"

    new-array v2, v5, [Ljava/lang/Object;

    aget-object v3, p0, p1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 691
    :cond_38
    sget-object v0, Lorg/apache/tools/ant/types/Commandline;->DISCLAIMER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .registers 2

    .line 623
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static describeCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    .line 648
    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_9

    .line 649
    :cond_6
    const-string v0, ""

    .line 658
    :goto_8
    return-object v0

    .line 651
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Executing \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 652
    array-length v1, p0

    if-le v1, v2, :cond_30

    .line 653
    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {p0, v2}, Lorg/apache/tools/ant/types/Commandline;->describeArguments([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 656
    :cond_30
    sget-object v1, Lorg/apache/tools/ant/types/Commandline;->DISCLAIMER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b
.end method

.method public static quoteArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    const/16 v1, 0x22

    .line 438
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 439
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 450
    :cond_26
    :goto_26
    return-object p0

    .line 440
    :cond_27
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t handle single and double quotes in same argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2f
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-boolean v0, Lorg/apache/tools/ant/types/Commandline;->IS_WIN_9X:Z

    if-eqz v0, :cond_26

    .line 447
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 448
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 462
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    .line 463
    :cond_5
    const-string v0, ""

    .line 473
    :goto_7
    return-object v0

    .line 466
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    array-length v2, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_28

    aget-object v3, p0, v0

    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1e

    .line 469
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :cond_1e
    invoke-static {v3}, Lorg/apache/tools/ant/types/Commandline;->quoteArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 473
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static translateCommandline(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 483
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 485
    :cond_b
    new-array v0, v1, [Ljava/lang/String;

    .line 540
    :goto_d
    return-object v0

    .line 493
    :cond_e
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v0, "\"\' "

    invoke-direct {v5, p0, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 495
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    .line 498
    :goto_21
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_80

    .line 499
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 500
    packed-switch v0, :pswitch_data_b4

    .line 518
    const-string v9, "\'"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    move v0, v3

    :cond_37
    :goto_37
    move v2, v1

    .line 530
    goto :goto_21

    .line 510
    :pswitch_39  #0x2
    const-string v9, "\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    move v2, v3

    move v0, v1

    .line 512
    goto :goto_21

    .line 514
    :cond_44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 502
    :pswitch_48  #0x1
    const-string v9, "\'"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    move v2, v3

    move v0, v1

    .line 504
    goto :goto_21

    .line 506
    :cond_53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 520
    :cond_57
    const-string v9, "\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move v0, v4

    .line 521
    goto :goto_37

    .line 522
    :cond_61
    const-string v9, " "

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 523
    if-nez v2, :cond_71

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_37

    .line 524
    :cond_71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_37

    .line 528
    :cond_7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 534
    :cond_80
    if-nez v2, :cond_88

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8f

    .line 535
    :cond_88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_8f
    if-eq v0, v3, :cond_9d

    if-eq v0, v4, :cond_9d

    .line 540
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_d

    .line 538
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbalanced quotes in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_39  #00000002
    .end packed-switch
.end method


# virtual methods
.method public addArguments([Ljava/lang/String;)V
    .registers 6

    .line 363
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_10

    aget-object v2, p1, v0

    .line 364
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 366
    :cond_10
    return-void
.end method

.method public addArgumentsToList(Ljava/util/ListIterator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline$Argument;

    .line 408
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->getParts()[Ljava/lang/String;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_6

    .line 410
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 411
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 415
    :cond_24
    return-void
.end method

.method public addCommandToList(Ljava/util/ListIterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 385
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 387
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline;->addArgumentsToList(Ljava/util/ListIterator;)V

    .line 388
    return-void
.end method

.method public clear()V
    .registers 2

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 573
    return-void
.end method

.method public clearArgs()V
    .registers 2

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 581
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 559
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline;

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_f} :catch_10

    .line 561
    return-object v0

    .line 562
    :catch_10
    move-exception v0

    .line 563
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 5

    .line 314
    new-instance v0, Lorg/apache/tools/ant/types/Commandline$Argument;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline$Argument;-><init>()V

    .line 315
    if-eqz p1, :cond_e

    .line 316
    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 320
    :goto_d
    return-object v0

    .line 318
    :cond_e
    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public createMarker()Lorg/apache/tools/ant/types/Commandline$Marker;
    .registers 3

    .line 592
    new-instance v0, Lorg/apache/tools/ant/types/Commandline$Marker;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/Commandline$Marker;-><init>(Lorg/apache/tools/ant/types/Commandline;I)V

    return-object v0
.end method

.method public describeArguments()Ljava/lang/String;
    .registers 2

    .line 612
    invoke-static {p0}, Lorg/apache/tools/ant/types/Commandline;->describeArguments(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeCommand()Ljava/lang/String;
    .registers 2

    .line 602
    invoke-static {p0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()[Ljava/lang/String;
    .registers 3

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Commandline;->addArgumentsToList(Ljava/util/ListIterator;)V

    .line 398
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCommandline()[Ljava/lang/String;
    .registers 3

    .line 373
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 374
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Commandline;->addCommandToList(Ljava/util/ListIterator;)V

    .line 375
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Commandline$Argument;",
            ">;"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 3

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method public setExecutable(Ljava/lang/String;Z)V
    .registers 6

    .line 342
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 348
    :cond_8
    :goto_8
    return-void

    .line 345
    :cond_9
    if-eqz p2, :cond_1b

    .line 346
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_1b
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    goto :goto_8
.end method

.method public size()I
    .registers 2

    .line 549
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
