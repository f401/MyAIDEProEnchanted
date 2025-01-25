.class public final Landroid/support/v4/content/Loader$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/content/Loader;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/Loader;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/Loader$a;->j6:Landroid/support/v4/content/Loader;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 2

    iget-object p1, p0, Landroid/support/v4/content/Loader$a;->j6:Landroid/support/v4/content/Loader;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->tp()V

    return-void
.end method
