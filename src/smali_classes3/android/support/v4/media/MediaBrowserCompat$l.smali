.class Landroid/support/v4/media/MediaBrowserCompat$l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private DW:Landroid/os/Bundle;

.field private j6:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$l;->j6:Landroid/os/Messenger;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$l;->DW:Landroid/os/Bundle;

    return-void
.end method

.method private j6(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$l;->j6:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method DW(Landroid/os/Messenger;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_root_hints"

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$l;->DW:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method FH(Landroid/os/Messenger;)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method j6(Landroid/content/Context;Landroid/os/Messenger;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data_root_hints"

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$l;->DW:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method j6(Landroid/os/Messenger;)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data_callback_token"

    invoke-static {v0, p1, p2}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p1, "data_options"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method
