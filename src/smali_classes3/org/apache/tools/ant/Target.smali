.class public Lorg/apache/tools/ant/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

.field private ifString:Ljava/lang/String;

.field private location:Lorg/apache/tools/ant/Location;

.field private name:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

.field private unlessString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    .line 61
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->location:Lorg/apache/tools/ant/Location;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/Target;->description:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Target;)V
    .registers 4

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    .line 61
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->location:Lorg/apache/tools/ant/Location;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/Target;->description:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->name:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 83
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 84
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    .line 85
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->location:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->location:Lorg/apache/tools/ant/Location;

    .line 86
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    .line 87
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->description:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->description:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static parseDepends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :cond_0
    return-object v0

    .line 152
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syntax Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attribute for target \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" ends with a \",\" character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syntax Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attribute of target \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" contains an empty string."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDataType(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public addDependency(Ljava/lang/String;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 210
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public dependsOn(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    .line 269
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 270
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lorg/apache/tools/ant/Project;->topoSort(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 269
    :cond_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v1

    goto :goto_0
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x3

    .line 428
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped because property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    iget-object v3, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v4}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    .line 456
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped because property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    iget-object v3, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    .line 435
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, p0, v1, v4}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v2

    .line 439
    invoke-virtual {v2}, Lorg/apache/tools/ant/property/LocalProperties;->enterScope()V

    .line 445
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 446
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 447
    instance-of v3, v0, Lorg/apache/tools/ant/Task;

    if-eqz v3, :cond_2

    .line 448
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 449
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->perform()V

    .line 445
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 451
    :cond_2
    check-cast v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v3, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 455
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    .line 456
    throw v0

    .line 455
    :cond_3
    invoke-virtual {v2}, Lorg/apache/tools/ant/property/LocalProperties;->exitScope()V

    goto :goto_0
.end method

.method public getDependencies()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->dependencies:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticBackport0;->m()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    .line 258
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIf()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->location:Lorg/apache/tools/ant/Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getTasks()[Lorg/apache/tools/ant/Task;
    .registers 5

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v3, v0, Lorg/apache/tools/ant/Task;

    if-eqz v3, :cond_0

    .line 232
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/tools/ant/Task;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/Task;

    return-object v0
.end method

.method public getUnless()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic lambda$setIf$0$Target()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setUnless$1$Target()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final performTasks()V
    .registers 4

    const/4 v1, 0x0

    .line 467
    .line 468
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->fireTargetStarted(Lorg/apache/tools/ant/Target;)V

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->execute()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p0, v1}, Lorg/apache/tools/ant/Project;->fireTargetFinished(Lorg/apache/tools/ant/Target;Ljava/lang/Throwable;)V

    .line 476
    return-void

    .line 471
    :catch_0
    move-exception v1

    .line 473
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, p0, v1}, Lorg/apache/tools/ant/Project;->fireTargetFinished(Lorg/apache/tools/ant/Target;Ljava/lang/Throwable;)V

    .line 476
    throw v0
.end method

.method replaceChild(Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .registers 5

    .line 489
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 490
    iget-object v1, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    :cond_0
    return-void
.end method

.method replaceChild(Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/Task;)V
    .registers 5

    .line 504
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 505
    iget-object v1, p0, Lorg/apache/tools/ant/Target;->children:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method public setDepends(Ljava/lang/String;)V
    .registers 4

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "depends"

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/Target;->parseDepends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->description:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .registers 3

    .line 287
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->ifString:Ljava/lang/String;

    .line 288
    new-instance v0, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/Target;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Target;->setIf(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V

    .line 294
    return-void
.end method

.method public setIf(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V
    .registers 4

    .line 314
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    if-nez v0, :cond_0

    .line 315
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/And;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/condition/And;-><init>()V

    .line 318
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/And;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 319
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/And;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 320
    iget-object v1, p0, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/And;->add(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V

    .line 321
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/condition/And;->add(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V

    .line 322
    iput-object v0, p0, Lorg/apache/tools/ant/Target;->ifCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    goto :goto_0
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->location:Lorg/apache/tools/ant/Location;

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->name:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->project:Lorg/apache/tools/ant/Project;

    .line 100
    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .registers 3

    .line 340
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->unlessString:Ljava/lang/String;

    .line 341
    new-instance v0, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/Target;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Target;->setUnless(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V

    .line 347
    return-void
.end method

.method public setUnless(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V
    .registers 4

    .line 367
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    if-nez v0, :cond_0

    .line 368
    iput-object p1, p0, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/Or;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/condition/Or;-><init>()V

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Or;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 372
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Or;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 373
    iget-object v1, p0, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/Or;->add(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V

    .line 374
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Or;->add(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V

    .line 375
    iput-object v0, p0, Lorg/apache/tools/ant/Target;->unlessCondition:Lorg/apache/tools/ant/taskdefs/condition/Condition;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Lorg/apache/tools/ant/Target;->name:Ljava/lang/String;

    return-object v0
.end method
