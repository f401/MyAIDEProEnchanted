.class public final Landroidx/loader/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final this$0:Landroidx/loader/content/Loader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/Loader;)V
    .registers 3

    iput-object p1, p0, Landroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Landroidx/loader/content/Loader;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->onContentChanged()V

    return-void
.end method
