.class public Lorg/apache/tools/ant/taskdefs/VerifyJar;
.super Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;
.source "VerifyJar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;,
        Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;
    }
.end annotation


# static fields
.field public static final ERROR_NO_FILE:Ljava/lang/String; = "Not found :"

.field public static final ERROR_NO_VERIFY:Ljava/lang/String; = "Failed to verify "

.field private static final VERIFIED_TEXT:Ljava/lang/String; = "jar verified."


# instance fields
.field private certificates:Z

.field private outputCache:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;

.field private savedStorePass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->certificates:Z

    .line 60
    new-instance v0, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;-><init>(Lorg/apache/tools/ant/taskdefs/VerifyJar$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->outputCache:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;

    .line 62
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->savedStorePass:Ljava/lang/String;

    return-void
.end method

.method private verifyOneJar(Ljava/io/File;)V
    .registers 5

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->createJarSigner()Lorg/apache/tools/ant/taskdefs/ExecTask;

    move-result-object v1

    .line 151
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->setCommonOptions(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 152
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->bindToKeystore(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->savedStorePass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "-storepass"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->savedStorePass:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 159
    :cond_0
    const-string v0, "-verify"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->certificates:Z

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "-certs"

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->alias:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->alias:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying JAR: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->outputCache:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;->clear()V

    .line 174
    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->outputCache:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v0, :cond_3

    .line 183
    const-string v2, "zip file closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    const-string v0, "You are running jarsigner against a JVM with a known bug that manifests as an IllegalStateException."

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->log(Ljava/lang/String;I)V

    .line 191
    :cond_3
    const-string v0, "jar verified."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    return-void

    .line 188
    :cond_4
    throw v0

    .line 192
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to verify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected beginExecution()V
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->storepass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->storepass:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->savedStorePass:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->setStorepass(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->beginExecution()V

    .line 126
    return-void
.end method

.method protected endExecution()V
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->savedStorePass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->setStorepass(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->savedStorePass:Ljava/lang/String;

    .line 137
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->endExecution()V

    .line 138
    return-void
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->jar:Ljava/io/File;

    if-eqz v0, :cond_1

    move v0, v1

    .line 81
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->hasResources()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->beginExecution()V

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->getRedirector()Lorg/apache/tools/ant/types/RedirectorElement;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setAlwaysLog(Z)V

    .line 90
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/RedirectorElement;->createOutputFilterChain()Lorg/apache/tools/ant/types/FilterChain;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->outputCache:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->add(Lorg/apache/tools/ant/filters/ChainableReader;)V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->createUnifiedSourcePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 96
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 97
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->verifyOneJar(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->endExecution()V

    .line 101
    throw v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "jar must be set through jar attribute or nested filesets"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar;->endExecution()V

    .line 101
    return-void
.end method

.method public setCertificates(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar;->certificates:Z

    .line 70
    return-void
.end method
