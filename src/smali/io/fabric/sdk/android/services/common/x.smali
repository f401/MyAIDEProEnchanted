.class public Lio/fabric/sdk/android/services/common/x;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQy",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/Sy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSy",
            "<",
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
    .registers 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/x;->DW:Labcd/Qy;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/x;->j6:Labcd/Sy;

    invoke-virtual {v0, p1, v2}, Labcd/Py;->j6(Landroid/content/Context;Labcd/Sy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to determine installer package name"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
