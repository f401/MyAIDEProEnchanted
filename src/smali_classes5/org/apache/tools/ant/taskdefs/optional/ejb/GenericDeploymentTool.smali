.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.super Ljava/lang/Object;
.source "GenericDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;


# static fields
.field public static final ANALYZER_CLASS_FULL:Ljava/lang/String; = "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

.field public static final ANALYZER_CLASS_SUPER:Ljava/lang/String; = "org.apache.tools.ant.util.depend.bcel.AncestorAnalyzer"

.field public static final ANALYZER_FULL:Ljava/lang/String; = "full"

.field public static final ANALYZER_NONE:Ljava/lang/String; = "none"

.field public static final ANALYZER_SUPER:Ljava/lang/String; = "super"

.field public static final DEFAULT_ANALYZER:Ljava/lang/String; = "super"

.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field protected static final EJB_DD:Ljava/lang/String; = "ejb-jar.xml"

.field public static final JAR_COMPRESS_LEVEL:I = 0x9

.field protected static final MANIFEST:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field protected static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private addedfiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private classpathLoader:Ljava/lang/ClassLoader;

.field private config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

.field private dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

.field private destDir:Ljava/io/File;

.field private genericJarSuffix:Ljava/lang/String;

.field private handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v0, "-generic.jar"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->genericJarSuffix:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private createAnalyzer()V
    .registers 8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->analyzer:Ljava/lang/String;

    .line 256
    if-nez v0, :cond_b

    .line 257
    const-string v0, "super"

    .line 260
    :cond_b
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 294
    :goto_13
    return-void

    .line 264
    :cond_14
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c6

    :cond_1c
    :goto_1c
    packed-switch v1, :pswitch_data_d0

    move-object v1, v0

    .line 268
    :goto_20
    :try_start_20
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 280
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 281
    new-instance v2, Lorg/apache/tools/ant/types/Path;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v4}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v5, v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    .line 282
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 281
    invoke-interface {v0, v2}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V
    :try_end_5b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_20 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5b} :catch_9e

    goto :goto_13

    .line 284
    :catch_5c
    move-exception v0

    .line 285
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 286
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load dependency analyzer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - dependent class not found: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto :goto_13

    .line 264
    :sswitch_82
    const-string v4, "super"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v1, v2

    goto :goto_1c

    :sswitch_8c
    const-string v2, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v3

    goto :goto_1c

    .line 270
    :pswitch_96  #0x1
    const-string v0, "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

    move-object v1, v0

    .line 271
    goto :goto_20

    .line 267
    :pswitch_9a  #0x0
    const-string v0, "org.apache.tools.ant.util.depend.bcel.AncestorAnalyzer"

    move-object v1, v0

    goto :goto_20

    .line 289
    :catch_9e
    move-exception v0

    .line 290
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 291
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load dependency analyzer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - exception: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto/16 :goto_13

    .line 264
    nop

    :sswitch_data_c6
    .sparse-switch
        0x30228f -> :sswitch_8c
        0x68b6f7b -> :sswitch_82
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_9a  #00000000
        :pswitch_96  #00000001
    .end packed-switch
.end method


# virtual methods
.method protected addFileToJar(Ljava/util/jar/JarOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 328
    :try_start_9
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_47

    move-result-object v1

    .line 330
    :try_start_14
    new-instance v2, Ljava/util/zip/ZipEntry;

    .line 331
    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v2}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 336
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 339
    :cond_28
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/jar/JarOutputStream;->write([BII)V

    .line 340
    const/4 v0, 0x0

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 341
    const/4 v3, -0x1

    if-ne v0, v3, :cond_28

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_40

    .line 345
    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_47

    .line 352
    :cond_3f
    :goto_3f
    return-void

    .line 328
    :catchall_40
    move-exception v0

    if-eqz v1, :cond_46

    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_86

    :cond_46
    :goto_46
    :try_start_46
    throw v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_47} :catch_47

    .line 345
    :catch_47
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: IOException while adding entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to jarfile from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_3f

    .line 328
    :catchall_86
    move-exception v1

    goto :goto_46
