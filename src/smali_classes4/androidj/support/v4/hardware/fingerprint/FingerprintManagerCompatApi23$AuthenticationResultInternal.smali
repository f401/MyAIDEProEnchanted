.class public final Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationResultInternal"
.end annotation


# instance fields
.field private mCryptoObject:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;


# direct methods
.method public constructor <init>(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->mCryptoObject:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->mCryptoObject:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    return-object v0
.end method
