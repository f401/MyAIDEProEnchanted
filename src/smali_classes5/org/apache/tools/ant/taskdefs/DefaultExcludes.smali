.class public Lorg/apache/tools/ant/taskdefs/DefaultExcludes;
.super Lorg/apache/tools/ant/Task;
.source "DefaultExcludes.java"


# instance fields
.field private add:Ljava/lang/String;

.field private defaultrequested:Z

.field private echo:Z

.field private logLevel:I

.field private remove:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    .line 40
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->logLevel:I

    return-void
.end method

.method static synthetic lambda$execute$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 67
    const-string v0, "  %s%n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    if-eqz v0, :cond_61

    .line 56
    :cond_18
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    if-eqz v0, :cond_1f

    .line 57
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->resetDefaultExcludes()V

    .line 59
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner;->addDefaultExclude(Ljava/lang/String;)Z

    .line 62
    :cond_2c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner;->removeDefaultExclude(Ljava/lang/String;)Z

    .line 65
    :cond_39
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    if-eqz v0, :cond_60

    .line 66
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->getDefaultExcludes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/DefaultExcludes$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/DefaultExcludes$$ExternalSyntheticLambda0;

    .line 67
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 68
    const-string v1, ""

    const-string v2, "Current Default Excludes:%n"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->logLevel:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->log(Ljava/lang/String;I)V

    .line 71
    :cond_60
    return-void

    .line 53
    :cond_61
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<defaultexcludes> task must set at least one attribute (echo=\"false\" doesn\'t count since that is the default"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdd(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDefault(Z)V
    .registers 2

    .line 79
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    .line 80
    return-void
.end method

.method public setEcho(Z)V
    .registers 2

    .line 107
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    .line 108
    return-void
.end method

.method public setRemove(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    .line 98
    return-void
.end method
