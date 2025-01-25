.class public Lorg/apache/tools/ant/taskdefs/Ear;
.super Lorg/apache/tools/ant/taskdefs/Jar;
.source "Ear.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final XML_DESCRIPTOR_PATH:Ljava/lang/String; = "META-INF/application.xml"


# instance fields
.field private deploymentDescriptor:Ljava/io/File;

.field private descriptorAdded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ear;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;-><init>()V

    .line 48
    const-string v0, "ear"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->archiveType:Ljava/lang/String;

    .line 49
    const-string v0, "create"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->emptyBehavior:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public addArchives(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 3

    .line 90
    const-string v0, "/"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 92
    return-void
.end method

.method protected cleanUp()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->descriptorAdded:Z

    .line 154
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->cleanUp()V

    .line 155
    return-void
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ear;->isInUpdateMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 108
    :cond_a
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 109
    return-void

    .line 105
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "appxml attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ear;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setAppxml(Ljava/io/File;)V
    .registers 7

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 76
    new-instance v0, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 77
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->setFile(Ljava/io/File;)V

    .line 78
    const-string v1, "META-INF/application.xml"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->setFullpath(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 80
    return-void

    .line 70
    :cond_1b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Deployment descriptor: %s does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setEarfile(Ljava/io/File;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Ear;->setDestFile(Ljava/io/File;)V

    .line 61
    return-void
.end method

.method protected zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 128
    const-string v0, "META-INF/application.xml"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    if-eqz v0, :cond_19

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ear;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 130
    invoke-virtual {v1, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->fileNameEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->descriptorAdded:Z

    if-eqz v0, :cond_49

    .line 132
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: selected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ear;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " files include a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "META-INF/application.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which will be ignored (please use appxml attribute to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ear;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " task)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Ear;->logWhenWriting(Ljava/lang/String;I)V

    .line 145
    :goto_48
    return-void

    .line 139
    :cond_49
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    .line 140
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Ear;->descriptorAdded:Z

    goto :goto_48

    .line 143
    :cond_4f
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto :goto_48
.end method
