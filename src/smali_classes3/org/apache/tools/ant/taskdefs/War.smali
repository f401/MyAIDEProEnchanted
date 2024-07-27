.class public Lorg/apache/tools/ant/taskdefs/War;
.super Lorg/apache/tools/ant/taskdefs/Jar;
.source "War.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final XML_DESCRIPTOR_PATH:Ljava/lang/String; = "WEB-INF/web.xml"


# instance fields
.field private addedWebXmlFile:Ljava/io/File;

.field private deploymentDescriptor:Ljava/io/File;

.field private needxmlfile:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/War;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/War;->needxmlfile:Z

    .line 69
    const-string v0, "war"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->archiveType:Ljava/lang/String;

    .line 70
    const-string v0, "create"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->emptyBehavior:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public addClasses(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 3

    .line 129
    const-string v0, "WEB-INF/classes/"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 131
    return-void
.end method

.method public addLib(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 3

    .line 119
    const-string v0, "WEB-INF/lib/"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 121
    return-void
.end method

.method public addWebinf(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 3

    .line 139
    const-string v0, "WEB-INF/"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 141
    return-void
.end method

.method protected cleanUp()V
    .registers 3

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/War;->needxmlfile:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/War;->isInUpdateMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/War;->hasUpdatedFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    .line 223
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->cleanUp()V

    .line 224
    return-void

    .line 219
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No WEB-INF/web.xml file was added.\nIf this is your intent, set needxmlfile=\'false\' "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 154
    return-void
.end method

.method public setNeedxmlfile(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/War;->needxmlfile:Z

    .line 111
    return-void
.end method

.method public setWarfile(Ljava/io/File;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/War;->setDestFile(Ljava/io/File;)V

    .line 84
    return-void
.end method

.method public setWebxml(Ljava/io/File;)V
    .registers 7

    .line 92
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 100
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->setFile(Ljava/io/File;)V

    .line 101
    const-string v1, "WEB-INF/web.xml"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->setFullpath(Ljava/lang/String;)V

    .line 102
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 103
    return-void

    .line 94
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Deployment descriptor:  does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 180
    .line 181
    const-string v0, "WEB-INF/web.xml"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 185
    const/4 v0, 0x0

    .line 187
    sget-object v3, Lorg/apache/tools/ant/taskdefs/War;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, v2, p1}, Lorg/apache/tools/ant/util/FileUtils;->fileNameEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/War;->archiveType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " files include a second "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WEB-INF/web.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which will be ignored.\nThe duplicate entry is at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\nThe file that will be used is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/War;->logWhenWriting(Ljava/lang/String;I)V

    .line 203
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    .line 206
    :cond_1
    return-void

    .line 196
    :cond_2
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    .line 200
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    :cond_3
    move v0, v1

    goto :goto_0
.end method
