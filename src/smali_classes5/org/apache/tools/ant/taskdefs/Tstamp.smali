.class public Lorg/apache/tools/ant/taskdefs/Tstamp;
.super Lorg/apache/tools/ant/Task;
.source "Tstamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;,
        Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;
    }
.end annotation


# static fields
.field private static final ENV_SOURCE_DATE_EPOCH:Ljava/lang/String; = "SOURCE_DATE_EPOCH"


# instance fields
.field private customFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->customFormats:Ljava/util/List;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getNow$1(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 137
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNow$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "magic property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ignored as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not in valid ISO pattern"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNow$3(Ljava/lang/String;)Ljava/util/Date;
    .registers 7

    .line 146
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method static synthetic lambda$getNow$4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "magic property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ignored as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 126
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public createFormat()Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;
    .registers 3

    .line 116
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;-><init>(Lorg/apache/tools/ant/taskdefs/Tstamp;)V

    .line 117
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->customFormats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getNow()Ljava/util/Date;

    move-result-object v1

    .line 81
    const-string v0, "SOURCE_DATE_EPOCH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_90

    move-result-object v2

    .line 83
    if-eqz v2, :cond_99

    .line 85
    :try_start_c
    new-instance v0, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_18} :catch_69
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_90

    .line 86
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Honouring environment variable SOURCE_DATE_EPOCH which has been set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_2c} :catch_97
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_90

    .line 93
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->customFormats:Ljava/util/List;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/util/Date;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "DSTAMP"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v2, "TSTAMP"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMMM d yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 104
    const-string v2, "TODAY"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 88
    :catch_69
    move-exception v0

    move-object v0, v1

    .line 90
    :goto_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring invalid value \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SOURCE_DATE_EPOCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " environment variable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;I)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_8f} :catch_90

    goto :goto_2c

    .line 106
    :catch_90
    move-exception v0

    .line 107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :catch_97
    move-exception v1

    goto :goto_6b

    :cond_99
    move-object v0, v1

    goto :goto_2c
.end method

.method protected getNow()Ljava/util/Date;
    .registers 4

    .line 135
    const-string v0, "ant.tstamp.now.iso"

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda3;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getNow(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/Optional;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 141
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 149
    :goto_16
    return-object v0

    .line 144
    :cond_17
    const-string v0, "ant.tstamp.now"

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda4;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getNow(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/Optional;

    move-result-object v0

    .line 149
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_16
.end method

.method protected getNow(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Optional",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 164
    :try_start_10
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 169
    :goto_1a
    return-object v0

    .line 165
    :catch_1b
    move-exception v0

    .line 166
    invoke-interface {p3, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;)V

    .line 169
    :cond_25
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_1a
.end method

.method public synthetic lambda$execute$0$Tstamp(Ljava/util/Date;Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;)V
    .registers 5

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->execute(Lorg/apache/tools/ant/Project;Ljava/util/Date;Lorg/apache/tools/ant/Location;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    .line 66
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    .line 69
    :cond_1f
    return-void
.end method
