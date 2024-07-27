.class Lcom/crashlytics/android/core/a;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:Ljava/lang/String;

.field public final Hw:Ljava/lang/String;

.field public final Zo:Ljava/lang/String;

.field public final j6:Ljava/lang/String;

.field public final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/core/a;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/a;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/a;->Hw:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/core/a;->v5:Ljava/lang/String;

    iput-object p6, p0, Lcom/crashlytics/android/core/a;->Zo:Ljava/lang/String;

    return-void
.end method

.method public static j6(Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/a;
    .registers 11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/v;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, "0.0"

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/a;

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
