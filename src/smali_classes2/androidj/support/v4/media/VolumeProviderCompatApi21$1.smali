.class final Landroidj/support/v4/media/VolumeProviderCompatApi21$1;
.super Landroid/media/VolumeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$delegate:Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;


# direct methods
.method constructor <init>(IIILandroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;)V
    .registers 5

    iput-object p4, p0, Landroidj/support/v4/media/VolumeProviderCompatApi21$1;->val$delegate:Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompatApi21$1;->val$delegate:Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;->onAdjustVolume(I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompatApi21$1;->val$delegate:Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;->onSetVolumeTo(I)V

    return-void
.end method
