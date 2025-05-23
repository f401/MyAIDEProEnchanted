.class public Lcom/bumptech/glide/request/target/NotificationTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final notificationId:I

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V
    .registers 10

    invoke-direct {p0, p4, p5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p6, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Notification object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p2, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    iput p3, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    iput-object p6, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    iput p7, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    iput-object p2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/app/Notification;I)V
    .registers 14

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V

    return-void
.end method

.method private update()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    iget-object v2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/NotificationTarget;->update()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/NotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
