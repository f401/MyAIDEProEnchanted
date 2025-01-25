.class public Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;
.super Ljava/lang/Object;
.source "ProjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/ProjectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradleInfo"
.end annotation


# instance fields
.field be:Labcd/Be;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Labcd/Be;

    invoke-direct {v0}, Labcd/Be;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Labcd/AbcdAccess$_CC;->Be_j6(Labcd/Be;Ljava/lang/String;)Labcd/Be;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->be:Labcd/Be;

    return-void
.end method


# virtual methods
.method public getMinSdkVersion(I)I
    .registers 4

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->be:Labcd/Be;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/AbcdAccess$_CC;->Be_VH(Labcd/Be;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    :goto_d
    return p1
.end method

.method public getTargetSdkVersion(I)I
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->be:Labcd/Be;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/AbcdAccess$_CC;->Be_u7(Labcd/Be;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    :goto_d
    return p1
.end method
