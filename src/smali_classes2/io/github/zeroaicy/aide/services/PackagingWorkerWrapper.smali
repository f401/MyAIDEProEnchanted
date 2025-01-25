.class public abstract Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;
.super Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;
.source "PackagingWorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;
    }
.end annotation


# instance fields
.field externalPackagingService:Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

.field private noBackupFilesDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V
    .registers 3

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    .line 25
    iput-object p1, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->externalPackagingService:Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

    return-void
.end method


# virtual methods
.method public getNoBackupFilesDirPath()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->noBackupFilesDirPath:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 36
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->externalPackagingService:Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

    invoke-virtual {v0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->noBackupFilesDirPath:Ljava/lang/String;

    .line 38
    :cond_10
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->noBackupFilesDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTaskWrapper(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;
.end method

.method public getUserAndroidJar()Ljava/lang/String;
    .registers 4

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->getNoBackupFilesDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/.aide/android.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_androidjar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 43
    move-object v0, p0

    iget-object v1, v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;->Zo:Ljava/util/List;

    if-nez v1, :cond_c

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;->Zo:Ljava/util/List;

    .line 46
    :cond_c
    const-string v1, "ZeroAicyExternalPackagingService"

    const-string v2, "task run"

    invoke-static {v1, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;->Zo:Ljava/util/List;

    invoke-virtual/range {p0 .. p16}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->getTaskWrapper(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
