.class Lio/fabric/sdk/android/services/common/w;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Sy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LSy<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Lio/fabric/sdk/android/services/common/x;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/x;)V
    .registers 2

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/w;->j6:Lio/fabric/sdk/android/services/common/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/w;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const-string p1, ""

    :cond_10
    return-object p1
.end method
