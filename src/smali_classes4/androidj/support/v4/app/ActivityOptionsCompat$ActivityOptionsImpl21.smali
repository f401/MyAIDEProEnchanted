.class Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;
.super Landroidj/support/v4/app/ActivityOptionsCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl21"
.end annotation


# instance fields
.field private final mImpl:Landroidj/support/v4/app/ActivityOptionsCompat21;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat21;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat21;

    invoke-virtual {v0}, Landroidj/support/v4/app/ActivityOptionsCompat21;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidj/support/v4/app/ActivityOptionsCompat;)V
    .registers 4

    instance-of v0, p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    if-eqz v0, :cond_d

    check-cast p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat21;

    iget-object v1, p1, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroidj/support/v4/app/ActivityOptionsCompat21;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat21;->update(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    :cond_d
    return-void
.end method
