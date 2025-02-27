.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "WebsphereDeploymentTool.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final PUBLICID_EJB11:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field public static final PUBLICID_EJB20:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

.field protected static final SCHEMA_DIR:Ljava/lang/String; = "Schema/"

.field protected static final WAS_BND:Ljava/lang/String; = "ibm-ejb-jar-bnd.xmi"

.field protected static final WAS_CMP_MAP:Ljava/lang/String; = "Map.mapxmi"

.field protected static final WAS_CMP_SCHEMA:Ljava/lang/String; = "Schema.dbxmi"

.field protected static final WAS_EXT:Ljava/lang/String; = "ibm-ejb-jar-ext.xmi"


# instance fields
.field private alwaysRebuild:Z

.field private codegen:Z

.field private dbName:Ljava/lang/String;

.field private dbSchema:Ljava/lang/String;

.field private dbVendor:Ljava/lang/String;

.field private ejb11DTD:Ljava/lang/String;

.field private ejbdeploy:Z

.field private jarSuffix:Ljava/lang/String;

.field private keepGeneric:Z

.field private newCMP:Z

.field private noinform:Z

.field private novalidate:Z

.field private nowarn:Z

.field private quiet:Z

.field private rmicOptions:Ljava/lang/String;

.field private tempdir:Ljava/lang/String;

.field private trace:Z

.field private use35MappingRules:Z

.field private wasClasspath:Lorg/apache/tools/ant/types/Path;

.field private websphereHome:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    .line 84
    const-string v0, ".jar"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->jarSuffix:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->keepGeneric:Z

    .line 93
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->alwaysRebuild:Z

    .line 95
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    .line 98
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    .line 116
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->quiet:Z

    .line 137
    const-string v0, "_ejbdeploy_temp"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->tempdir:Ljava/lang/String;

    return-void
.end method

