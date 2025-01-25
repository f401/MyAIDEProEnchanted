.class public abstract Landroidj/support/v4/media/VolumeProviderCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/VolumeProviderCompat$Callback;,
        Landroidj/support/v4/media/VolumeProviderCompat$ControlType;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I

.field private mVolumeProviderObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mControlType:I

    iput p2, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    iput p3, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mControlType:I

    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_d

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    :goto_c
    return-object v0

    :cond_d
    iget v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mControlType:I

    iget v1, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    iget v2, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    new-instance v3, Landroidj/support/v4/media/VolumeProviderCompat$1;

    invoke-direct {v3, p0}, Landroidj/support/v4/media/VolumeProviderCompat$1;-><init>(Landroidj/support/v4/media/VolumeProviderCompat;)V

    invoke-static {v0, v1, v2, v3}, Landroidj/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroidj/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    goto :goto_c
.end method

.method public onAdjustVolume(I)V
    .registers 2

    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 2

    return-void
.end method

.method public setCallback(Landroidj/support/v4/media/VolumeProviderCompat$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

    return-void
.end method

.method public final setCurrentVolume(I)V
    .registers 3

    iput p1, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    invoke-virtual {p0}, Landroidj/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompatApi21;->setCurrentVolume(Ljava/lang/Object;I)V

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/media/VolumeProviderCompat;->mCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {v0, p0}, Landroidj/support/v4/media/VolumeProviderCompat$Callback;->onVolumeChanged(Landroidj/support/v4/media/VolumeProviderCompat;)V

    :cond_14
    return-void
.end method
