.class public Lorg/apache/tools/ant/ComponentHelper;
.super Ljava/lang/Object;
.source "ComponentHelper.java"


# static fields
.field private static final ANT_PROPERTY_TASK:Ljava/lang/String; = "property"

.field private static final BUILD_SYSCLASSPATH_ONLY:Ljava/lang/String; = "only"

.field public static final COMPONENT_HELPER_REFERENCE:Ljava/lang/String; = "ant.ComponentHelper"

.field private static final ERROR_NO_TASK_LIST_LOAD:Ljava/lang/String; = "Can\'t load default task list"

.field private static final ERROR_NO_TYPE_LIST_LOAD:Ljava/lang/String; = "Can\'t load default type list"

.field private static defaultDefinitions:[Ljava/util/Properties;


# instance fields
.field private antLibCurrentUri:Ljava/lang/String;

.field private antLibStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final antTypeTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final checkedNamespaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/tools/ant/ComponentHelper;

.field private project:Lorg/apache/tools/ant/Project;

.field private rebuildTaskClassDefinitions:Z

.field private rebuildTypeClassDefinitions:Z

.field private final restrictedDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;>;"
        }
    .end annotation
.end field

.field private final taskClassDefinitions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final typeClassDefinitions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Properties;

    sput-object v0, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    .line 71
    iput-boolean v1, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    .line 77
    iput-boolean v1, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    .line 165
    return-void
.end method