.method private buildWebsphereJar(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    .line 528
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    if-eqz v0, :cond_ce

    .line 529
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 531
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-Xms64m"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-Xmx128m"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 535
    new-instance v0, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    .line 537
    const-string v2, "websphere.lib.dir"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 538
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->websphereHome:Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 543
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->websphereHome:Ljava/io/File;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setDir(Ljava/io/File;)V

    .line 546
    const-string v0, "ejbdeploy"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 547
    const-string v0, "com.ibm.etools.ejbdeploy.EJBDeploy"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->tempdir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 554
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 555
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-cp"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 559
    :cond_a1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    .line 561
    if-nez v0, :cond_a9

    .line 562
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 565
    :cond_a9
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 566
    if-eqz v0, :cond_b2

    .line 567
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 570
    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling websphere.ejbdeploy for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 573
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ce} :catch_cf

    .line 580
    :cond_ce
    return-void

    .line 575
    :catch_cf
    move-exception v0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while calling ejbdeploy. Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic lambda$getDescriptorHandler$0(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;)V
    .registers 4

    .line 358
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getWebsphereDescriptorHandler$1(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;)V
    .registers 4

    .line 375
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isRebuildRequired$2(Ljava/util/jar/JarEntry;)Ljava/lang/String;
    .registers 4

    .line 672
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isRebuildRequired$3(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 1

    .line 673
    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$4(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 2

    .line 673
    return-object p1
.end method

.method static synthetic lambda$isRebuildRequired$5(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 1

    .line 677
    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$6(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 2

    .line 677
    return-object p1
.end method


# virtual methods
.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 8
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

    const/4 v4, 0x3

    .line 388
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->usingBaseJarName()Z

    move-result v1

    const-string v0, ""

    if-eqz v1, :cond_b

    const-string p2, ""

    .line 389
    :cond_b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    if-nez v1, :cond_6c

    .line 392
    :goto_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ibm-ejb-jar-ext.xmi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 395
    const-string v1, "META-INF/ibm-ejb-jar-ext.xmi"

    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :goto_36
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ibm-ejb-jar-bnd.xmi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 405
    const-string v1, "META-INF/ibm-ejb-jar-bnd.xmi"

    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :goto_5d
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    if-nez v1, :cond_b2

    .line 413
    const-string v0, "The old method for locating CMP files has been DEPRECATED."

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 415
    const-string v0, "Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 448
    :goto_6b
    return-void

    .line 389
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 398
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate websphere extensions. It was expected to be in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_36

    .line 408
    :cond_99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate websphere bindings. It was expected to be in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_5d

    .line 421
    :cond_b2
    :try_start_b2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Map.mapxmi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 425
    const-string v2, "META-INF/Map.mapxmi"

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :goto_dc
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Schema.dbxmi"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 436
    const-string v0, "META-INF/Schema/Schema.dbxmi"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_106} :catch_108

    goto/16 :goto_6b

    .line 443
    :catch_108
    move-exception v0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while adding Vendor specific files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 428
    :cond_124
    :try_start_124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate the websphere Map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_dc

    .line 439
    :cond_13e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate the websphere Schema: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_157} :catch_108

    goto/16 :goto_6b
.end method

.method public createWASClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_13

    .line 148
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    .line 150
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoaderFromJar(Ljava/io/File;)Ljava/lang/ClassLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 822
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 824
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_19

    .line 827
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 830
    :cond_19
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .registers 5

    .line 353
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;-><init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    .line 356
    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejb11DTD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 359
    return-object v0
.end method

.method protected getOptions()Ljava/lang/String;
    .registers 3

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 472
    const-string v1, " -dbvendor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_13
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbName:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 475
    const-string v1, " -dbname \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_26
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbSchema:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 479
    const-string v1, " -dbschema \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_39
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->codegen:Z

    if-eqz v1, :cond_42

    .line 483
    const-string v1, " -codegen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_42
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->quiet:Z

    if-eqz v1, :cond_4b

    .line 487
    const-string v1, " -quiet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_4b
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->novalidate:Z

    if-eqz v1, :cond_54

    .line 491
    const-string v1, " -novalidate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_54
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->nowarn:Z

    if-eqz v1, :cond_5d

    .line 495
    const-string v1, " -nowarn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_5d
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->noinform:Z

    if-eqz v1, :cond_66

    .line 499
    const-string v1, " -noinform"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_66
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->trace:Z

    if-eqz v1, :cond_6f

    .line 503
    const-string v1, " -trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_6f
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->use35MappingRules:Z

    if-eqz v1, :cond_78

    .line 507
    const-string v1, " -35"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_78
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->rmicOptions:Ljava/lang/String;

    if-eqz v1, :cond_8b

    .line 511
    const-string v1, " -rmic \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->rmicOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 459
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method protected getWebsphereDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .registers 5

    .line 368
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$1;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    .line 375
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 376
    return-object v0
.end method

.method protected isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z
    .registers 45

    .line 652
    const/16 v39, 0x0

    .line 654
    const/16 v29, 0x0

    const/16 v34, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    .line 655
    const/16 v30, 0x0

    const/16 v35, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    .line 656
    const/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/4 v9, 0x0

    .line 657
    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v37, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x0

    .line 658
    const/16 v33, 0x0

    const/16 v38, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x0

    .line 661
    :try_start_3c
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Checking if websphere Jar needs to be rebuilt for jar "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 661
    const/16 v41, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_359

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v40

    if-eqz v40, :cond_359

    .line 665
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_359

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v40

    if-eqz v40, :cond_359

    .line 667
    new-instance v12, Ljava/util/jar/JarFile;
    :try_end_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_76} :catch_380
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_76} :catch_375
    .catchall {:try_start_3c .. :try_end_76} :catchall_36d

    :try_start_76
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_76 .. :try_end_7b} :catch_3ab
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7b} :catch_3d6
    .catchall {:try_start_76 .. :try_end_7b} :catchall_344

    .line 668
    :try_start_7b
    new-instance v13, Ljava/util/jar/JarFile;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_82
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7b .. :try_end_82} :catch_3b8
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_82} :catch_3e3
    .catchall {:try_start_7b .. :try_end_82} :catchall_401

    .line 671
    :try_start_82
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda4;

    sget-object v6, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda5;

    sget-object v7, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda0;

    .line 672
    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 676
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda4;

    sget-object v7, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda6;

    sget-object v8, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;

    .line 677
    invoke-static {v6, v7, v8}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 680
    invoke-virtual/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getClassLoaderFromJar(Ljava/io/File;)Ljava/lang/ClassLoader;
    :try_end_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_82 .. :try_end_ad} :catch_3c3
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_ad} :catch_3ee
    .catchall {:try_start_82 .. :try_end_ad} :catchall_40d

    move-result-object v11

    .line 682
    :try_start_ae
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 683
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ae .. :try_end_ba} :catch_3cc
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_ba} :catch_3f7
    .catchall {:try_start_ae .. :try_end_ba} :catchall_417

    move-result-object v14

    :cond_bb
    :goto_bb
    :try_start_bb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 684
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bb .. :try_end_ca} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_ca} :catch_3fe
    .catchall {:try_start_bb .. :try_end_ca} :catchall_420

    move-result v7

    if-nez v7, :cond_1e6

    .line 686
    :try_start_cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not present in websphere jar"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_e9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cd .. :try_end_e9} :catch_430
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_e9} :catch_433
    .catchall {:try_start_cd .. :try_end_e9} :catchall_1c6

    .line 688
    const/4 v14, 0x1

    .line 683
    :goto_ea
    if-nez v14, :cond_333

    .line 731
    :try_start_ec
    const-string v4, "No rebuild needed - updating jar"

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 732
    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".temp"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ec .. :try_end_10e} :catch_42a
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_10e} :catch_42d
    .catchall {:try_start_ec .. :try_end_10e} :catchall_32d

    .line 733
    :try_start_10e
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_111
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10e .. :try_end_111} :catch_329
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_326
    .catchall {:try_start_10e .. :try_end_111} :catchall_321

    move-result v4

    if-eqz v4, :cond_117

    .line 734
    :try_start_114
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_117
    .catch Ljava/lang/ClassNotFoundException; {:try_start_114 .. :try_end_117} :catch_2cc
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_2af
    .catchall {:try_start_114 .. :try_end_117} :catchall_2aa

    .line 737
    :cond_117
    :try_start_117
    new-instance v7, Ljava/util/jar/JarOutputStream;

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v8}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_127
    .catch Ljava/lang/ClassNotFoundException; {:try_start_117 .. :try_end_127} :catch_329
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_127} :catch_326
    .catchall {:try_start_117 .. :try_end_127} :catchall_321

    .line 738
    const/4 v4, 0x0

    :try_start_128
    invoke-virtual {v7, v4}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 741
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_133
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 742
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCompressedSize()J
    :try_end_142
    .catch Ljava/lang/ClassNotFoundException; {:try_start_128 .. :try_end_142} :catch_31c
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_142} :catch_318
    .catchall {:try_start_128 .. :try_end_142} :catchall_313

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v5, v16, v18

    if-eqz v5, :cond_155

    .line 743
    :try_start_149
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_150
    .catch Ljava/lang/ClassNotFoundException; {:try_start_149 .. :try_end_150} :catch_2d7
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_150} :catch_436
    .catchall {:try_start_149 .. :try_end_150} :catchall_3a6

    move-result-wide v18

    cmp-long v5, v16, v18

    if-nez v5, :cond_2d0

    .line 744
    :cond_155
    const/4 v5, 0x0

    :try_start_156
    invoke-virtual {v7, v5}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 751
    :goto_159
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_160
    .catch Ljava/lang/ClassNotFoundException; {:try_start_156 .. :try_end_160} :catch_31c
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_160} :catch_318
    .catchall {:try_start_156 .. :try_end_160} :catchall_313

    move-result v5

    if-eqz v5, :cond_2dc

    .line 752
    :try_start_163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating Bean class from generic Jar "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 755
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 756
    invoke-virtual {v12, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_18b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_163 .. :try_end_18b} :catch_2d7
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_18b} :catch_436
    .catchall {:try_start_163 .. :try_end_18b} :catchall_3a6

    move-result-object v5

    .line 762
    :goto_18c
    :try_start_18c
    new-instance v9, Ljava/util/jar/JarEntry;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 764
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 766
    :goto_19c
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_19f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18c .. :try_end_19f} :catch_31c
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_19f} :catch_318
    .catchall {:try_start_18c .. :try_end_19f} :catchall_313

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2e2

    .line 767
    const/4 v10, 0x0

    :try_start_1a4
    invoke-virtual {v7, v4, v10, v9}, Ljava/util/jar/JarOutputStream;->write([BII)V
    :try_end_1a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a4 .. :try_end_1a7} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_2e7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_2eb

    goto :goto_19c

    .line 778
    :catch_1a8
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    .line 779
    :goto_1ab
    :try_start_1ab
    new-instance v5, Lorg/apache/tools/ant/BuildException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassNotFoundException while processing ejb-jar file. Details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1c6
    .catchall {:try_start_1ab .. :try_end_1c6} :catchall_1c6

    .line 790
    :catchall_1c6
    move-exception v15

    :goto_1c7
    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    :goto_1ca
    invoke-static {v12}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 791
    invoke-static {v13}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 792
    invoke-static {v14}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 794
    if-eqz v14, :cond_1dc

    .line 796
    :try_start_1d5
    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1dc} :catch_38d

    .line 799
    :cond_1dc
    :goto_1dc
    instance-of v5, v4, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v5, :cond_1e5

    .line 804
    check-cast v4, Lorg/apache/tools/ant/AntClassLoader;

    .line 805
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 807
    :cond_1e5
    throw v15

    .line 693
    :cond_1e6
    :try_start_1e6
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 694
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    .line 696
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getCrc()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getCrc()J
    :try_end_1f9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e6 .. :try_end_1f9} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1f9} :catch_3fe
    .catchall {:try_start_1e6 .. :try_end_1f9} :catchall_420

    move-result-wide v18

    cmp-long v16, v16, v18

    if-nez v16, :cond_20a

    .line 697
    :try_start_1fe
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_205
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1fe .. :try_end_205} :catch_430
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_205} :catch_433
    .catchall {:try_start_1fe .. :try_end_205} :catchall_1c6

    move-result-wide v18

    cmp-long v8, v16, v18

    if-eqz v8, :cond_bb

    .line 699
    :cond_20a
    :try_start_20a
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v16, ".class"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_215
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20a .. :try_end_215} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_215} :catch_3fe
    .catchall {:try_start_20a .. :try_end_215} :catchall_420

    move-result v8

    if-eqz v8, :cond_27b

    .line 701
    :try_start_218
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;
    :try_end_21b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_218 .. :try_end_21b} :catch_39a
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21b} :catch_39d
    .catchall {:try_start_218 .. :try_end_21b} :catchall_275

    move-result-object v8

    :try_start_21c
    sget-char v16, Ljava/io/File;->separatorChar:C
    :try_end_21e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21c .. :try_end_21e} :catch_3a0
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21e} :catch_3a3
    .catchall {:try_start_21c .. :try_end_21e} :catchall_26f

    const/16 v17, 0x2e

    :try_start_220
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 704
    const/16 v16, 0x0

    const-string v17, ".class"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 706
    invoke-virtual {v11, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 708
    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v16

    if-eqz v16, :cond_267

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interface "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has changed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 712
    const/4 v14, 0x1

    .line 713
    goto/16 :goto_ea

    .line 716
    :cond_267
    invoke-interface {v15, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_bb

    .line 778
    :catch_26c
    move-exception v4

    goto/16 :goto_1ab

    .line 790
    :catchall_26f
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    :catchall_275
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    .line 719
    :cond_27b
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43b

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non class file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has changed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_2a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_220 .. :try_end_2a7} :catch_26c
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_2a7} :catch_427
    .catchall {:try_start_220 .. :try_end_2a7} :catchall_33e

    .line 723
    const/4 v14, 0x1

    goto/16 :goto_ea

    .line 790
    :catchall_2aa
    move-exception v15

    move-object v4, v11

    move-object v14, v10

    goto/16 :goto_1ca

    .line 783
    :catch_2af
    move-exception v4

    move-object v9, v6

    .line 784
    :goto_2b1
    :try_start_2b1
    new-instance v5, Lorg/apache/tools/ant/BuildException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while processing ejb-jar file . Details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2cc
    .catchall {:try_start_2b1 .. :try_end_2cc} :catchall_1c6

    .line 778
    :catch_2cc
    move-exception v4

    move-object v9, v6

    goto/16 :goto_1ab

    .line 746
    :cond_2d0
    const/16 v5, 0x9

    :try_start_2d2
    invoke-virtual {v7, v5}, Ljava/util/jar/JarOutputStream;->setLevel(I)V
    :try_end_2d5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d2 .. :try_end_2d5} :catch_2d7
    .catch Ljava/io/IOException; {:try_start_2d2 .. :try_end_2d5} :catch_436
    .catchall {:try_start_2d2 .. :try_end_2d5} :catchall_3a6

    goto/16 :goto_159

    .line 778
    :catch_2d7
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_1ab

    .line 760
    :cond_2dc
    :try_start_2dc
    invoke-virtual {v13, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2df
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2dc .. :try_end_2df} :catch_31c
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_2df} :catch_318
    .catchall {:try_start_2dc .. :try_end_2df} :catchall_313

    move-result-object v5

    goto/16 :goto_18c

    .line 769
    :cond_2e2
    :try_start_2e2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2e5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e2 .. :try_end_2e5} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_2e5} :catch_2e7
    .catchall {:try_start_2e2 .. :try_end_2e5} :catchall_2eb

    goto/16 :goto_133

    .line 783
    :catch_2e7
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_2b1

    .line 790
    :catchall_2eb
    move-exception v15

    move-object v4, v11

    move-object v14, v7

    goto/16 :goto_1ca

    :cond_2f0
    move-object v5, v6

    :goto_2f1
    move-object v4, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v5

    move v10, v14

    move-object v15, v7

    :goto_2f7
    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 791
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 792
    invoke-static {v15}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 794
    if-eqz v15, :cond_309

    .line 796
    :try_start_302
    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p2

    invoke-virtual {v5, v9, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_302 .. :try_end_309} :catch_360

    .line 802
    :cond_309
    :goto_309
    instance-of v5, v4, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v5, :cond_312

    .line 804
    check-cast v4, Lorg/apache/tools/ant/AntClassLoader;

    .line 805
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 808
    :cond_312
    return v10

    .line 790
    :catchall_313
    move-exception v15

    move-object v4, v11

    move-object v14, v7

    goto/16 :goto_1ca

    .line 783
    :catch_318
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_2b1

    .line 778
    :catch_31c
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_1ab

    .line 790
    :catchall_321
    move-exception v15

    move-object v4, v11

    move-object v14, v10

    goto/16 :goto_1ca

    .line 783
    :catch_326
    move-exception v4

    move-object v9, v6

    goto :goto_2b1

    .line 778
    :catch_329
    move-exception v4

    move-object v9, v6

    goto/16 :goto_1ab

    .line 790
    :catchall_32d
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    .line 772
    :cond_333
    :try_start_333
    const-string v4, "websphere Jar rebuild needed due to changed interface or XML"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_33b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_333 .. :try_end_33b} :catch_26c
    .catch Ljava/io/IOException; {:try_start_333 .. :try_end_33b} :catch_427
    .catchall {:try_start_333 .. :try_end_33b} :catchall_33e

    move-object v5, v9

    move-object v7, v10

    goto :goto_2f1

    .line 790
    :catchall_33e
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    :catchall_344
    move-exception v15

    move-object/from16 v8, v24

    move-object/from16 v13, v25

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    :goto_34f
    move-object v5, v4

    move-object v7, v6

    move-object v9, v8

    move-object v10, v13

    :goto_353
    move-object v4, v7

    move-object v12, v9

    move-object v13, v10

    move-object v6, v5

    goto/16 :goto_1ca

    .line 664
    :cond_359
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    move-object v8, v7

    move-object v15, v11

    goto :goto_2f7

    .line 797
    :catch_360
    move-exception v5

    .line 798
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 799
    const/4 v10, 0x1

    goto :goto_309

    .line 790
    :catchall_36d
    move-exception v4

    move-object v5, v6

    move-object v7, v8

    move-object v9, v11

    move-object v10, v12

    move-object v14, v13

    move-object v15, v4

    goto :goto_353

    .line 783
    :catch_375
    move-exception v4

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto/16 :goto_2b1

    .line 778
    :catch_380
    move-exception v4

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    goto/16 :goto_1ab

    .line 797
    :catch_38d
    move-exception v5

    .line 798
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto/16 :goto_1dc

    .line 778
    :catch_39a
    move-exception v4

    goto/16 :goto_1ab

    .line 783
    :catch_39d
    move-exception v4

    goto/16 :goto_2b1

    .line 778
    :catch_3a0
    move-exception v4

    goto/16 :goto_1ab

    .line 783
    :catch_3a3
    move-exception v4

    goto/16 :goto_2b1

    .line 790
    :catchall_3a6
    move-exception v15

    move-object v10, v7

    move-object v9, v6

    goto/16 :goto_1c7

    .line 778
    :catch_3ab
    move-exception v4

    move-object/from16 v12, v34

    move-object/from16 v13, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_1ab

    :catch_3b8
    move-exception v4

    move-object/from16 v13, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_1ab

    :catch_3c3
    move-exception v4

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_1ab

    :catch_3cc
    move-exception v4

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_1ab

    :catch_3d3
    move-exception v4

    goto/16 :goto_1ab

    .line 783
    :catch_3d6
    move-exception v4

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_2b1

    :catch_3e3
    move-exception v4

    move-object/from16 v13, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_2b1

    :catch_3ee
    move-exception v4

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_2b1

    :catch_3f7
    move-exception v4

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    goto/16 :goto_2b1

    :catch_3fe
    move-exception v4

    goto/16 :goto_2b1

    .line 790
    :catchall_401
    move-exception v15

    move-object v8, v12

    move-object/from16 v13, v25

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    goto/16 :goto_34f

    :catchall_40d
    move-exception v15

    move-object v8, v12

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    goto/16 :goto_34f

    :catchall_417
    move-exception v15

    move-object v8, v12

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object v6, v11

    goto/16 :goto_34f

    :catchall_420
    move-exception v15

    move-object v8, v12

    move-object v4, v9

    move-object v14, v10

    move-object v6, v11

    goto/16 :goto_34f

    .line 783
    :catch_427
    move-exception v4

    goto/16 :goto_2b1

    .line 778
    :catch_42a
    move-exception v4

    goto/16 :goto_1ab

    .line 783
    :catch_42d
    move-exception v4

    goto/16 :goto_2b1

    .line 778
    :catch_430
    move-exception v4

    goto/16 :goto_1ab

    .line 783
    :catch_433
    move-exception v4

    goto/16 :goto_2b1

    :catch_436
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_2b1

    :cond_43b
    move/from16 v14, v39

    goto/16 :goto_ea
