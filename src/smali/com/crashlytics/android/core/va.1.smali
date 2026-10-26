.class Lcom/crashlytics/android/core/va;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/Sa;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/va;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/core/va;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/core/va;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/core/va;->DW:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "io.fabric.unity.crashlytics.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
