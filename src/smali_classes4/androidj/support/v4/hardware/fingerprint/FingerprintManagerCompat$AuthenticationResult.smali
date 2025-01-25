.class public final Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;


# direct methods
.method public constructor <init>(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-object v0
.end method
