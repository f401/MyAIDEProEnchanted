.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "WeblogicDeploymentTool.java"


# static fields
.field protected static final COMPILER_EJB11:Ljava/lang/String; = "weblogic.ejbc"

.field protected static final COMPILER_EJB20:Ljava/lang/String; = "weblogic.ejbc20"

.field protected static final DEFAULT_COMPILER:Ljava/lang/String; = "default"

.field protected static final DEFAULT_WL51_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb/deployment/xml/weblogic-ejb-jar.dtd"

.field protected static final DEFAULT_WL51_EJB11_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb/deployment/xml/ejb-jar.dtd"

.field protected static final DEFAULT_WL60_51_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/weblogic510-ejb-jar.dtd"

.field protected static final DEFAULT_WL60_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/weblogic600-ejb-jar.dtd"

.field protected static final DEFAULT_WL60_EJB11_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/ejb11-jar.dtd"

.field protected static final DEFAULT_WL60_EJB20_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/ejb20-jar.dtd"

.field protected static final DEFAULT_WL70_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/weblogic700-ejb-jar.dtd"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final PUBLICID_EJB11:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field public static final PUBLICID_EJB20:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

.field public static final PUBLICID_WEBLOGIC_EJB510:Ljava/lang/String; = "-//BEA Systems, Inc.//DTD WebLogic 5.1.0 EJB//EN"

.field public static final PUBLICID_WEBLOGIC_EJB600:Ljava/lang/String; = "-//BEA Systems, Inc.//DTD WebLogic 6.0.0 EJB//EN"

.field public static final PUBLICID_WEBLOGIC_EJB700:Ljava/lang/String; = "-//BEA Systems, Inc.//DTD WebLogic 7.0.0 EJB//EN"

.field protected static final WL_CMP_DD:Ljava/lang/String; = "weblogic-cmp-rdbms-jar.xml"

.field protected static final WL_DD:Ljava/lang/String; = "weblogic-ejb-jar.xml"


# instance fields
.field private additionalArgs:Ljava/lang/String;

.field private additionalJvmArgs:Ljava/lang/String;

.field private alwaysRebuild:Z

.field private compiler:Ljava/lang/String;

.field private ejb11DTD:Ljava/lang/String;

.field private ejbcClass:Ljava/lang/String;

.field private jarSuffix:Ljava/lang/String;

.field private jvmDebugLevel:Ljava/lang/Integer;

.field private keepGeneric:Z

.field private keepgenerated:Z

.field private newCMP:Z

.field private noEJBC:Z

.field private outputDir:Ljava/io/File;

.field private sysprops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Environment$Variable;",
            ">;"
        }
    .end annotation
.end field

.field private weblogicDTD:Ljava/lang/String;

.field private wlClasspath:Lorg/apache/tools/ant/types/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    .line 107
    const-string v0, ".jar"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jarSuffix:Ljava/lang/String;

    .line 116
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    .line 122
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    .line 131
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    .line 133
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    .line 138
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    .line 141
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    .line 144
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    .line 154
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    return-void
.end method

.method private buildWeblogicJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    .line 504
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    if-eqz v0, :cond_1a

    .line 506
    :try_start_4
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 507
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    if-nez v0, :cond_10

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_11

    .line 597
    :cond_10
    return-void

    .line 511
    :catch_11
    move-exception v0

    .line 512
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to write EJB jar"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 516
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    .line 519
    :try_start_1c
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 520
    const-string v1, "ejbc"

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Java;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getJvmDebugLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 526
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -Dweblogic.StdoutSeverityLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 529
    :cond_60
    if-nez v0, :cond_6c

    .line 531
    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_67} :catch_133

    move-result v1

    if-eqz v1, :cond_157

    .line 532
    const-string v0, "weblogic.ejbc"

    .line 542
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 544
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    if-eqz v1, :cond_85

    .line 545
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-keepgenerated"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 547
    :cond_85
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    if-nez v1, :cond_181

    .line 550
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v3, "build.compiler"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v3, "jikes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 554
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-compiler"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "jikes"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 557
    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 563
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v3, :cond_d9

    if-eqz v1, :cond_d9

    .line 564
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d9

    .line 565
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-classpath"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 569
    :cond_d9
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    if-nez v1, :cond_19d

    .line 571
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 576
    :goto_f3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 578
    if-nez v1, :cond_fb

    .line 579
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 582
    :cond_fb
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 583
    if-eqz v1, :cond_104

    .line 584
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 587
    :cond_104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 590
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v1

    if-eqz v1, :cond_10

    .line 591
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Ejbc reported an error"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_133} :catch_133

    .line 593
    :catch_133
    move-exception v1

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Details: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 533
    :cond_157
    :try_start_157
    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15c} :catch_133

    move-result v1

    if-eqz v1, :cond_163

    .line 534
    const-string v0, "weblogic.ejbc20"

    goto/16 :goto_6c

    .line 536
    :cond_163
    :try_start_163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized publicId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - using EJB 1.1 compiler"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_17d} :catch_133

    .line 538
    const-string v0, "weblogic.ejbc"

    goto/16 :goto_6c

    .line 557
    :cond_181
    :try_start_181
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 558
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-compiler"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    goto/16 :goto_b1

    .line 573
    :cond_19d
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1aa} :catch_133

    goto/16 :goto_f3
