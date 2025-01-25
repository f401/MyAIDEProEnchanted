.class public final Lcom/google/android/gms/internal/ads/N;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Kw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroid/support/customtabs/g;

.field private FH:Landroid/support/customtabs/m;

.field private Hw:Lcom/google/android/gms/internal/ads/O;

.field private j6:Landroid/support/customtabs/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://www.example.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4e

    if-eqz v3, :cond_4e

    const/4 v2, 0x0

    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Iw;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_4e
    return v1
.end method


# virtual methods
.method public final DW(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroid/support/customtabs/g;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Iw;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/Jw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Jw;-><init>(Lcom/google/android/gms/internal/ads/Kw;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/N;->FH:Landroid/support/customtabs/m;

    invoke-static {p1, v0, v1}, Landroid/support/customtabs/g;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/m;)Z

    return-void
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroid/support/customtabs/g;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroid/support/customtabs/n;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->Hw:Lcom/google/android/gms/internal/ads/O;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/O;->j6()V

    :cond_c
    return-void
.end method

.method public final j6(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/N;->FH:Landroid/support/customtabs/m;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroid/support/customtabs/g;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroid/support/customtabs/n;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->FH:Landroid/support/customtabs/m;

    return-void
.end method

.method public final j6(Landroid/support/customtabs/g;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroid/support/customtabs/g;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/customtabs/g;->j6(J)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/N;->Hw:Lcom/google/android/gms/internal/ads/O;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/O;->DW()V

    :cond_e
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/O;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/N;->Hw:Lcom/google/android/gms/internal/ads/O;

    return-void
.end method

.method public final j6(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/N;->DW:Landroid/support/customtabs/g;

    const/4 p3, 0x0

    if-nez p2, :cond_6

    return p3

    :cond_6
    const/4 v0, 0x0

    if-nez p2, :cond_c

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroid/support/customtabs/n;

    goto :goto_16

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroid/support/customtabs/n;

    if-nez v1, :cond_16

    invoke-virtual {p2, v0}, Landroid/support/customtabs/g;->j6(Landroid/support/customtabs/a;)Landroid/support/customtabs/n;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroid/support/customtabs/n;

    :cond_16
    :goto_16
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/N;->j6:Landroid/support/customtabs/n;

    if-nez p2, :cond_1b

    return p3

    :cond_1b
    invoke-virtual {p2, p1, v0, v0}, Landroid/support/customtabs/n;->j6(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
