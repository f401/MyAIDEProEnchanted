.class public Lcom/s1243808733/aide/GradleProject;
.super Ljava/lang/Object;
.source "GradleProject.java"


# instance fields
.field public final outputsApkDebugDir:Ljava/io/File;

.field public final outputsApkDir:Ljava/io/File;

.field public final outputsApkReleaseDir:Ljava/io/File;

.field public final projectFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/s1243808733/aide/GradleProject;->projectFile:Ljava/io/File;

    .line 18
    new-instance v0, Ljava/io/File;

    const-string v1, "build/outputs/apk"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkDir:Ljava/io/File;

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkDir:Ljava/io/File;

    const-string v2, "debug"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkDebugDir:Ljava/io/File;

    .line 20
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkDir:Ljava/io/File;

    const-string v2, "release"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkReleaseDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getOutputApkFile(Ljava/io/File;)[Ljava/io/File;
    .registers 4

    .line 47
    new-instance v0, Lcom/s1243808733/aide/GradleProject$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/GradleProject$100000000;-><init>(Lcom/s1243808733/aide/GradleProject;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [Ljava/io/File;

    .line 58
    :cond_1
    return-object v0
.end method
