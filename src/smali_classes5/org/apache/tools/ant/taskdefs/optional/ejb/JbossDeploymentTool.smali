.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "JbossDeploymentTool.java"


# static fields
.field protected static final JBOSS_CMP10D:Ljava/lang/String; = "jaws.xml"

.field protected static final JBOSS_CMP20D:Ljava/lang/String; = "jbosscmp-jdbc.xml"

.field protected static final JBOSS_DD:Ljava/lang/String; = "jboss.xml"


# instance fields
.field private jarSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    .line 40
    const-string v0, ".jar"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    return-void
.end method

.method private getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;
    .registers 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    return-object v0
.end method


# virtual methods
.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 7
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

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "jboss.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 60
    const-string v0, "META-INF/jboss.xml"

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "jaws.xml"

    .line 67
    const-string v1, "2.0"

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getCmpversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 68
    const-string v0, "jbosscmp-jdbc.xml"

    .line 70
    :cond_3b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_6f
    return-void

    .line 76
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate jboss cmp descriptor. It was expected to be in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_6f

    .line 62
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate jboss deployment descriptor. It was expected to be in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_6f
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getDestdir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 90
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getDestdir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    :goto_34
    return-object v0

    .line 88
    :cond_35
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "DestDir not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public validateConfigured()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 105
    return-void
.end method
