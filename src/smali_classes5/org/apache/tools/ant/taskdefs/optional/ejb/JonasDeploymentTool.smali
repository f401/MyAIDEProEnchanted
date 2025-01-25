.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "JonasDeploymentTool.java"


# static fields
.field protected static final DAVID_ORB:Ljava/lang/String; = "DAVID"

.field protected static final EJB_JAR_1_1_DTD:Ljava/lang/String; = "ejb-jar_1_1.dtd"

.field protected static final EJB_JAR_1_1_PUBLIC_ID:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field protected static final EJB_JAR_2_0_DTD:Ljava/lang/String; = "ejb-jar_2_0.dtd"

.field protected static final EJB_JAR_2_0_PUBLIC_ID:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

.field protected static final GENIC_CLASS:Ljava/lang/String; = "org.objectweb.jonas_ejb.genic.GenIC"

.field protected static final JEREMIE_ORB:Ljava/lang/String; = "JEREMIE"

.field protected static final JONAS_DD:Ljava/lang/String; = "jonas-ejb-jar.xml"

.field protected static final JONAS_EJB_JAR_2_4_DTD:Ljava/lang/String; = "jonas-ejb-jar_2_4.dtd"

.field protected static final JONAS_EJB_JAR_2_4_PUBLIC_ID:Ljava/lang/String; = "-//ObjectWeb//DTD JOnAS 2.4//EN"

.field protected static final JONAS_EJB_JAR_2_5_DTD:Ljava/lang/String; = "jonas-ejb-jar_2_5.dtd"

.field protected static final JONAS_EJB_JAR_2_5_PUBLIC_ID:Ljava/lang/String; = "-//ObjectWeb//DTD JOnAS 2.5//EN"

.field protected static final OLD_GENIC_CLASS_1:Ljava/lang/String; = "org.objectweb.jonas_ejb.tools.GenWholeIC"

.field protected static final OLD_GENIC_CLASS_2:Ljava/lang/String; = "org.objectweb.jonas_ejb.tools.GenIC"

.field protected static final RMI_ORB:Ljava/lang/String; = "RMI"


# instance fields
.field private additionalargs:Ljava/lang/String;

.field private descriptorName:Ljava/lang/String;

.field private javac:Ljava/lang/String;

.field private javacopts:Ljava/lang/String;

.field private jonasDescriptorName:Ljava/lang/String;

.field private jonasroot:Ljava/io/File;

.field private keepgenerated:Z

.field private keepgeneric:Z

.field private nocompil:Z

.field private nogenic:Z

.field private novalidation:Z

.field private orb:Ljava/lang/String;

.field private outputdir:Ljava/io/File;

.field private rmicopts:Ljava/lang/String;

.field private secpropag:Z

.field private suffix:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    .line 122
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgenerated:Z

    .line 128
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nocompil:Z

    .line 134
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->novalidation:Z

    .line 154
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->secpropag:Z

    .line 160
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->verbose:Z

    .line 176
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    .line 179
    const-string v0, ".jar"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->suffix:Ljava/lang/String;

    .line 192
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nogenic:Z

    return-void
.end method