.end method

.method static synthetic lambda$getWeblogicDescriptorHandler$0(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;)V
    .registers 4

    .line 423
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isRebuildRequired$1(Ljava/util/jar/JarEntry;)Ljava/lang/String;
    .registers 4

    .line 686
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isRebuildRequired$2(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 1

    .line 687
    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$3(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 2

    .line 687
    return-object p1
.end method

.method static synthetic lambda$isRebuildRequired$4(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 1

    .line 690
    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$5(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 2

    .line 690
    return-object p1
.end method


# virtual methods
.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

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

    const/4 v3, 0x1

    .line 434
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "weblogic-ejb-jar.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 437
    const-string v0, "META-INF/weblogic-ejb-jar.xml"

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    if-nez v0, :cond_5f

    .line 446
    const-string v0, "The old method for locating CMP files has been DEPRECATED."

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 447
    const-string v0, "Please adjust your weblogic descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 450
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "weblogic-cmp-rdbms-jar.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 453
    const-string v0, "META-INF/weblogic-cmp-rdbms-jar.xml"

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_5e
    :goto_5e
    return-void

    .line 461
    :cond_5f
    :try_start_5f
    const-string v0, "META-INF/ejb-jar.xml"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 462
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 464
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 466
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getWeblogicDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    move-result-object v0

    .line 470
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_85} :catch_9b

    move-result-object v2

    .line 471
    :try_start_86
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_b7

    .line 472
    if-eqz v2, :cond_93

    :try_start_90
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 473
    :cond_93
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getFiles()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9a} :catch_9b

    goto :goto_5e

    .line 474
    :catch_9b
    move-exception v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while adding Vendor specific files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 470
    :catchall_b7
    move-exception v0

    if-eqz v2, :cond_bd

    :try_start_ba
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_d7

    :cond_bd
    :goto_bd
    :try_start_bd
    throw v0
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_be} :catch_9b

    .line 440
    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate weblogic deployment descriptor. It was expected to be in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_5e

    .line 470
    :catchall_d7
    move-exception v1

    goto :goto_bd
.end method

.method public createWLClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_13

    .line 172
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 174
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

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

    .line 833
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 835
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 837
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 839
    if-eqz v1, :cond_19

    .line 840
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 842
    :cond_19
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getEjbcClass()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    return-object v0
.end method

.method public getJvmDebugLevel()Ljava/lang/Integer;
    .registers 2

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 490
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method protected getWeblogicDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .registers 5

    .line 404
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$1;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;Ljava/io/File;)V

    .line 416
    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 5.1.0 EJB//EN"

    const-string v2, "/weblogic/ejb/deployment/xml/weblogic-ejb-jar.dtd"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 5.1.0 EJB//EN"

    const-string v2, "/weblogic/ejb20/dd/xml/weblogic510-ejb-jar.dtd"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 6.0.0 EJB//EN"

    const-string v2, "/weblogic/ejb20/dd/xml/weblogic600-ejb-jar.dtd"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 7.0.0 EJB//EN"

    const-string v2, "/weblogic/ejb20/dd/xml/weblogic700-ejb-jar.dtd"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 5.1.0 EJB//EN"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->weblogicDTD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 6.0.0 EJB//EN"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->weblogicDTD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 424
    return-object v0
.end method

