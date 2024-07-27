.class public Lorg/apache/tools/ant/taskdefs/WaitFor;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "WaitFor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_MILLIS:J = 0x1f4L

.field public static final DEFAULT_MAX_WAIT_MILLIS:J = 0x2bf20L

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MILLISECOND:J = 0x1L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final ONE_WEEK:J = 0x240c8400L


# instance fields
.field private checkEvery:J

.field private checkEveryMultiplier:J

.field private maxWait:J

.field private maxWaitMultiplier:J

.field private timeoutProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x1

    .line 89
    const-string v0, "waitfor"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 76
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    .line 77
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    .line 81
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    .line 82
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const-wide/16 v2, 0x1

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 76
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    .line 77
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    .line 81
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    .line 82
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    .line 100
    return-void
.end method


# virtual methods
.method public calculateCheckEveryMillis()J
    .registers 5

    .line 184
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public calculateMaxWaitMillis()J
    .registers 5

    .line 193
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public execute()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->countConditions()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->countConditions()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->calculateMaxWaitMillis()J

    move-result-wide v2

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->calculateCheckEveryMillis()J

    move-result-wide v4

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 162
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v10, v6, v2

    cmp-long v1, v8, v10

    if-gez v1, :cond_1

    .line 165
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->processSuccess()V

    .line 176
    :goto_1
    return-void

    .line 169
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interrupted, treating as timed out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->log(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->processTimeout()V

    goto :goto_1

    .line 154
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must nest a condition into %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 149
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not nest more than one condition into %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected processSuccess()V
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": condition was met"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/WaitFor;->log(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method protected processTimeout()V
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/WaitFor;->log(Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->timeoutProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->timeoutProperty:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setCheckEvery(J)V
    .registers 4

    .line 123
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    .line 124
    return-void
.end method

.method public setCheckEveryUnit(Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;)V
    .registers 4

    .line 131
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getMultiplier()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    .line 132
    return-void
.end method

.method public setMaxWait(J)V
    .registers 4

    .line 107
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    .line 108
    return-void
.end method

.method public setMaxWaitUnit(Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;)V
    .registers 4

    .line 115
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getMultiplier()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    .line 116
    return-void
.end method

.method public setTimeoutProperty(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->timeoutProperty:Ljava/lang/String;

    .line 140
    return-void
.end method
