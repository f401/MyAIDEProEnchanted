.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibManifestTask.java"


# static fields
.field private static final CREATED_BY:Ljava/lang/String; = "Created-By"

.field private static final MANIFEST_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;"
        }
    .end annotation
.end field

.field private destFile:Ljava/io/File;

.field private extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

.field private final extraAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final optionals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->dependencies:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->optionals:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extraAttributes:Ljava/util/List;

    return-void
.end method

.method private appendExtensionList(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/lang/String;I)V
    .registers 7

    .line 259
    const/4 v0, 0x0

    invoke-static {v0, p4}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool$$ExternalSyntheticStaticInterfaceCall0;->m(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-virtual {p1, p2, v0}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method private appendExtraAttributes(Ljava/util/jar/Attributes;)V
    .registers 5

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extraAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;

    .line 207
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 209
    :cond_1e
    return-void
.end method

.method private appendLibraryList(Ljava/util/jar/Attributes;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Attributes;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 237
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_29

    .line 239
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/lang/String;Ljava/util/jar/Attributes;)V

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 242
    :cond_29
    return-void
.end method

.method static synthetic lambda$appendExtensionList$0(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toExtensions$1(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .registers 3

    .line 272
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    return-object v0
.end method

.method private toExtensions(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 272
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda1;

    .line 273
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 272
    return-object v0
.end method

.method private validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    if-eqz v0, :cond_23

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    :cond_12
    return-void

    .line 195
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s is not a file."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 192
    :cond_23
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destfile attribute not specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeManifest(Ljava/util/jar/Manifest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 219
    :try_start_d
    invoke-virtual {p1, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_19

    .line 221
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 222
    :cond_18
    return-void

    .line 218
    :catchall_19
    move-exception v0

    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    :cond_1f
    :goto_1f
    throw v0

    :catchall_20
    move-exception v1

    goto :goto_1f
.end method


# virtual methods
.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extraAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public addConfiguredDepends(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addConfiguredExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-nez v0, :cond_b

    .line 114
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 115
    return-void

    .line 111
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not have multiple extensions defined in one library."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredOptions(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->optionals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->validate()V

    .line 153
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    .line 154
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 156
    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apache Ant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    const-string v4, "ant.version"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v3, "Created-By"

    invoke-virtual {v1, v3, v2}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendExtraAttributes(Ljava/util/jar/Attributes;)V

    .line 162
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-eqz v2, :cond_3d

    .line 163
    invoke-static {v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/util/jar/Attributes;)V

    .line 167
    :cond_3d
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->dependencies:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->toExtensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 168
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    const-string v4, "lib"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendExtensionList(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/lang/String;I)V

    .line 169
    const-string v3, "lib"

    invoke-direct {p0, v1, v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendLibraryList(Ljava/util/jar/Attributes;Ljava/lang/String;Ljava/util/List;)V

    .line 173
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->optionals:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->toExtensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 174
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->OPTIONAL_EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    const-string v4, "opt"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendExtensionList(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/lang/String;I)V

    .line 175
    const-string v3, "opt"

    invoke-direct {p0, v1, v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendLibraryList(Ljava/util/jar/Attributes;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    :try_start_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating manifest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->log(Ljava/lang/String;I)V

    .line 179
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->writeManifest(Ljava/util/jar/Manifest;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_87} :catch_88

    .line 182
    return-void

    .line 180
    :catch_88
    move-exception v0

    .line 181
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDestfile(Ljava/io/File;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    .line 98
    return-void
.end method