.end method

.method public setCodegen(Z)V
    .registers 2

    .line 205
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->codegen:Z

    .line 206
    return-void
.end method

.method public setDbname(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbName:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setDbschema(Ljava/lang/String;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbSchema:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setDbvendor(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setEJBdtd(Ljava/lang/String;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejb11DTD:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setEjbdeploy(Z)V
    .registers 2

    .line 306
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    .line 307
    return-void
.end method

.method public setKeepgeneric(Z)V
    .registers 2

    .line 296
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->keepGeneric:Z

    .line 297
    return-void
.end method

.method public setNewCMP(Z)V
    .registers 2

    .line 338
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    .line 339
    return-void
.end method

.method public setNoinform(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->noinform:Z

    .line 242
    return-void
.end method

.method public setNovalidate(Z)V
    .registers 2

    .line 223
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->novalidate:Z

    .line 224
    return-void
.end method

.method public setNowarn(Z)V
    .registers 2

    .line 232
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->nowarn:Z

    .line 233
    return-void
.end method

.method public setOldCMP(Z)V
    .registers 3

    .line 325
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    .line 326
    return-void
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 214
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->quiet:Z

    .line 215
    return-void
.end method

.method public setRebuild(Z)V
    .registers 2

    .line 277
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->alwaysRebuild:Z

    .line 278
    return-void
.end method

.method public setRmicoptions(Ljava/lang/String;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->rmicOptions:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->jarSuffix:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setTempdir(Ljava/lang/String;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->tempdir:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setTrace(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->trace:Z

    .line 251
    return-void
.end method

.method public setUse35(Z)V
    .registers 2

    .line 268
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->use35MappingRules:Z

    .line 269
    return-void
.end method

.method public setWASClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    .line 159
    return-void
.end method

.method public validateConfigured()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 614
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->validateConfigured()V

    .line 615
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    if-eqz v0, :cond_25

    .line 616
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "websphere.home"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_26

    .line 621
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->websphereHome:Ljava/io/File;

    .line 623
    :cond_25
    return-void

    .line 618
    :cond_26
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \'websphere.home\' property must be set when \'ejbdeploy=true\'"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 8
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

    .line 587
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    if-eqz v0, :cond_39

    .line 589
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 591
    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 594
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->alwaysRebuild:Z

    if-nez v1, :cond_15

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 595
    :cond_15
    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->buildWebsphereJar(Ljava/io/File;Ljava/io/File;)V

    .line 597
    :cond_18
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->keepGeneric:Z

    if-nez v1, :cond_38

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting generic jar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 606
    :cond_38
    :goto_38
    return-void

    .line 604
    :cond_39
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_38
.end method
