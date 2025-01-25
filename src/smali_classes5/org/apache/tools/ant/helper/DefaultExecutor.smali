.class public Lorg/apache/tools/ant/helper/DefaultExecutor;
.super Ljava/lang/Object;
.source "DefaultExecutor.java"

# interfaces
.implements Lorg/apache/tools/ant/Executor;


# static fields
.field private static final SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/SingleCheckExecutor;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/DefaultExecutor;->SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeTargets(Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .line 39
    array-length v2, p2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_15

    aget-object v3, p2, v1

    .line 41
    :try_start_7
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/Project;->executeTarget(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_7 .. :try_end_a} :catch_d

    .line 44
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 42
    :catch_d
    move-exception v0

    .line 43
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v3

    if-nez v3, :cond_a

    .line 46
    throw v0

    .line 50
    :cond_15
    if-nez v0, :cond_18

    .line 53
    return-void

    .line 51
    :cond_18
    throw v0
.end method

.method public getSubProjectExecutor()Lorg/apache/tools/ant/Executor;
    .registers 2

    .line 57
    sget-object v0, Lorg/apache/tools/ant/helper/DefaultExecutor;->SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    return-object v0
.end method
