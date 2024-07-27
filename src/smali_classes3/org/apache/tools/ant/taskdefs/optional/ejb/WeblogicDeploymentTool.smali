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
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    .line 122
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    .line 131
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    .line 133
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    .line 138
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    .line 141
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    .line 144
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    .line 154
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    return-void
.end method

.method private buildWeblogicJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    .line 504
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    if-eqz v0, :cond_1

    .line 506
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 507
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to write EJB jar"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 516
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    .line 519
    :try_start_1
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

    if-eqz v1, :cond_2

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
    :cond_2
    if-nez v0, :cond_3

    .line 531
    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_9

    .line 532
    const-string v0, "weblogic.ejbc"

    .line 542
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 544
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    if-eqz v1, :cond_4

    .line 545
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-keepgenerated"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 547
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    if-nez v1, :cond_b

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

    if-eqz v1, :cond_5

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
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 563
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 564
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

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
    :cond_6
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    if-nez v1, :cond_c

    .line 571
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 576
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 578
    if-nez v1, :cond_7

    .line 579
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 582
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 583
    if-eqz v1, :cond_8

    .line 584
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 587
    :cond_8
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

    if-eqz v1, :cond_0

    .line 591
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Ejbc reported an error"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 593
    :catch_1
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
    :cond_9
    :try_start_3
    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-eqz v1, :cond_a

    .line 534
    const-string v0, "weblogic.ejbc20"

    goto/16 :goto_0

    .line 536
    :cond_a
    :try_start_4
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
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 538
    const-string v0, "weblogic.ejbc"

    goto/16 :goto_0

    .line 557
    :cond_b
    :try_start_5
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

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

    goto/16 :goto_1

    .line 573
    :cond_c
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
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

    if-eqz v0, :cond_4

    .line 437
    const-string v0, "META-INF/weblogic-ejb-jar.xml"

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    if-nez v0, :cond_1

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

    if-eqz v0, :cond_0

    .line 453
    const-string v0, "META-INF/weblogic-cmp-rdbms-jar.xml"

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 471
    :try_start_1
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 473
    :cond_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getFiles()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 474
    :catch_0
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
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 440
    :cond_4
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

    goto :goto_0

    .line 470
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public createWLClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 174
    :cond_0
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
    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 842
    :cond_0
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

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    .line 667
    const/16 v30, 0x0

    const/16 v35, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

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
    :try_start_0
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

    if-eqz v40, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v40

    if-eqz v40, :cond_10

    .line 677
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v40

    if-eqz v40, :cond_10

    .line 679
    new-instance v12, Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_17
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 680
    :try_start_2
    new-instance v13, Ljava/util/jar/JarFile;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_18
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 682
    :try_start_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 685
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

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
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

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
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    move-result-object v11

    .line 695
    :try_start_4
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1a
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    move-result-object v14

    :cond_0
    :goto_0
    :try_start_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 696
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1b
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    move-result v7

    if-nez v7, :cond_5

    .line 698
    :try_start_6
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
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_20
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 700
    const/4 v14, 0x1

    .line 695
    :goto_1
    if-nez v14, :cond_f

    .line 742
    :try_start_7
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
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1e
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 744
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result v4

    if-eqz v4, :cond_1

    .line 745
    :try_start_9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 748
    :cond_1
    :try_start_a
    new-instance v7, Ljava/util/jar/JarOutputStream;

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v8}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 749
    const/4 v4, 0x0

    :try_start_b
    invoke-virtual {v7, v4}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 752
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 753
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCompressedSize()J
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v5, v16, v18

    if-eqz v5, :cond_2

    .line 754
    :try_start_c
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_21
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-result-wide v18

    cmp-long v5, v16, v18

    if-nez v5, :cond_9

    .line 755
    :cond_2
    const/4 v5, 0x0

    :try_start_d
    invoke-virtual {v7, v5}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 762
    :goto_3
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-result v5

    if-eqz v5, :cond_a

    .line 763
    :try_start_e
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
    invoke-virtual {v12, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_21
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    move-result-object v5

    .line 773
    :goto_4
    :try_start_f
    new-instance v9, Ljava/util/jar/JarEntry;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 775
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 777
    :goto_5
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 778
    const/4 v10, 0x0

    :try_start_10
    invoke-virtual {v7, v4, v10, v9}, Ljava/util/jar/JarOutputStream;->write([BII)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_5

    .line 789
    :catch_0
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    .line 790
    :goto_6
    :try_start_11
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
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 802
    :catchall_0
    move-exception v15

    :goto_7
    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    :goto_8
    invoke-static {v12}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 803
    invoke-static {v13}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v14}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 806
    if-eqz v14, :cond_3

    .line 808
    :try_start_12
    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 811
    :cond_3
    :goto_9
    instance-of v5, v4, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v5, :cond_4

    .line 816
    check-cast v4, Lorg/apache/tools/ant/AntClassLoader;

    .line 817
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 819
    :cond_4
    throw v15

    .line 705
    :cond_5
    :try_start_13
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
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1b
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    move-result-wide v18

    cmp-long v16, v16, v18

    if-nez v16, :cond_6

    .line 709
    :try_start_14
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_20
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-wide v18

    cmp-long v8, v16, v18

    if-eqz v8, :cond_0

    .line 711
    :cond_6
    :try_start_15
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v16, ".class"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1b
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    move-result v8

    if-eqz v8, :cond_8

    .line 713
    :try_start_16
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-result-object v8

    :try_start_17
    sget-char v16, Ljava/io/File;->separatorChar:C
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 714
    const/16 v17, 0x2e

    :try_start_18
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

    if-eqz v16, :cond_7

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
    goto/16 :goto_1

    .line 729
    :cond_7
    invoke-interface {v15, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 789
    :catch_1
    move-exception v4

    goto/16 :goto_6

    .line 802
    :catchall_1
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_8

    :catchall_2
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_8

    .line 730
    :cond_8
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

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
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1c
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 735
    const/4 v14, 0x1

    .line 736
    goto/16 :goto_1

    .line 802
    :catchall_3
    move-exception v15

    move-object v4, v11

    move-object v14, v10

    goto/16 :goto_8

    .line 795
    :catch_2
    move-exception v4

    move-object v9, v6

    .line 796
    :goto_a
    :try_start_19
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
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 789
    :catch_3
    move-exception v4

    move-object v9, v6

    goto/16 :goto_6

    .line 757
    :cond_9
    const/16 v5, 0x9

    :try_start_1a
    invoke-virtual {v7, v5}, Ljava/util/jar/JarOutputStream;->setLevel(I)V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_21
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    goto/16 :goto_3

    .line 789
    :catch_4
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_6

    .line 771
    :cond_a
    :try_start_1b
    invoke-virtual {v13, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-result-object v5

    goto/16 :goto_4

    .line 780
    :cond_b
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    goto/16 :goto_2

    .line 795
    :catch_5
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_a

    .line 802
    :catchall_4
    move-exception v15

    move-object v4, v11

    move-object v14, v7

    goto/16 :goto_8

    :cond_c
    move-object v5, v6

    :goto_b
    move-object v4, v11

    move-object v6, v12

    move-object v8, v13

    move-object v9, v5

    move v10, v14

    move-object v15, v7

    :goto_c
    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 803
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v15}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 806
    if-eqz v15, :cond_d

    .line 808
    :try_start_1d
    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p2

    invoke-virtual {v5, v9, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    .line 814
    :cond_d
    :goto_d
    instance-of v5, v4, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v5, :cond_e

    .line 816
    check-cast v4, Lorg/apache/tools/ant/AntClassLoader;

    .line 817
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 820
    :cond_e
    return v10

    .line 802
    :catchall_5
    move-exception v15

    move-object v4, v11

    move-object v14, v7

    goto/16 :goto_8

    .line 795
    :catch_6
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_a

    .line 789
    :catch_7
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_6

    .line 802
    :catchall_6
    move-exception v15

    move-object v4, v11

    move-object v14, v10

    goto/16 :goto_8

    .line 795
    :catch_8
    move-exception v4

    move-object v9, v6

    goto :goto_a

    .line 789
    :catch_9
    move-exception v4

    move-object v9, v6

    goto/16 :goto_6

    .line 802
    :catchall_7
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_8

    .line 783
    :cond_f
    :try_start_1e
    const-string v4, "Weblogic Jar rebuild needed due to changed interface or XML"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    move-object v5, v9

    move-object v7, v10

    goto :goto_b

    .line 802
    :catchall_8
    move-exception v15

    move-object v4, v11

    move-object v6, v9

    move-object v14, v10

    goto/16 :goto_8

    :catchall_9
    move-exception v15

    move-object/from16 v8, v24

    move-object/from16 v13, v25

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    :goto_e
    move-object v5, v4

    move-object v7, v6

    move-object v9, v8

    move-object v10, v13

    :goto_f
    move-object v4, v7

    move-object v12, v9

    move-object v13, v10

    move-object v6, v5

    goto/16 :goto_8

    .line 676
    :cond_10
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    move-object v8, v7

    move-object v15, v11

    goto :goto_c

    .line 809
    :catch_a
    move-exception v5

    .line 810
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 811
    const/4 v10, 0x1

    goto :goto_d

    .line 802
    :catchall_a
    move-exception v4

    move-object v5, v6

    move-object v7, v8

    move-object v9, v11

    move-object v10, v12

    move-object v14, v13

    move-object v15, v4

    goto :goto_f

    .line 795
    :catch_b
    move-exception v4

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto/16 :goto_a

    .line 789
    :catch_c
    move-exception v4

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    goto/16 :goto_6

    .line 809
    :catch_d
    move-exception v5

    .line 810
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 789
    :catch_e
    move-exception v4

    goto/16 :goto_6

    .line 795
    :catch_f
    move-exception v4

    goto/16 :goto_a

    .line 789
    :catch_10
    move-exception v4

    goto/16 :goto_6

    .line 795
    :catch_11
    move-exception v4

    goto/16 :goto_a

    .line 802
    :catchall_b
    move-exception v15

    move-object v10, v7

    move-object v9, v6

    goto/16 :goto_7

    .line 789
    :catch_12
    move-exception v4

    move-object/from16 v12, v34

    move-object/from16 v13, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_6

    :catch_13
    move-exception v4

    move-object/from16 v13, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_6

    :catch_14
    move-exception v4

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto/16 :goto_6

    :catch_15
    move-exception v4

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_6

    :catch_16
    move-exception v4

    goto/16 :goto_6

    .line 795
    :catch_17
    move-exception v4

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_a

    :catch_18
    move-exception v4

    move-object/from16 v13, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_a

    :catch_19
    move-exception v4

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    goto/16 :goto_a

    :catch_1a
    move-exception v4

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    goto/16 :goto_a

    :catch_1b
    move-exception v4

    goto/16 :goto_a

    .line 802
    :catchall_c
    move-exception v15

    move-object v8, v12

    move-object/from16 v13, v25

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    goto/16 :goto_e

    :catchall_d
    move-exception v15

    move-object v8, v12

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    goto/16 :goto_e

    :catchall_e
    move-exception v15

    move-object v8, v12

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-object v6, v11

    goto/16 :goto_e

    :catchall_f
    move-exception v15

    move-object v8, v12

    move-object v4, v9

    move-object v14, v10

    move-object v6, v11

    goto/16 :goto_e

    .line 795
    :catch_1c
    move-exception v4

    goto/16 :goto_a

    .line 789
    :catch_1d
    move-exception v4

    goto/16 :goto_6

    .line 795
    :catch_1e
    move-exception v4

    goto/16 :goto_a

    .line 789
    :catch_1f
    move-exception v4

    goto/16 :goto_6

    .line 795
    :catch_20
    move-exception v4

    goto/16 :goto_a

    :catch_21
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_a

    :cond_11
    move/from16 v14, v39

    goto/16 :goto_1
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

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    :cond_0
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->buildWeblogicJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 621
    :cond_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    if-nez v1, :cond_2

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
    :cond_2
    return-void
.end method
