.class public final Landroidx/browser/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Landroid/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/support/customtabs/ICustomTabsService;
    .param p2, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 66
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    .line 67
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 68
    return-void
.end method

.method public static createMockSessionForTesting(Landroid/content/ComponentName;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 59
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSession;

    const/4 v1, 0x0

    new-instance v2, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
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

    .line 88
    .local p3, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/support/customtabs/ICustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 197
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v3, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 201
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x2

    monitor-exit v2

    goto :goto_0

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestPostMessageChannel(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "postMessageOrigin"    # Landroid/net/Uri;

    .line 176
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, p1}, Landroid/support/customtabs/ICustomTabsService;->requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    const-string v3, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v2, "metaBundle":Landroid/os/Bundle;
    const-string v3, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    :try_start_0
    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, v2}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 113
    :goto_0
    return v3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSecondaryToolbarViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "clickableIDs"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 131
    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, v0}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "description"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v3, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    const-string v3, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v2, "metaBundle":Landroid/os/Bundle;
    const-string v3, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    :try_start_0
    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, v2}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 161
    :goto_0
    return v3

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public validateRelationship(ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "relation"    # I
    .param p2, "origin"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    .line 228
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/support/customtabs/ICustomTabsService;->validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
