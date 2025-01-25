.class final Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCallback(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$callback:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    new-instance v1, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;-><init>(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationSucceeded(Landroidj/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V

    return-void
.end method