.method private checkNamespace(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 823
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5a

    move-result v1

    if-eqz v1, :cond_d

    .line 825
    const-string v0, "antlib:org.apache.tools.ant"

    .line 827
    :cond_d
    :try_start_d
    const-string v1, "antlib:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_5a

    move-result v1

    if-nez v1, :cond_17

    .line 828
    monitor-exit p0

    .line 854
    :goto_16
    return-void

    .line 830
    :cond_17
    :try_start_17
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_5a

    move-result v1

    if-eqz v1, :cond_21

    .line 831
    monitor-exit p0

    goto :goto_16

    .line 833
    :cond_21
    :try_start_21
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 840
    invoke-virtual {p0}, Lorg/apache/tools/ant/ComponentHelper;->initDefaultDefinitions()V

    .line 842
    :cond_31
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Typedef;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Typedef;-><init>()V

    .line 843
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Typedef;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 844
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Typedef;->init()V

    .line 845
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Typedef;->setURI(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Typedef;->setTaskName(Ljava/lang/String;)V

    .line 850
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Definer;->makeResourceFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Typedef;->setResource(Ljava/lang/String;)V

    .line 852
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Definer$OnError;

    const-string v2, "ignore"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer$OnError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Typedef;->setOnError(Lorg/apache/tools/ant/taskdefs/Definer$OnError;)V

    .line 853
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Typedef;->execute()V
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5a

    .line 854
    monitor-exit p0

    goto :goto_16

    .line 822
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createNewTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 538
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_f

    const-class v2, Lorg/apache/tools/ant/Task;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    move-object v0, v1

    .line 557
    :goto_10
    return-object v0

    .line 542
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    if-nez v0, :cond_19

    move-object v0, v1

    .line 544
    goto :goto_10

    .line 546
    :cond_19
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_3d

    .line 550
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 551
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   +Task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_10

    .line 547
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a Task from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' but got an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instead"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findTypeMatches(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1071
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1072
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    .line 1071
    return-object v0

    .line 1073
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private getCheckedNamespace()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 200
    monitor-exit p0

    return-object v0

    .line 198
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 4

    .line 763
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.sysclasspath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 765
    const-string v1, "only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 766
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 768
    :cond_1e
    return-object p1
.end method

.method public static getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;
    .registers 3

    .line 146
    if-nez p0, :cond_4

    .line 147
    const/4 v0, 0x0

    .line 158
    :cond_3
    :goto_3
    return-object v0

    .line 150
    :cond_4
    const-string v0, "ant.ComponentHelper"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ComponentHelper;

    .line 151
    if-nez v0, :cond_3

    .line 154
    new-instance v0, Lorg/apache/tools/ant/ComponentHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/ComponentHelper;-><init>()V

    .line 155
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/ComponentHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 157
    const-string v1, "ant.ComponentHelper"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private static getDefaultDefinitions(Z)Ljava/util/Properties;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/ComponentHelper;

    monitor-enter v0

    .line 782
    if-eqz p0, :cond_38

    const/4 v0, 0x1

    move v3, v0

    .line 783
    :goto_7
    :try_start_7
    sget-object v0, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    aget-object v0, v0, v3
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_57

    if-nez v0, :cond_30

    .line 784
    if-eqz p0, :cond_3b

    const-string v0, "/org/apache/tools/ant/types/defaults.properties"

    move-object v2, v0

    .line 786
    :goto_12
    if-eqz p0, :cond_3f

    const-string v0, "Can\'t load default type list"

    move-object v1, v0

    .line 787
    :goto_17
    :try_start_17
    const-class v0, Lorg/apache/tools/ant/ComponentHelper;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_50
    .catchall {:try_start_17 .. :try_end_1c} :catchall_57

    move-result-object v2

    .line 788
    if-eqz v2, :cond_43

    .line 791
    :try_start_1f
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 792
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 793
    sget-object v4, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    aput-object v0, v4, v3
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_49

    .line 794
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_50
    .catchall {:try_start_2d .. :try_end_30} :catchall_57

    .line 798
    :cond_30
    :try_start_30
    sget-object v0, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    aget-object v0, v0, v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_57

    const-class v1, Lorg/apache/tools/ant/ComponentHelper;

    monitor-exit v1

    return-object v0

    .line 782
    :cond_38
    const/4 v0, 0x0

    move v3, v0

    goto :goto_7

    .line 785
    :cond_3b
    const-string v0, "/org/apache/tools/ant/taskdefs/defaults.properties"

    move-object v2, v0

    goto :goto_12

    .line 786
    :cond_3f
    const-string v0, "Can\'t load default task list"

    move-object v1, v0

    goto :goto_17

    .line 789
    :cond_43
    :try_start_43
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_49

    .line 787
    :catchall_49
    move-exception v0

    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c

    :cond_4f
    :goto_4f
    :try_start_4f
    throw v0
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_50} :catch_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_57

    .line 794
    :catch_50
    move-exception v0

    .line 795
    :try_start_51
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_57

    .line 781
    :catchall_57
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/ComponentHelper;

    monitor-exit v1

    throw v0

    .line 787
    :catchall_5c
    move-exception v2

    goto :goto_4f
.end method

.method public static getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 4

    .line 633
    if-nez p0, :cond_6

    .line 634
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object p0

    .line 636
    :cond_6
    if-nez p0, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/tools/ant/ComponentHelper;->getUnmappedElementName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    .line 637
    :cond_11
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private getRestrictedDefinition()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;>;"
        }
    .end annotation

    .line 207
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 208
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v3

    .line 209
    :try_start_8
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 211
    monitor-enter v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_35

    .line 213
    :try_start_25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3d

    .line 214
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_38

    .line 215
    :try_start_2b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 217
    :catchall_35
    move-exception v0

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v0

    .line 214
    :catchall_38
    move-exception v0

    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0

    .line 217
    :cond_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_35

    .line 218
    return-object v2

    .line 214
    :catchall_3d
    move-exception v0

    goto :goto_39
.end method

.method private static getUnmappedElementName(Ljava/lang/Class;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 641
    if-eqz p1, :cond_13

    .line 642
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 643
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private initTasks()V
    .registers 7

    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 750
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getDefaultDefinitions(Z)Ljava/util/Properties;

    move-result-object v2

    .line 751
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 752
    new-instance v4, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v4}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 753
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 756
    const-class v5, Lorg/apache/tools/ant/Task;

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdaptToClass(Ljava/lang/Class;)V

    .line 757
    const-class v5, Lorg/apache/tools/ant/TaskAdapter;

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdapterClass(Ljava/lang/Class;)V

    .line 758
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 760
    :cond_40
    return-void
