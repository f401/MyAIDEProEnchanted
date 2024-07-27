.class public Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncTarget"
.end annotation


# instance fields
.field private preserveEmptyDirs:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 535
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>()V

    .line 536
    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;Z)Lorg/apache/tools/ant/types/FileSet;
    .registers 3

    .line 524
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->toFileSet(Z)Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    return-object v0
.end method

.method private toFileSet(Z)Lorg/apache/tools/ant/types/FileSet;
    .registers 7

    .line 573
    new-instance v1, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 574
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/FileSet;->setCaseSensitive(Z)V

    .line 575
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->isFollowSymlinks()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/FileSet;->setFollowSymlinks(Z)V

    .line 576
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getMaxLevelsOfSymlinks()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/FileSet;->setMaxLevelsOfSymlinks(I)V

    .line 577
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 579
    if-eqz p1, :cond_1

    .line 580
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->appendIncludes([Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/FileSet;->appendExcludes([Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 584
    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/types/FileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getDefaultexcludes()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    .line 588
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getPreserveEmptyDirs()Ljava/lang/Boolean;
    .registers 2

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->preserveEmptyDirs:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDir(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 546
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "preserveintarget doesn\'t support the dir attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreserveEmptyDirs(Z)V
    .registers 3

    .line 558
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->preserveEmptyDirs:Ljava/lang/Boolean;

    .line 559
    return-void
.end method
