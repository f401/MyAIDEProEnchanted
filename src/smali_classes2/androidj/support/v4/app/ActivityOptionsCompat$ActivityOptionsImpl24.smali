.class Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
.super Landroidj/support/v4/app/ActivityOptionsCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl24"
.end annotation


# instance fields
.field private final mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroidj/support/v4/app/ActivityOptionsCompat24;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/ActivityOptionsCompat24;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v1, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1, p1}, Landroidj/support/v4/app/ActivityOptionsCompat24;->setLaunchBounds(Landroid/graphics/Rect;)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroidj/support/v4/app/ActivityOptionsCompat24;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidj/support/v4/app/ActivityOptionsCompat;)V
    .registers 4

    instance-of v0, p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    if-eqz v0, :cond_0

    check-cast p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    iget-object v1, p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat24;->update(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :cond_0
    return-void
.end method
