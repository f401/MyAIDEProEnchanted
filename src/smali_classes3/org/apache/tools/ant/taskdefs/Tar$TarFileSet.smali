.class public Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
.super Lorg/apache/tools/ant/types/TarFileSet;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarFileSet"
.end annotation


# instance fields
.field private files:[Ljava/lang/String;

.field private preserveLeadingSlashes:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 822
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;-><init>()V

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    .line 823
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 814
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/TarFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    .line 815
    return-void
.end method


# virtual methods
.method public getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 832
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 833
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    .line 835
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 852
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v0

    return v0
.end method

.method public getPreserveLeadingSlashes()Z
    .registers 2

    .line 869
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    return v0
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2

    .line 845
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setFileMode(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public setPreserveLeadingSlashes(Z)V
    .registers 2

    .line 862
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    .line 863
    return-void
.end method
