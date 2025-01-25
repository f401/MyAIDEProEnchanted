.class public Lio/github/zeroaicy/aide/cmake/CmakeBuild;
.super Ljava/lang/Object;
.source "CmakeBuild.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    }
.end annotation


# instance fields
.field private cmakeCommandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private error:Z

.field private errorInfoBuilder:Ljava/lang/StringBuilder;

.field private ninjaCommandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->errorInfoBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;
    .registers 4

    .line 68
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->errorInfoBuilder:Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->errorInfoBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->errorInfoBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->error:Z

    return-object p0
.end method

.method public error()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->error:Z

    return v0
.end method

.method public getBuildInfo()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->errorInfoBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmakeCommandList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->cmakeCommandList:Ljava/util/List;

    return-object v0
.end method

.method public getNinjaCommandList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->ninjaCommandList:Ljava/util/List;

    return-object v0
.end method

.method public setCmakeCommandList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->cmakeCommandList:Ljava/util/List;

    return-void
.end method

.method public setNinjaCommandList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->ninjaCommandList:Ljava/util/List;

    return-void
.end method