.method protected isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z
    .registers 45

    .line 664
    const/16 v39, 0x0

    .line 666
    const/16 v29, 0x0

    const/16 v34, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    .line 667
    const/16 v30, 0x0

    const/16 v35, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    .line 668
    const/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/4 v9, 0x0

    .line 669
    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v37, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x0

    .line 670
    const/16 v33, 0x0

    const/16 v38, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x0

    .line 673
    :try_start_3c
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Checking if weblogic Jar needs to be rebuilt for jar "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 676
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_365

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v40

    if-eqz v40, :cond_365

    .line 677
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_365

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v40

    if-eqz v40, :cond_365

    .line 679
    new-instance v13, Ljava/util/jar/JarFile;
    :try_end_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_76} :catch_38c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_76} :catch_381
    .catchall {:try_start_3c .. :try_end_76} :catchall_379

    :try_start_76
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_76 .. :try_end_7b} :catch_3b7
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7b} :catch_3e2
    .catchall {:try_start_76 .. :try_end_7b} :catchall_350

    .line 680
    :try_start_7b
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_82
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7b .. :try_end_82} :catch_3c4
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_82} :catch_3ef
    .catchall {:try_start_7b .. :try_end_82} :catchall_40d

    .line 682
    :try_start_82
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 685
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda5;

    sget-object v6, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;

    sget-object v7, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda0;

    .line 686
    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 689
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda4;

    sget-object v7, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda7;

    sget-object v8, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda1;

    invoke-static {v6, v7, v8}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 693
    invoke-virtual/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getClassLoaderFromJar(Ljava/io/File;)Ljava/lang/ClassLoader;
    :try_end_b2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_82 .. :try_end_b2} :catch_3cf
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_b2} :catch_3fa
    .catchall {:try_start_82 .. :try_end_b2} :catchall_418

    move-result-object v11

    .line 695
    :try_start_b3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b3 .. :try_end_ba} :catch_3d8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_403
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_422

    move-result-object v14

    :cond_bb
    :goto_bb
    :try_start_bb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_446

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 696
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bb .. :try_end_ca} :catch_3df
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_ca} :catch_40a
    .catchall {:try_start_bb .. :try_end_ca} :catchall_42b

    move-result v7

    if-nez v7, :cond_1e6

    .line 698
    :try_start_cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not present in weblogic jar"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_e9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cd .. :try_end_e9} :catch_43b
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_e9} :catch_43e
    .catchall {:try_start_cd .. :try_end_e9} :catchall_1c6

    .line 700
    const/4 v14, 0x1

    .line 695
    :goto_ea
    if-nez v14, :cond_33f

    .line 742
    :try_start_ec
    const-string v4, "No rebuild needed - updating jar"

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 743
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
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ec .. :try_end_10e} :catch_435
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_10e} :catch_438
    .catchall {:try_start_ec .. :try_end_10e} :catchall_339

    .line 744
    :try_start_10e
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_111
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10e .. :try_end_111} :catch_335
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_332
    .catchall {:try_start_10e .. :try_end_111} :catchall_32d

    move-result v4

    if-eqz v4, :cond_117

    .line 745
    :try_start_114
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_117
    .catch Ljava/lang/ClassNotFoundException; {:try_start_114 .. :try_end_117} :catch_2d8
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_2bb
    .catchall {:try_start_114 .. :try_end_117} :catchall_2b6

    .line 748
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
    .catch Ljava/lang/ClassNotFoundException; {:try_start_117 .. :try_end_127} :catch_335
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_127} :catch_332
    .catchall {:try_start_117 .. :try_end_127} :catchall_32d

    .line 749
    const/4 v4, 0x0

    :try_start_128
    invoke-virtual {v7, v4}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 752
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_133
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2fc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 753
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCompressedSize()J
    :try_end_142
    .catch Ljava/lang/ClassNotFoundException; {:try_start_128 .. :try_end_142} :catch_328
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_142} :catch_324
    .catchall {:try_start_128 .. :try_end_142} :catchall_31f

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v5, v16, v18

    if-eqz v5, :cond_155

    .line 754
    :try_start_149
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_150
    .catch Ljava/lang/ClassNotFoundException; {:try_start_149 .. :try_end_150} :catch_2e3
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_150} :catch_441
    .catchall {:try_start_149 .. :try_end_150} :catchall_3b2

    move-result-wide v18

    cmp-long v5, v16, v18

    if-nez v5, :cond_2dc

    .line 755
    :cond_155
    const/4 v5, 0x0

    :try_start_156
    invoke-virtual {v7, v5}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 762
    :goto_159
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_160
    .catch Ljava/lang/ClassNotFoundException; {:try_start_156 .. :try_end_160} :catch_328
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_160} :catch_324
    .catchall {:try_start_156 .. :try_end_160} :catchall_31f

    move-result v5

    if-eqz v5, :cond_2e8

    .line 763
    :try_start_163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating Bean class from generic Jar "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 766
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 767
    invoke-virtual {v13, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_18b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_163 .. :try_end_18b} :catch_2e3
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_18b} :catch_441
    .catchall {:try_start_163 .. :try_end_18b} :catchall_3b2

    move-result-object v5

    .line 773
    :goto_18c
    :try_start_18c
    new-instance v9, Ljava/util/jar/JarEntry;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 775
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 777
    :goto_19c
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_19f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18c .. :try_end_19f} :catch_328
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_19f} :catch_324
    .catchall {:try_start_18c .. :try_end_19f} :catchall_31f

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2ee

    .line 778
    const/4 v10, 0x0

    :try_start_1a4
    invoke-virtual {v7, v4, v10, v9}, Ljava/util/jar/JarOutputStream;->write([BII)V
    :try_end_1a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a4 .. :try_end_1a7} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_2f3
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_2f7

    goto :goto_19c

    .line 789
    :catch_1a8
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    .line 790
    :goto_1ab
    :try_start_1ab
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException while processing ejb-jar file. Details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 794
    new-instance v6, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v6, v5, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1c6
    .catchall {:try_start_1ab .. :try_end_1c6} :catchall_1c6

    .line 802
    :catchall_1c6
    move-exception v15

    :goto_1c7
    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    :goto_1ca
    invoke-static {v13}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 803
    invoke-static {v12}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v14}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 806
    if-eqz v14, :cond_1dc

    .line 808
    :try_start_1d5
    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1dc} :catch_399

    .line 811
    :cond_1dc
    :goto_1dc
    instance-of v5, v4, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v5, :cond_1e5

    .line 816
    check-cast v4, Lorg/apache/tools/ant/AntClassLoader;

    .line 817
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 819
    :cond_1e5
    throw v15

    .line 705
    :cond_1e6
    :try_start_1e6
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 706
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    .line 708
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getCrc()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getCrc()J
    :try_end_1f9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e6 .. :try_end_1f9} :catch_3df
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1f9} :catch_40a
    .catchall {:try_start_1e6 .. :try_end_1f9} :catchall_42b

    move-result-wide v18

    cmp-long v16, v16, v18

    if-nez v16, :cond_20a

    .line 709
    :try_start_1fe
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_205
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1fe .. :try_end_205} :catch_43b
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_205} :catch_43e
    .catchall {:try_start_1fe .. :try_end_205} :catchall_1c6

    move-result-wide v18

    cmp-long v8, v16, v18

    if-eqz v8, :cond_bb

    .line 711
    :cond_20a
    :try_start_20a
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v16, ".class"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_215
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20a .. :try_end_215} :catch_3df
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_215} :catch_40a
    .catchall {:try_start_20a .. :try_end_215} :catchall_42b

    move-result v8

    if-eqz v8, :cond_287

    .line 713
    :try_start_218
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;
    :try_end_21b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_218 .. :try_end_21b} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21b} :catch_3a9
    .catchall {:try_start_218 .. :try_end_21b} :catchall_281

    move-result-object v8

    :try_start_21c
    sget-char v16, Ljava/io/File;->separatorChar:C
    :try_end_21e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21c .. :try_end_21e} :catch_3ac
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21e} :catch_3af
    .catchall {:try_start_21c .. :try_end_21e} :catchall_27b

    .line 714
    const/16 v17, 0x2e

    :try_start_220
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 715
    const/16 v16, 0x2f

    const/16 v17, 0x2e

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 717
    const/16 v16, 0x0

    const-string v17, ".class"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 719
    invoke-virtual {v11, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 721
    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v16

    if-eqz v16, :cond_273

    .line 723
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

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 725
    const/4 v14, 0x1

    .line 726
    goto/16 :goto_ea

    .line 729
    :cond_273
    invoke-interface {v15, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_bb

    .line 789
    :catch_278
    move-exception v4

    goto/16 :goto_1ab

    .line 802
    :catchall_27b
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    :catchall_281
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    .line 730
    :cond_287
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bb

    .line 733
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

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_2b3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_220 .. :try_end_2b3} :catch_278
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_2b3} :catch_432
    .catchall {:try_start_220 .. :try_end_2b3} :catchall_34a

    .line 735
    const/4 v14, 0x1

    .line 736
    goto/16 :goto_ea

    .line 802
    :catchall_2b6
    move-exception v15

    move-object v4, v11

    move-object v14, v10

    goto/16 :goto_1ca

    .line 795
    :catch_2bb
    move-exception v4

    move-object v9, v6

    .line 796
    :goto_2bd
    :try_start_2bd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while processing ejb-jar file . Details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 800
    new-instance v6, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v6, v5, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2d8
    .catchall {:try_start_2bd .. :try_end_2d8} :catchall_1c6

    .line 789
    :catch_2d8
    move-exception v4

    move-object v9, v6

    goto/16 :goto_1ab

    .line 757
    :cond_2dc
    const/16 v5, 0x9

    :try_start_2de
    invoke-virtual {v7, v5}, Ljava/util/jar/JarOutputStream;->setLevel(I)V
    :try_end_2e1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2de .. :try_end_2e1} :catch_2e3
    .catch Ljava/io/IOException; {:try_start_2de .. :try_end_2e1} :catch_441
    .catchall {:try_start_2de .. :try_end_2e1} :catchall_3b2

    goto/16 :goto_159

    .line 789
    :catch_2e3
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_1ab

    .line 771
    :cond_2e8
    :try_start_2e8
    invoke-virtual {v12, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2eb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e8 .. :try_end_2eb} :catch_328
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2eb} :catch_324
    .catchall {:try_start_2e8 .. :try_end_2eb} :catchall_31f

    move-result-object v5

    goto/16 :goto_18c

    .line 780
    :cond_2ee
    :try_start_2ee
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2f1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2ee .. :try_end_2f1} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_2ee .. :try_end_2f1} :catch_2f3
    .catchall {:try_start_2ee .. :try_end_2f1} :catchall_2f7

    goto/16 :goto_133

    .line 795
    :catch_2f3
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_2bd

    .line 802
    :catchall_2f7
    move-exception v15

    move-object v4, v11

    move-object v14, v7

    goto/16 :goto_1ca

    :cond_2fc
    move-object v5, v6

    :goto_2fd
    move-object v4, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v5

    move v10, v14

    move-object v15, v7

    :goto_303
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 803
    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v15}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 806
    if-eqz v15, :cond_315

    .line 808
    :try_start_30e
    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p2

    invoke-virtual {v5, v9, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_315
    .catch Ljava/io/IOException; {:try_start_30e .. :try_end_315} :catch_36c

    .line 814
    :cond_315
    :goto_315
    instance-of v5, v4, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v5, :cond_31e

    .line 816
    check-cast v4, Lorg/apache/tools/ant/AntClassLoader;

    .line 817
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 820
    :cond_31e
    return v10

    .line 802
    :catchall_31f
    move-exception v15

    move-object v4, v11

    move-object v14, v7

    goto/16 :goto_1ca

    .line 795
    :catch_324
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_2bd

    .line 789
    :catch_328
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_1ab

    .line 802
    :catchall_32d
    move-exception v15

    move-object v4, v11

    move-object v14, v10

    goto/16 :goto_1ca

    .line 795
    :catch_332
    move-exception v4

    move-object v9, v6

    goto :goto_2bd

    .line 789
    :catch_335
    move-exception v4

    move-object v9, v6

    goto/16 :goto_1ab

    .line 802
    :catchall_339
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    .line 783
    :cond_33f
    :try_start_33f
    const-string v4, "Weblogic Jar rebuild needed due to changed interface or XML"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_347
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33f .. :try_end_347} :catch_278
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_347} :catch_432
    .catchall {:try_start_33f .. :try_end_347} :catchall_34a

    move-object v5, v9

    move-object v7, v10

    goto :goto_2fd

    .line 802
    :catchall_34a
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_1ca

    :catchall_350
    move-exception v15

    move-object/from16 v13, v24

    move-object/from16 v8, v25

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    :goto_35b
    move-object v5, v4

    move-object v7, v6

    move-object v9, v8

    move-object v10, v13

    :goto_35f
    move-object v4, v7

    move-object v12, v9

    move-object v13, v10

    move-object v6, v5

    goto/16 :goto_1ca

    .line 676
    :cond_365
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    move-object v8, v7

    move-object v15, v11

    goto :goto_303

    .line 809
    :catch_36c
    move-exception v5

    .line 810
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 811
    const/4 v10, 0x1

    goto :goto_315

    .line 802
    :catchall_379
    move-exception v4

    move-object v5, v6

    move-object v7, v8

    move-object v9, v11

    move-object v10, v12

    move-object v14, v13

    move-object v15, v4

    goto :goto_35f

    .line 795
    :catch_381
    move-exception v4

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto/16 :goto_2bd

    .line 789
    :catch_38c
    move-exception v4

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    goto/16 :goto_1ab

    .line 809
    :catch_399
    move-exception v5

    .line 810
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    goto/16 :goto_1dc

    .line 789
    :catch_3a6
    move-exception v4

    goto/16 :goto_1ab

    .line 795
    :catch_3a9
    move-exception v4

    goto/16 :goto_2bd

    .line 789
    :catch_3ac
    move-exception v4

    goto/16 :goto_1ab

    .line 795
    :catch_3af
    move-exception v4

    goto/16 :goto_2bd

    .line 802
    :catchall_3b2
    move-exception v15

    move-object v10, v7

    move-object v9, v6

    goto/16 :goto_1c7

    .line 789
    :catch_3b7
    move-exception v4

    move-object/from16 v13, v34

    move-object/from16 v12, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_1ab

    :catch_3c4
    move-exception v4

    move-object/from16 v12, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_1ab

    :catch_3cf
    move-exception v4

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_1ab

    :catch_3d8
    move-exception v4

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_1ab

    :catch_3df
    move-exception v4

    goto/16 :goto_1ab

    .line 795
    :catch_3e2
    move-exception v4

    move-object/from16 v13, v29

    move-object/from16 v12, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_2bd

    :catch_3ef
    move-exception v4

    move-object/from16 v12, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_2bd

    :catch_3fa
    move-exception v4

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_2bd

    :catch_403
    move-exception v4

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    goto/16 :goto_2bd

    :catch_40a
    move-exception v4

    goto/16 :goto_2bd

    .line 802
    :catchall_40d
    move-exception v15

    move-object/from16 v8, v25

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    goto/16 :goto_35b

    :catchall_418
    move-exception v15

    move-object v8, v12

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    goto/16 :goto_35b

    :catchall_422
    move-exception v15

    move-object v8, v12

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object v6, v11

    goto/16 :goto_35b

    :catchall_42b
    move-exception v15

    move-object v8, v12

    move-object v4, v9

    move-object v14, v10

    move-object v6, v11

    goto/16 :goto_35b

    .line 795
    :catch_432
    move-exception v4

    goto/16 :goto_2bd

    .line 789
    :catch_435
    move-exception v4

    goto/16 :goto_1ab

    .line 795
    :catch_438
    move-exception v4

    goto/16 :goto_2bd

    .line 789
    :catch_43b
    move-exception v4

    goto/16 :goto_1ab

    .line 795
    :catch_43e
    move-exception v4

    goto/16 :goto_2bd

    :catch_441
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_2bd

    :cond_446
    move/from16 v14, v39

    goto/16 :goto_ea