.end method

.method private initTypes()V
    .registers 7

    .line 805
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 806
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getDefaultDefinitions(Z)Ljava/util/Properties;

    move-result-object v2

    .line 807
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 808
    new-instance v4, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v4}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 809
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 812
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 814
    :cond_36
    return-void
.end method

.method static synthetic lambda$findTypeMatches$5(Ljava/lang/String;Lorg/apache/tools/ant/AntTypeDefinition;)Z
    .registers 3

    .line 1071
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$updateRestrictedDefinition$4(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private printClassNotFound(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cause: the class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    if-eqz p3, :cond_29

    .line 1034
    const-string v0, "        This looks like one of Ant\'s optional components."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    const-string v0, "Action: Check that the appropriate optional JAR exists in"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    :goto_28
    return-void

    .line 1038
    :cond_29
    const-string v0, "Action: Check that the component has been correctly declared"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    const-string v0, "        and that the implementing JAR is in one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private printNotLoadDependentClass(Ljava/io/PrintWriter;ZLjava/lang/NoClassDefFoundError;Ljava/lang/String;)V
    .registers 7

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cause: Could not load a dependent class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {p3}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    if-eqz p2, :cond_32

    .line 1052
    const-string v0, "       It is not enough to have Ant\'s optional JARs"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v0, "       you need the JAR files that the optional tasks depend upon."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const-string v0, "       Ant\'s optional task dependencies are listed in the manual."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    :goto_29
    const-string v0, "Action: Determine what extra JAR files are needed, and place them in one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    return-void

    .line 1056
    :cond_32
    const-string v0, "       This class may be in a separate JAR that is not installed."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private printUnknownDefinition(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 999
    const-string v0, "antlib:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1000
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    const-string v2, "Cause: The name is undefined."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    const-string v2, "Action: Check the spelling."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    const-string v2, "Action: Check that any custom tasks/types have been declared."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    const-string v2, "Action: Check that any <presetdef>/<macrodef> declarations have taken place."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 1007
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/ComponentHelper;->findTypeMatches(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1008
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1009
    const-string v1, "No types or tasks have been defined in this namespace yet"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    if-eqz v0, :cond_45

    .line 1011
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1012
    const-string v0, "This appears to be an antlib declaration. "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    const-string v0, "Action: Check that the implementing library exists in one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    :cond_45
    return-void

    .line 1017
    :cond_46
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The definitions in the namespace "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " are:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 1020
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66
.end method

.method private sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/AntTypeDefinition;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 665
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->validDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)Z

    move-result v3

    .line 666
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->validDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)Z

    move-result v2

    if-ne v3, v2, :cond_1a

    move v2, v0

    .line 668
    :goto_d
    if-eqz v2, :cond_1c

    if-eqz v3, :cond_19

    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2, v2}, Lorg/apache/tools/ant/AntTypeDefinition;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v2, v1

    .line 666
    goto :goto_d

    :cond_1c
    move v0, v1

    .line 668
    goto :goto_19
.end method

.method private updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    .registers 10

    const/4 v1, 0x1

    .line 701
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    .line 702
    iget-object v4, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v4

    .line 703
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    .line 705
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 706
    if-eqz v0, :cond_57

    .line 707
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/ComponentHelper;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/AntTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 708
    monitor-exit v4

    .line 719
    :goto_1f
    return-void

    .line 710
    :cond_20
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v2

    .line 711
    if-eqz v2, :cond_84

    const-class v5, Lorg/apache/tools/ant/Task;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_84

    move v2, v1

    .line 712
    :goto_31
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to override old definition of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_81

    .line 713
    if-eqz v2, :cond_86

    const-string v2, "task "

    :goto_41
    :try_start_41
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0, v6}, Lorg/apache/tools/ant/AntTypeDefinition;->similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 714
    const/4 v0, 0x3

    .line 712
    :goto_54
    invoke-virtual {v5, v2, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 716
    :cond_57
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " +Datatype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 717
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    monitor-exit v4

    goto :goto_1f

    :catchall_81
    move-exception v0

    monitor-exit v4
    :try_end_83
    .catchall {:try_start_41 .. :try_end_83} :catchall_81

    throw v0

    .line 711
    :cond_84
    const/4 v2, 0x0

    goto :goto_31

    .line 713
    :cond_86
    const-string v2, "datatype "

    goto :goto_41

    :cond_89
    move v0, v1

    .line 714
    goto :goto_54
.end method

.method private updateRestrictedDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    .registers 6

    .line 676
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v1

    .line 679
    :try_start_7
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    sget-object v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 680
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_3c

    .line 683
    monitor-enter v0

    .line 684
    :try_start_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 685
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 686
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 687
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 691
    :cond_34
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_39

    throw v1

    .line 680
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private validDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)Z
    .registers 3

    .line 655
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public addDataTypeDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 468
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 469
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 471
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 472
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " +User datatype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 474
    return-void
