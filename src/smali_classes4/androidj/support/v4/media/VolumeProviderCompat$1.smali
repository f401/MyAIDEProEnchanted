.class Landroidj/support/v4/media/VolumeProviderCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/VolumeProviderCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/VolumeProviderCompat;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/VolumeProviderCompat$1;->this$0:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat$1;->this$0:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat$1;->this$0:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    return-void
.end method
