.class public final Lcom/google/android/gms/internal/ads/N;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Kw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroidx/browser/customtabs/CustomTabsClient;

.field private FH:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private Hw:Lcom/google/android/gms/internal/ads/O;

.field private j6:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.example.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Iw;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final DW(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Iw;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/Jw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Jw;-><init>(Lcom/google/android/gms/internal/ads/Kw;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N;->FH:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    goto :goto_0
.end method

.method public final j6()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroidx/browser/customtabs/CustomTabsSession;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->Hw:Lcom/google/android/gms/internal/ads/O;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/O;->j6()V

    :cond_0
    return-void
.end method

.method public final j6(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->FH:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroidx/browser/customtabs/CustomTabsSession;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N;->FH:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    goto :goto_0
.end method

.method public final j6(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->Hw:Lcom/google/android/gms/internal/ads/O;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/O;->DW()V

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/O;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->Hw:Lcom/google/android/gms/internal/ads/O;

    return-void
.end method

.method public final j6(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v1, :cond_3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroidx/browser/customtabs/CustomTabsSession;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroidx/browser/customtabs/CustomTabsSession;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v3}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_1
.end method