.method private addAllFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 808
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 812
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 813
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_44

    aget-object v4, v2, v1

    .line 814
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 815
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_21
    invoke-direct {p0, v4, v0, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->addAllFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 813
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 817
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 822
    :cond_41
    invoke-virtual {p3, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :cond_44
    return-void

    .line 809
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private addGenICGeneratedFiles(Ljava/io/File;Ljava/util/Hashtable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x3

    .line 529
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nogenic:Z

    if-eqz v0, :cond_6

    .line 672
    :goto_5
    return-void

    .line 533
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 534
    const-string v0, "genic"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 538
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Dinstall.root="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    new-instance v0, Ljava/io/File;

    const-string v3, "java.policy"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 544
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Djava.security.policy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 550
    :cond_73
    :try_start_73
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->createTempDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_79} :catch_2c7

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using temporary output directory: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 557
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-d"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 560
    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_a9

    .line 564
    :cond_d8
    const-string v0, "Worked around a bug of GenIC 2.5."

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 567
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 568
    if-nez v0, :cond_f0

    .line 569
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 571
    :cond_f0
    new-instance v3, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 572
    new-instance v2, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 575
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    if-eqz v2, :cond_145

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_jonas.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    new-instance v3, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 580
    :cond_145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using classpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 581
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 588
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getGenicClassName(Lorg/apache/tools/ant/types/Path;)Ljava/lang/String;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_2b9

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' GenIC class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 594
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 597
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgenerated:Z

    if-eqz v2, :cond_18f

    .line 598
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-keepgenerated"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 602
    :cond_18f
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nocompil:Z

    if-eqz v2, :cond_19c

    .line 603
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-nocompil"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 607
    :cond_19c
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->novalidation:Z

    if-eqz v2, :cond_1a9

    .line 608
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-novalidation"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 612
    :cond_1a9
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    if-eqz v2, :cond_1bf

    .line 613
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-javac"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 618
    :cond_1bf
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javacopts:Ljava/lang/String;

    if-eqz v2, :cond_1db

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1db

    .line 619
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-javacopts"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javacopts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 624
    :cond_1db
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->rmicopts:Ljava/lang/String;

    if-eqz v2, :cond_1f7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f7

    .line 625
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-rmicopts"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->rmicopts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 630
    :cond_1f7
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->secpropag:Z

    if-eqz v2, :cond_204

    .line 631
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-secpropag"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 635
    :cond_204
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->verbose:Z

    if-eqz v2, :cond_211

    .line 636
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-verbose"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 640
    :cond_211
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    if-eqz v2, :cond_21e

    .line 641
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 646
    :cond_21e
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-noaddinjar"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 655
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v0

    if-eqz v0, :cond_2b0

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting temp output directory \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 659
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->deleteAllFiles(Ljava/io/File;)V

    .line 661
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    if-nez v0, :cond_2a8

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting generic JAR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 667
    :cond_2a8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "GenIC reported an error."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_2b0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    const-string v1, ""

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->addAllFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto/16 :goto_5

    .line 590
    :cond_2b9
    const-string v0, "Cannot find GenIC class in classpath."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 591
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "GenIC class not found, please check the classpath."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :catch_2c7
    move-exception v0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create temp dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createTempDir()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    const-string v0, "genic"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private deleteAllFiles(Ljava/io/File;)V
    .registers 6

    .line 791
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 792
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    .line 793
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->deleteAllFiles(Ljava/io/File;)V

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 796
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 797
    return-void
.end method

.method private getJonasDescriptorName()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 408
    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 415
    const/4 v0, -0x1

    if-eq v3, v0, :cond_37

    .line 417
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_1d
    const-string v4, "ejb-jar.xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jonas-ejb-jar.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_36
    return-object v0

    .line 421
    :cond_37
    const-string v1, ""

    .line 422
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    goto :goto_1d

    .line 429
    :cond_3c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 436
    if-gez v0, :cond_5f

    .line 441
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 442
    if-gez v0, :cond_5e

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 442
    :cond_5e
    const/4 v2, 0x1

    .line 450
    :cond_5f
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 451
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz v2, :cond_b7

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jonas-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Standard EJB descriptor name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JOnAS-specific descriptor name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_36

    .line 456
    :cond_b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jonas-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8c
.end method


# virtual methods
.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 6
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

    .line 376
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getJonasDescriptorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasDescriptorName:Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasDescriptorName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 380
    const-string v1, "META-INF/jonas-ejb-jar.xml"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :goto_1e
    return-void

    .line 382
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate the JOnAS deployment descriptor. It was expected to be in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_1e
.end method

.method protected checkConfiguration(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 740
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    if-eqz v0, :cond_6d

    .line 743
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 750
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RMI"

    aput-object v1, v0, v5

    const-string v1, "JEREMIE"

    aput-object v1, v0, v6

    const-string v1, "DAVID"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 760
    :cond_2a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 765
    :cond_34
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 768
    :cond_3e
    return-void

    .line 754
    :cond_3f
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "The orb attribute \'%s\' is not valid (must be one of %s."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 761
    :cond_4f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Empty additionalargs attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_57
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Empty javac attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_5f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The jonasroot attribute \'%s\' is not a valid directory."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 741
    :cond_6d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The jonasroot attribute is not set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getGenicClassName(Lorg/apache/tools/ant/types/Path;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x3

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for GenIC class in classpath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 686
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 689
    :try_start_21
    const-string v0, "org.objectweb.jonas_ejb.genic.GenIC"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 690
    const-string v0, "Found GenIC class \'org.objectweb.jonas_ejb.genic.GenIC\' in classpath."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_2c} :catch_34
    .catchall {:try_start_21 .. :try_end_2c} :catchall_76

    .line 692
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_31
    const-string v0, "org.objectweb.jonas_ejb.genic.GenIC"

    .line 726
    :goto_33
    return-object v0

    .line 694
    :catch_34
    move-exception v0

    .line 695
    :try_start_35
    const-string v0, "GenIC class \'org.objectweb.jonas_ejb.genic.GenIC\' not found in classpath."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_76

    .line 701
    :try_start_3b
    const-string v0, "org.objectweb.jonas_ejb.tools.GenWholeIC"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 702
    const-string v0, "Found GenIC class \'org.objectweb.jonas_ejb.tools.GenWholeIC\' in classpath."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_46} :catch_4e
    .catchall {:try_start_3b .. :try_end_46} :catchall_76

    .line 705
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_4b
    const-string v0, "org.objectweb.jonas_ejb.tools.GenWholeIC"

    goto :goto_33

    .line 707
    :catch_4e
    move-exception v0

    .line 708
    :try_start_4f
    const-string v0, "GenIC class \'org.objectweb.jonas_ejb.tools.GenWholeIC\' not found in classpath."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_76

    .line 714
    :try_start_55
    const-string v0, "org.objectweb.jonas_ejb.tools.GenIC"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 715
    const-string v0, "Found GenIC class \'org.objectweb.jonas_ejb.tools.GenIC\' in classpath."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_55 .. :try_end_60} :catch_68
    .catchall {:try_start_55 .. :try_end_60} :catchall_76

    .line 718
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_65
    const-string v0, "org.objectweb.jonas_ejb.tools.GenIC"

    goto :goto_33

    .line 720
    :catch_68
    move-exception v0

    .line 721
    :try_start_69
    const-string v0, "GenIC class \'org.objectweb.jonas_ejb.tools.GenIC\' not found in classpath."

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_76

    .line 725
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    .line 726
    :cond_74
    const/4 v0, 0x0

    goto :goto_33

    .line 686
    :catchall_76
    move-exception v0

    if-eqz v1, :cond_7c

    :try_start_79
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    throw v0

    :catchall_7d
    move-exception v1

    goto :goto_7c
.end method

.method protected getJarBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x2f

    const/4 v3, -0x1

    .line 469
    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 474
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 481
    const/16 v1, 0x5c

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 485
    if-eq v1, v3, :cond_57

    .line 486
    const-string v2, ".xml"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 491
    :goto_34
    if-eq v1, v3, :cond_3b

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_3b
    if-nez v0, :cond_41

    .line 499
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getJarBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAR base name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 504
    return-object v0

    .line 488
    :cond_57
    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_34
.end method

.method protected getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 390
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .registers 6

    const/4 v2, 0x3

    .line 336
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOnAS Deployment Tool processing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-super {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    if-eqz v0, :cond_42

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting temp output directory \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 346
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->deleteAllFiles(Ljava/io/File;)V

    .line 348
    :cond_42
    return-void
.end method

.method protected registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V
    .registers 4

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ejb-jar_1_1.dtd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ejb-jar_2_0.dtd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jonas-ejb-jar_2_4.dtd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-//ObjectWeb//DTD JOnAS 2.4//EN"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jonas-ejb-jar_2_5.dtd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-//ObjectWeb//DTD JOnAS 2.5//EN"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public setAdditionalargs(Ljava/lang/String;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setJarsuffix(Ljava/lang/String;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->suffix:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setJavac(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setJavacopts(Ljava/lang/String;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javacopts:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setJonasroot(Ljava/io/File;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    .line 290
    return-void
.end method

.method public setKeepgenerated(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgenerated:Z

    .line 205
    return-void
.end method

.method public setKeepgeneric(Z)V
    .registers 2

    .line 298
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    .line 299
    return-void
.end method

.method public setNocompil(Z)V
    .registers 2

    .line 222
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nocompil:Z

    .line 223
    return-void
.end method

.method public setNogenic(Z)V
    .registers 2

    .line 325
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nogenic:Z

    .line 326
    return-void
.end method

.method public setNovalidation(Z)V
    .registers 2

    .line 231
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->novalidation:Z

    .line 232
    return-void
.end method

.method public setOrb(Ljava/lang/String;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setRmicopts(Ljava/lang/String;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->rmicopts:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setSecpropag(Z)V
    .registers 2

    .line 267
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->secpropag:Z

    .line 268
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 276
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->verbose:Z

    .line 277
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

    .line 356
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, v0, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->addGenICGeneratedFiles(Ljava/io/File;Ljava/util/Hashtable;)V

    .line 363
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-super {p0, p1, v1, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 365
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    if-nez v1, :cond_31

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting generic JAR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 369
    :cond_31
    return-void
.end method
