.class public final Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;,
        Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;,
        Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;,
        Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .registers 2

    new-instance v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidj/support/v4/os/CancellationSignal;Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1  # Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/os/CancellationSignal;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/os/Handler;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->authenticate(Landroid/content/Context;Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidj/support/v4/os/CancellationSignal;Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .registers 3

    sget-object v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected()Z
    .registers 3

    sget-object v0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->isHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
