.class public Lorg/apache/tools/ant/helper/IgnoreDependenciesExecutor;
.super Ljava/lang/Object;
.source "IgnoreDependenciesExecutor.java"

# interfaces
.implements Lorg/apache/tools/ant/Executor;


# static fields
.field private static final SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/SingleCheckExecutor;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/IgnoreDependenciesExecutor;->SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeTargets(Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v3

    .line 44
    const/4 v1, 0x0

    .line 45
    array-length v4, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v4, :cond_3b

    aget-object v5, p2, v2

    .line 47
    :try_start_c
    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 48
    if-eqz v0, :cond_1c

    .line 51
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->performTasks()V

    move-object v0, v1

    .line 54
    :cond_18
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_8

    .line 49
    :cond_1c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown target "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_c .. :try_end_33} :catch_33

    .line 52
    :catch_33
    move-exception v0

    .line 53
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 56
    throw v0

    .line 60
    :cond_3b
    if-nez v1, :cond_3e

    .line 63
    return-void

    .line 61
    :cond_3e
    throw v1
.end method

.method public getSubProjectExecutor()Lorg/apache/tools/ant/Executor;
    .registers 2

    .line 67
    sget-object v0, Lorg/apache/tools/ant/helper/IgnoreDependenciesExecutor;->SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    return-object v0
.end method
