.class public Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibAvailableTask.java"


# instance fields
.field private final extensionFileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;"
        }
    .end annotation
.end field

.field private libraryFile:Ljava/io/File;

.field private propertyName:Ljava/lang/String;

.field private requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$execute$0(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .registers 3

    .line 111
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$execute$1(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z
    .registers 3

    .line 117
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z

    move-result v0

    return v0
.end method

.method private validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    if-eqz v0, :cond_45

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    if-nez v0, :cond_1b

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 140
    :cond_12
    return-void

    .line 133
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File attribute not specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_12

    .line 138
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\'%s\' is not a file."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 136
    :cond_37
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File \'%s\' does not exist."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 129
    :cond_45
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Extension element must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addConfiguredExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .registers 4

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    if-nez v0, :cond_7

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    .line 85
    return-void

    .line 81
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not specify extension to search for multiple times."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredExtensionSet(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->validate()V

    .line 105
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 111
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 116
    :goto_24
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v2

    .line 117
    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->propertyName:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_3c
    return-void

    .line 113
    :cond_3d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    .line 114
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_24
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    .line 72
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->propertyName:Ljava/lang/String;

    .line 63
    return-void
.end method
