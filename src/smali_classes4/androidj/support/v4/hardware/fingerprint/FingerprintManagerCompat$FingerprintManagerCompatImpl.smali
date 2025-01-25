.class interface abstract Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FingerprintManagerCompatImpl"
.end annotation


# virtual methods
.method public abstract authenticate(Landroid/content/Context;Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidj/support/v4/os/CancellationSignal;Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
.end method

.method public abstract hasEnrolledFingerprints(Landroid/content/Context;)Z
.end method

.method public abstract isHardwareDetected(Landroid/content/Context;)Z
.end method
