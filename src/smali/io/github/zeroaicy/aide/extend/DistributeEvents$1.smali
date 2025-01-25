.class Lio/github/zeroaicy/aide/extend/DistributeEvents$1;
.super Ljava/lang/Object;
.source "DistributeEvents.java"

# interfaces
.implements Labcd/Pl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$build:Lio/github/zeroaicy/aide/cmake/CmakeBuild;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/aide/cmake/CmakeBuild;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lio/github/zeroaicy/aide/extend/DistributeEvents$1;->val$build:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public j6()[B
    .registers 2

    .line 99
    iget-object v0, p0, Lio/github/zeroaicy/aide/extend/DistributeEvents$1;->val$build:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getBuildInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
