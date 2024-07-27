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
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Labcd/Be;

    invoke-direct {v0}, Labcd/Be;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Be;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/Be;

    iput-object v0, p0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->be:Labcd/Be;

    return-void
.end method


# virtual methods
.method public getMinSdkVersion(I)I
    .registers 4

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->be:Labcd/Be;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Labcd/Be;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 57
    :goto_0
    return p1

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getTargetSdkVersion(I)I
    .registers 4

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->be:Labcd/Be;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Labcd/Be;->u7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 65
    :goto_0
    return p1

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method
