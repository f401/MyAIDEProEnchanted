.class public Lio/fabric/sdk/android/services/common/x;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/Sy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/fabric/sdk/android/services/common/w;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/common/w;-><init>(Lio/fabric/sdk/android/services/common/x;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/x;->j6:Labcd/Sy;

    new-instance v0, Labcd/Qy;

    invoke-direct {v0}, Labcd/Qy;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/x;->DW:Labcd/Qy;

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/x;->DW:Labcd/Qy;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/x;->j6:Labcd/Sy;

    invoke-virtual {v1, p1, v2}, Labcd/Py;->j6(Landroid/content/Context;Labcd/Sy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    move-object v0, p1

    :goto_15
    return-object v0

    :catch_16
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to determine installer package name"

    invoke-interface {v1, v2, v3, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
