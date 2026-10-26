.class Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;
.super Landroidj/support/v4/app/ActivityOptionsCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl23"
.end annotation


# instance fields
.field private final mImpl:Landroidj/support/v4/app/ActivityOptionsCompat23;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V
    .locals 0

    invoke-direct {p0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat23;

    return-void
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/ActivityOptionsCompat23;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0}, Landroidj/support/v4/app/ActivityOptionsCompat23;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidj/support/v4/app/ActivityOptionsCompat;)V
    .locals 2

    instance-of v0, p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    if-eqz v0, :cond_0

    check-cast p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat23;

    iget-object v1, p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat23;->update(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    :cond_0
    return-void
.end method