.end method

.method public addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    .registers 3

    .line 482
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->isRestrict()Z

    move-result v0

    if-nez v0, :cond_a

    .line 483
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 487
    :goto_9
    return-void

    .line 485
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->updateRestrictedDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    goto :goto_9
.end method

.method public addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->checkTaskClass(Ljava/lang/Class;)V

    .line 343
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 344
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 346
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 347
    const-class v1, Lorg/apache/tools/ant/TaskAdapter;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdapterClass(Ljava/lang/Class;)V

    .line 348
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 349
    const-class v1, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdaptToClass(Ljava/lang/Class;)V

    .line 350
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 351
    return-void
.end method

.method public checkTaskClass(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 371
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 377
    const/4 v0, 0x0

    :try_start_16
    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_1b} :catch_29

    .line 384
    const-class v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-static {p1, v0}, Lorg/apache/tools/ant/TaskAdapter;->checkTaskClass(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)V

    .line 388
    :cond_28
    return-void

    .line 380
    :catch_29
    move-exception v0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No public no-arg constructor in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 383
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is abstract"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 374
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 369
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createComponent(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 285
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v0

    .line 286
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public createComponent(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 265
    instance-of v0, v1, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_26

    move-object v0, v1

    .line 266
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 267
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Task;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 268
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 271
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->init()V

    .line 273
    :cond_26
    return-object v1
.end method

.method public createDataType(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 573
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 515
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createNewTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 516
    if-nez v0, :cond_19

    const-string v1, "property"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 519
    const-string v0, "property"

    const-class v1, Lorg/apache/tools/ant/taskdefs/Property;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    .line 520
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createNewTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 522
    :cond_19
    return-object v0
.end method

.method public diagnoseCreationFailure(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/16 v10, 0xa

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 863
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 864
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem: failed to create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    new-instance v4, Ljava/io/File;

    sget-object v1, Lorg/apache/tools/ant/launch/Launcher;->USER_LIBDIR:Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v0, "ant.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_80

    .line 877
    new-instance v1, Ljava/io/File;

    const-string v8, "lib"

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 884
    :goto_4c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    const-string v9, "        -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    if-eqz v1, :cond_9a

    .line 890
    const-string v0, "        -"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v0, "the IDE Ant configuration dialogs"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :goto_68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 902
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v9

    .line 903
    if-nez v9, :cond_b0

    .line 905
    invoke-direct {p0, v7, p1, v8}, Lorg/apache/tools/ant/ComponentHelper;->printUnknownDefinition(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :goto_75
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 991
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 992
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 881
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANT_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_4c

    .line 893
    :cond_9a
    const-string v0, "        -"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    const-string v0, "        -"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v0, "a directory added on the command line with the -lib argument"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 909
    :cond_b0
    invoke-virtual {v9}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 910
    const-string v0, "org.apache.tools.ant."

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 911
    const-string v0, "org.apache.tools.ant.types.optional"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 912
    const-string v0, "org.apache.tools.ant.taskdefs.optional"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    :cond_ca
    move v1, v3

    .line 915
    :goto_cb
    :try_start_cb
    invoke-virtual {v9}, Lorg/apache/tools/ant/AntTypeDefinition;->innerGetTypeClass()Ljava/lang/Class;
    :try_end_ce
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cb .. :try_end_ce} :catch_10e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_cb .. :try_end_ce} :catch_107

    move-result-object v0

    move v4, v2

    move v1, v2

    move-object v5, v0

    .line 929
    :goto_d2
    if-eqz v5, :cond_de

    .line 932
    :try_start_d4
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v9, v5, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->innerCreateAndSet(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 934
    const-string v0, "The component could be instantiated."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d4 .. :try_end_de} :catch_1a4
    .catch Ljava/lang/InstantiationException; {:try_start_d4 .. :try_end_de} :catch_189
    .catch Ljava/lang/IllegalAccessException; {:try_start_d4 .. :try_end_de} :catch_16e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d4 .. :try_end_de} :catch_156
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d4 .. :try_end_de} :catch_11a

    :cond_de
    move v0, v1

    .line 964
    :goto_df
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 965
    const-string v1, "Do not panic, this is a common problem."

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    if-eqz v4, :cond_ee

    .line 967
    const-string v1, "It may just be a typographical error in the build file or the task/type declaration."

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    :cond_ee
    if-eqz v0, :cond_f5

    .line 971
    const-string v0, "The commonest cause is a missing JAR."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    :cond_f5
    if-eqz v2, :cond_1e4

    .line 974
    const-string v0, "This is quite a low level problem, which may need consultation with the author of the task."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    if-eqz v11, :cond_1bf

    .line 977
    const-string v0, "This may be the Ant team. Please file a defect or contact the developer team."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_75

    :cond_105
    move v1, v2

    .line 912
    goto :goto_cb

    .line 924
    :catch_107
    move-exception v0

    .line 926
    invoke-direct {p0, v7, v1, v0, v8}, Lorg/apache/tools/ant/ComponentHelper;->printNotLoadDependentClass(Ljava/io/PrintWriter;ZLjava/lang/NoClassDefFoundError;Ljava/lang/String;)V

    move v4, v2

    move v1, v3

    goto :goto_d2

    .line 918
    :catch_10e
    move-exception v0

    .line 920
    if-nez v1, :cond_118

    move v0, v3

    .line 923
    :goto_112
    invoke-direct {p0, v7, v10, v1, v8}, Lorg/apache/tools/ant/ComponentHelper;->printClassNotFound(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/lang/String;)V

    move v4, v0

    move v1, v3

    .line 927
    goto :goto_d2

    :cond_118
    move v0, v2

    .line 920
    goto :goto_112

    .line 954
    :catch_11a
    move-exception v0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause:  A class needed by class "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cannot be found: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const-string v0, "Action: Determine what extra JAR files are needed, and place them in:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v3

    goto :goto_df

    .line 948
    :catch_156
    move-exception v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 951
    const-string v2, "Cause: The constructor threw the exception"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_16a
    move v2, v3

    move v0, v1

    .line 962
    goto/16 :goto_df

    .line 944
    :catch_16e
    move-exception v0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: The constructor for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is private and cannot be invoked."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16a

    .line 940
    :catch_189
    move-exception v0

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: The class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is abstract and cannot be instantiated."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16a

    .line 935
    :catch_1a4
    move-exception v0

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: The class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has no compatible constructor."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16a

    .line 980
    :cond_1bf
    const-string v0, "This does not appear to be a task bundled with Ant."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please take it up with the supplier of the third-party "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v0, "If you have written it yourself, you probably have a bug to fix."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 986
    :cond_1e4
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 987
    const-string v0, "This is not a bug; it is a configuration problem"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_75
.end method

.method public enterAntLib(Ljava/lang/String;)V
    .registers 3

    .line 726
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    return-void
.end method

.method public exitAntLib()V
    .registers 2

    .line 741
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    .line 743
    return-void

    .line 742
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getAntTypeTable()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getComponentClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v0

    .line 299
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_7
.end method

.method public getCurrentAntlibUri()Ljava/lang/String;
    .registers 2

    .line 734
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDataTypeDefinitions()Ljava/util/Hashtable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 423
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    monitor-enter v1

    .line 424
    :try_start_3
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_35

    .line 425
    :try_start_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    if-eqz v0, :cond_2d

    .line 426
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 427
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 428
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 430
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    .line 434
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_32

    .line 435
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_35

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    return-object v0

    .line 434
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v0

    .line 435
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;
    .registers 3

    .line 308
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->checkNamespace(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    return-object v0
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementName(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 9

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 610
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v3

    .line 611
    :try_start_b
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 612
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    .line 613
    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v5

    if-ne v1, v5, :cond_15

    .line 614
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    .line 615
    if-eqz p2, :cond_3b

    :goto_39
    monitor-exit v3

    .line 619
    :goto_3a
    return-object v0

    .line 615
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> type"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 618
    :cond_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_5c

    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/tools/ant/ComponentHelper;->getUnmappedElementName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 618
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public getNext()Lorg/apache/tools/ant/ComponentHelper;
    .registers 2

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->next:Lorg/apache/tools/ant/ComponentHelper;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getRestrictedDefinitions(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v1

    .line 450
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 451
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getTaskDefinitions()Ljava/util/Hashtable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 399
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    monitor-enter v1

    .line 400
    :try_start_3
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_35

    .line 401
    :try_start_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    if-eqz v0, :cond_2d

    .line 402
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 403
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 404
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 406
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    .line 410
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_32

    .line 411
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_35

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    return-object v0

    .line 410
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v0

    .line 411
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public initDefaultDefinitions()V
    .registers 2

    .line 318
    invoke-direct {p0}, Lorg/apache/tools/ant/ComponentHelper;->initTasks()V

    .line 319
    invoke-direct {p0}, Lorg/apache/tools/ant/ComponentHelper;->initTypes()V

    .line 320
    new-instance v0, Lorg/apache/tools/ant/DefaultDefinitions;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/DefaultDefinitions;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/DefaultDefinitions;->execute()V

    .line 321
    return-void
.end method

.method public initSubProject(Lorg/apache/tools/ant/ComponentHelper;)V
    .registers 7

    .line 231
    iget-object v0, p1, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    .line 232
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 233
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v1

    .line 234
    :try_start_b
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 235
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 237
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 239
    invoke-direct {p1}, Lorg/apache/tools/ant/ComponentHelper;->getCheckedNamespace()Ljava/util/Set;

    move-result-object v0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_32
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 242
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_49

    .line 243
    invoke-direct {p1}, Lorg/apache/tools/ant/ComponentHelper;->getRestrictedDefinition()Ljava/util/Map;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v1

    .line 246
    :try_start_3f
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 247
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw v0

    .line 242
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public synthetic lambda$getDataTypeDefinitions$2$ComponentHelper(Ljava/util/Map$Entry;)Z
    .registers 5

    .line 428
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 429
    const-class v1, Lorg/apache/tools/ant/Task;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    .line 428
    :goto_23
    return v0

    .line 429
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public synthetic lambda$getDataTypeDefinitions$3$ComponentHelper(Ljava/util/Map$Entry;)V
    .registers 6

    .line 430
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    .line 430
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$getTaskDefinitions$0$ComponentHelper(Ljava/util/Map$Entry;)Z
    .registers 5

    .line 404
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 405
    const-class v1, Lorg/apache/tools/ant/Task;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    .line 404
    :goto_23
    return v0

    .line 405
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public synthetic lambda$getTaskDefinitions$1$ComponentHelper(Ljava/util/Map$Entry;)V
    .registers 6

    .line 406
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    .line 406
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNext(Lorg/apache/tools/ant/ComponentHelper;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->next:Lorg/apache/tools/ant/ComponentHelper;

    .line 174
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    .line 192
    return-void
.end method
