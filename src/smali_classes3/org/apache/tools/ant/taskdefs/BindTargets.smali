.class public Lorg/apache/tools/ant/taskdefs/BindTargets;
.super Lorg/apache/tools/ant/Task;
.source "BindTargets.java"


# instance fields
.field private extensionPoint:Ljava/lang/String;

.field private onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

.field private final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->targets:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$setTargets$0(Ljava/lang/String;)Z
    .registers 2

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->extensionPoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.projectHelper"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 78
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->extensionPoint:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 80
    invoke-virtual {v5}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v5

    .line 79
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v1, v6, v4

    const/4 v1, 0x2

    aput-object v5, v6, v1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "bindtargets only allowed as a top-level task"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "extensionPoint required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 82
    :cond_3
    return-void
.end method

.method public setExtensionPoint(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->extensionPoint:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOnMissingExtensionPoint(Ljava/lang/String;)V
    .registers 4

    .line 47
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid onMissingExtensionPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOnMissingExtensionPoint(Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 55
    return-void
.end method

.method public setTargets(Ljava/lang/String;)V
    .registers 5

    .line 58
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->targets:Ljava/util/List;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 60
    return-void
.end method