.end method

.method protected registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V
    .registers 4

    .line 392
    const-string v0, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    const-string v1, "/weblogic/ejb/deployment/xml/ejb-jar.dtd"

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    const-string v1, "/weblogic/ejb20/dd/xml/ejb11-jar.dtd"

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejb11DTD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    const-string v1, "/weblogic/ejb20/dd/xml/ejb20-jar.dtd"

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public setArgs(Ljava/lang/String;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setEJBdtd(Ljava/lang/String;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejb11DTD:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setEjbcClass(Ljava/lang/String;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setJvmDebugLevel(Ljava/lang/Integer;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    .line 240
    return-void
.end method

.method public setJvmargs(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setKeepgenerated(Ljava/lang/String;)V
    .registers 3

    .line 277
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    .line 278
    return-void
.end method

.method public setKeepgeneric(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    .line 267
    return-void
.end method

.method public setNewCMP(Z)V
    .registers 2

    .line 373
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    .line 374
    return-void
.end method

.method public setNoEJBC(Z)V
    .registers 2

    .line 382
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    .line 383
    return-void
.end method

.method public setOldCMP(Z)V
    .registers 3

    .line 357
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    .line 358
    return-void
.end method

.method public setOutputDir(Ljava/io/File;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    .line 185
    return-void
.end method

.method public setRebuild(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    .line 230
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jarSuffix:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setWLClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 199
    return-void
.end method

.method public setWLdtd(Ljava/lang/String;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->weblogicDTD:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setWeblogicdtd(Ljava/lang/String;)V
    .registers 2

    .line 326
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->setEJBdtd(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public validateConfigured()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 634
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->validateConfigured()V

    .line 635
    return-void
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

    .line 614
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 616
    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 618
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    if-nez v1, :cond_11

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 619
    :cond_11
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->buildWeblogicJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 621
    :cond_14
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    if-nez v1, :cond_34

    .line 622
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

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 626
    :cond_34
    return-void
.end method
