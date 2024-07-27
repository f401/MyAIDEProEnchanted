.class public Lorg/apache/tools/ant/taskdefs/Antlib;
.super Lorg/apache/tools/ant/Task;
.source "Antlib.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# static fields
.field public static final TAG:Ljava/lang/String; = "antlib"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->uri:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->tasks:Ljava/util/List;

    return-void
.end method

.method public static createAntlib(Lorg/apache/tools/ant/Project;Ljava/net/URL;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Antlib;
    .registers 8

    const/4 v1, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v2

    .line 76
    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/ComponentHelper;->enterAntLib(Ljava/lang/String;)V

    .line 77
    new-instance v3, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-direct {v3, p1}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/net/URL;)V

    .line 81
    :try_start_1
    const-string v0, "ant.projectHelper"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    instance-of v4, v0, Lorg/apache/tools/ant/ProjectHelper;

    if-eqz v4, :cond_3

    .line 84
    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 85
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/ProjectHelper;->canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v1

    .line 89
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperForAntlib(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;

    move-result-object v0

    .line 94
    :cond_1
    invoke-virtual {v0, p0, v3}, Lorg/apache/tools/ant/ProjectHelper;->parseAntlibDescriptor(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    .line 97
    const-string v1, "antlib"

    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Antlib;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Antlib;-><init>()V

    .line 103
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/taskdefs/Antlib;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 104
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Antlib;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 105
    const-string v3, "antlib"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Antlib;->setTaskName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Antlib;->init()V

    .line 107
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->configure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {v2}, Lorg/apache/tools/ant/ComponentHelper;->exitAntLib()V

    return-object v1

    .line 98
    :cond_2
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " expecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "antlib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/tools/ant/ComponentHelper;->exitAntLib()V

    .line 111
    throw v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 142
    const-class v0, Lorg/apache/tools/ant/taskdefs/Antlib;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public execute()V
    .registers 7

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 166
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 167
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Antlib;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 168
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->maybeConfigure()V

    .line 169
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getRealThing()Ljava/lang/Object;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 173
    instance-of v3, v1, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 179
    check-cast v0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;

    .line 180
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->setURI(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Antlib;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->setAntlibClassLoader(Ljava/lang/ClassLoader;)V

    .line 182
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->init()V

    .line 183
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->execute()V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 177
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Invalid task in antlib %s %s does not extend %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-class v1, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 185
    :cond_2
    return-void
.end method

.method protected setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    .line 130
    return-void
.end method

.method protected setURI(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->uri:Ljava/lang/String;

    .line 138
    return-void
.end method
