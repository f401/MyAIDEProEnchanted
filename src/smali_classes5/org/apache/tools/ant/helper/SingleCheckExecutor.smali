.class public Lorg/apache/tools/ant/helper/SingleCheckExecutor;
.super Ljava/lang/Object;
.source "SingleCheckExecutor.java"

# interfaces
.implements Lorg/apache/tools/ant/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeTargets(Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/tools/ant/Project;->topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->executeSortedTargets(Ljava/util/Vector;)V

    .line 38
    return-void
.end method

.method public getSubProjectExecutor()Lorg/apache/tools/ant/Executor;
    .registers 1

    .line 42
    return-object p0
.end method
