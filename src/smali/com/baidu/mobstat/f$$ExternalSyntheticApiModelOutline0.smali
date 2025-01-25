.class public final synthetic Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;)J
    .registers 3

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/Activity;)Landroid/net/Uri;
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Window$Callback;Z)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method