.end method

.method protected addSupportClasses(Ljava/util/Hashtable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 523
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->supportFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 524
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v3

    .line 525
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v5, :cond_e

    aget-object v6, v4, v0

    .line 527
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 530
    :cond_37
    return-void
.end method

.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 627
    return-void
.end method

.method protected checkAndAddDependants(Ljava/util/Hashtable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/16 v6, 0x2f

    const/16 v5, 0x2e

    .line 823
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    if-nez v0, :cond_9

    .line 849
    :cond_8
    return-void

    .line 827
    :cond_9
    invoke-interface {v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->reset()V

    .line 829
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 830
    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 831
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".class"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 833
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 834
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-interface {v2, v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addRootClass(Ljava/lang/String;)V

    goto :goto_14

    .line 840
    :cond_48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-interface {v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->getClassDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 842
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 844
    invoke-virtual {p1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dependent class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_56
.end method

.method protected checkConfiguration(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 483
    return-void
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    .line 306
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->createAnalyzer()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    .line 308
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_11

    .line 203
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 205
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoaderForBuild()Ljava/lang/ClassLoader;
    .registers 3

    .line 858
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    .line 871
    :goto_4
    return-object v0

    .line 861
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 864
    if-nez v0, :cond_18

    .line 865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    .line 871
    :goto_15
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    goto :goto_4

    .line 868
    :cond_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    goto :goto_15
.end method

.method protected getCombinedClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 225
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_e

    .line 226
    if-nez v0, :cond_f

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 232
    :cond_e
    :goto_e
    return-object v0

    .line 229
    :cond_f
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_e
.end method

.method protected getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;
    .registers 2

    .line 175
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    return-object v0
.end method

.method protected getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .registers 6

    .line 360
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;-><init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    .line 362
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    .line 365
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;

    .line 366
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 368
    :cond_2e
    return-object v1
.end method

.method protected getDestDir()Ljava/io/File;
    .registers 2

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    return-object v0
.end method

.method protected getJarBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x2f

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 544
    const-string v0, ""

    .line 547
    const-string v1, "basejarname"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 548
    const/16 v1, 0x5c

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 550
    if-eq v1, v3, :cond_28

    .line 551
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    :cond_3b
    :goto_3b
    return-object v0

    .line 554
    :cond_3c
    const-string v1, "descriptor"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 555
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 556
    if-eq v0, v3, :cond_63

    .line 558
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 564
    :goto_5c
    if-eq v0, v3, :cond_6c

    .line 565
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 561
    :cond_63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_5c

    .line 567
    :cond_6c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to determine jar name from descriptor \"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 571
    :cond_79
    const-string v1, "directory"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 572
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 574
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 576
    if-eq v1, v3, :cond_b1

    .line 579
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 580
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 581
    if-eq v1, v3, :cond_3b

    .line 582
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 577
    :cond_b1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to determine directory name holding descriptor"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_b9
    const-string v1, "ejb-name"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 586
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getEjbName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b
.end method

.method protected getLocation()Lorg/apache/tools/ant/Location;
    .registers 2

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    return-object v0
.end method

.method protected getManifestFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 696
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "manifest.mf"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 704
    :goto_22
    return-object v0

    .line 701
    :cond_23
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->manifest:Ljava/io/File;

    if-eqz v0, :cond_2e

    .line 702
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->manifest:Ljava/io/File;

    goto :goto_22

    .line 704
    :cond_2e
    const/4 v0, 0x0

    goto :goto_22
.end method

.method protected getPublicId()Ljava/lang/String;
    .registers 2

    .line 681
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTask()Lorg/apache/tools/ant/Task;
    .registers 2

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    return-object v0
.end method

.method public getVendorDDPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v3, 0x2f

    .line 601
    const/4 v0, 0x0

    .line 603
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    :cond_26
    :goto_26
    return-object v0

    .line 605
    :cond_27
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "basejarname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 606
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ejb-name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 607
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "directory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 608
    :cond_57
    const/16 v0, 0x5c

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 610
    const/4 v1, -0x1

    if-ne v0, v1, :cond_67

    .line 611
    const-string v0, ""

    goto :goto_26

    .line 613
    :cond_67
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 637
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->genericJarSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method protected log(Ljava/lang/String;I)V
    .registers 4

    .line 242
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method protected needToRebuild(Ljava/util/Hashtable;Ljava/io/File;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    .line 656
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 657
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 661
    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 662
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_13

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build needed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is out of date"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    move v0, v1

    .line 670
    :goto_46
    return v0

    .line 668
    :cond_47
    const/4 v0, 0x0

    goto :goto_46

    :cond_49
    move v0, v1

    .line 670
    goto :goto_46
.end method

.method protected parseEjbFiles(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)Ljava/util/Hashtable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/parsers/SAXParser;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 506
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    .line 508
    :try_start_14
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p2, v0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 509
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getFiles()Ljava/util/Hashtable;
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_2a

    move-result-object v0

    .line 510
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 509
    :cond_29
    return-object v0

    .line 506
    :catchall_2a
    move-exception v0

    if-eqz v1, :cond_30

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    :cond_30
    :goto_30
    throw v0

    :catchall_31
    move-exception v1

    goto :goto_30
.end method

.method public processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .registers 8

    .line 386
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->checkConfiguration(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 389
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    .line 392
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->parseEjbFiles(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)Ljava/util/Hashtable;

    move-result-object v2

    .line 395
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addSupportClasses(Ljava/util/Hashtable;)V

    .line 398
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getJarBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorDDPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getManifestFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 403
    if-eqz v3, :cond_27

    .line 404
    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_27
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "META-INF/ejb-jar.xml"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->checkAndAddDependants(Ljava/util/Hashtable;)V

    .line 419
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-boolean v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->flatDestDir:Z

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    .line 420
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 421
    const/4 v3, -0x1

    if-ne v1, v3, :cond_51

    .line 422
    const/4 v1, 0x0

    .line 425
    :cond_51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 426
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_59
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 432
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->needToRebuild(Ljava/util/Hashtable;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "building "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getPublicId()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 461
    :goto_94
    return-void

    .line 446
    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is up to date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_ae
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_ae} :catch_af
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_ae} :catch_d3

    goto :goto_94

    .line 449
    :catch_af
    move-exception v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAXException while parsing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. This probably indicates badly-formed XML.  Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 455
    :catch_d3
    move-exception v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException while parsing\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.  This probably indicates that the descriptor doesn\'t exist. Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V
    .registers 2

    .line 380
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 215
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    .line 139
    return-void
.end method

.method public setGenericJarSuffix(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->genericJarSuffix:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setTask(Lorg/apache/tools/ant/Task;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    .line 158
    return-void
.end method

.method protected usingBaseJarName()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public validateConfigured()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 887
    return-void

    .line 883
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A valid destination directory must be specified using the \"destdir\" attribute."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 720
    const-string v4, "META-INF/MANIFEST.MF"

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    if-nez v0, :cond_ee

    .line 721
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    .line 732
    :goto_d
    :try_start_d
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 733
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 735
    :cond_16
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 736
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_20} :catch_125

    .line 738
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 739
    :try_start_22
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 742
    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 743
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3c} :catch_176
    .catchall {:try_start_22 .. :try_end_3c} :catchall_179

    move-result-object v0

    .line 753
    :goto_3d
    :try_start_3d
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_17c
    .catchall {:try_start_3d .. :try_end_42} :catchall_17e

    .line 757
    if-eqz v0, :cond_47

    .line 758
    :try_start_44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 764
    :cond_47
    new-instance v5, Ljava/util/jar/JarOutputStream;

    .line 765
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_57} :catch_125

    .line 766
    const/16 v0, 0x8

    :try_start_59
    invoke-virtual {v5, v0}, Ljava/util/jar/JarOutputStream;->setMethod(I)V

    .line 769
    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 770
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 771
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 774
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    .line 776
    invoke-virtual {p0, v5, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addFileToJar(Ljava/util/jar/JarOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 779
    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/InnerClassFilenameFilter;

    .line 780
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/InnerClassFilenameFilter;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 782
    invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    .line 783
    if-eqz v7, :cond_64

    .line 784
    array-length v8, v7
    :try_end_b3
    .catchall {:try_start_59 .. :try_end_b3} :catchall_120

    const/4 v2, 0x0

    :goto_b4
    if-ge v2, v8, :cond_64

    aget-object v3, v7, v2

    .line 786
    :try_start_b8
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_120

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 788
    if-gez v0, :cond_102

    move-object v1, v3

    .line 795
    :goto_c5
    :try_start_c5
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v3, v3, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding innerclass file \'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x3

    invoke-virtual {p0, v3, v9}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    .line 800
    invoke-virtual {p0, v5, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addFileToJar(Ljava/util/jar/JarOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_c5 .. :try_end_eb} :catchall_182

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 723
    :cond_ee
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_d

    .line 745
    :cond_f3
    :try_start_f3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/org/apache/tools/ant/defaultManifest.mf"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_fc} :catch_176
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_179

    move-result-object v2

    .line 747
    if-eqz v2, :cond_14d

    move-object v0, v2

    goto/16 :goto_3d

    .line 791
    :cond_102
    :try_start_102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_107
    .catchall {:try_start_102 .. :try_end_107} :catchall_180

    const/4 v10, 0x0

    :try_start_108
    invoke-virtual {v1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11a
    .catchall {:try_start_108 .. :try_end_11a} :catchall_182

    move-result-object v1

    goto :goto_c5

    .line 804
    :cond_11c
    :try_start_11c
    invoke-virtual {v5}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_125

    .line 811
    return-void

    .line 764
    :catchall_120
    move-exception v0

    :goto_121
    :try_start_121
    invoke-virtual {v5}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_174

    :goto_124
    :try_start_124
    throw v0
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_125} :catch_125

    .line 805
    :catch_125
    move-exception v0

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException while processing ejb-jar file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 748
    :cond_14d
    :try_start_14d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Could not find default manifest: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/org/apache/tools/ant/defaultManifest.mf"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_15d} :catch_15d
    .catchall {:try_start_14d .. :try_end_15d} :catchall_179

    .line 754
    :catch_15d
    move-exception v1

    move-object v0, v2

    .line 755
    :goto_15f
    :try_start_15f
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Unable to read manifest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_16b
    .catchall {:try_start_15f .. :try_end_16b} :catchall_16b

    .line 757
    :catchall_16b
    move-exception v1

    move-object v2, v0

    :goto_16d
    move-object v0, v2

    :goto_16e
    if-eqz v0, :cond_173

    .line 758
    :try_start_170
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 760
    :cond_173
    throw v1
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_174} :catch_125

    .line 764
    :catchall_174
    move-exception v1

    goto :goto_124

    .line 754
    :catch_176
    move-exception v1

    move-object v0, v3

    goto :goto_15f

    .line 757
    :catchall_179
    move-exception v0

    move-object v1, v0

    goto :goto_16d

    .line 754
    :catch_17c
    move-exception v1

    goto :goto_15f

    .line 757
    :catchall_17e
    move-exception v1

    goto :goto_16e

    .line 764
    :catchall_180
    move-exception v0

    goto :goto_121

    :catchall_182
    move-exception v0

    goto :goto_121
.end method
