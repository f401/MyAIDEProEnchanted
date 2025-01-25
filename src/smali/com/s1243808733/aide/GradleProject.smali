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
    .registers 4

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
    new-instance p1, Ljava/io/File;

    const-string v1, "debug"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkDebugDir:Ljava/io/File;

    .line 20
    new-instance p1, Ljava/io/File;

    const-string v1, "release"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/s1243808733/aide/GradleProject;->outputsApkReleaseDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getOutputApkFile(Ljava/io/File;)[Ljava/io/File;
    .registers 3

    .line 47
    new-instance v0, Lcom/s1243808733/aide/GradleProject$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/GradleProject$1;-><init>(Lcom/s1243808733/aide/GradleProject;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 54
    array-length v0, p1

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    return-object p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return-object p1
.end method
