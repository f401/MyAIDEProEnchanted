.class final Lcom/google/android/gms/internal/ads/Yq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Es;


# instance fields
.field private final DW:I

.field private FH:Lcom/google/android/gms/internal/ads/tr;

.field private Hw:Lcom/google/android/gms/internal/ads/dr;

.field private final j6:Ljava/lang/String;

.field private v5:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ds;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    if-eqz v1, :cond_31

    :try_start_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ds;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/vr;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Dq;->DW(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/tr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yq;->FH:Lcom/google/android/gms/internal/ads/tr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vr;->EQ()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I
    :try_end_29
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_13 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_31
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    :try_start_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ds;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/fr;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Dq;->DW(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr;->EQ()Lcom/google/android/gms/internal/ads/jr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->EQ()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr;->J0()Lcom/google/android/gms/internal/ads/Ur;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ur;->EQ()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I
    :try_end_60
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_39 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "unsupported AEAD DEM key type: "

    if-eqz v0, :cond_79

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7e

    :cond_79
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7e
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    return v0
.end method

.method public final j6([B)Lcom/google/android/gms/internal/ads/nq;
    .registers 5

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    if-ne v0, v1, :cond_a8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/google/android/gms/internal/ads/tr;->Ws()Lcom/google/android/gms/internal/ads/tr$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yq;->FH:Lcom/google/android/gms/internal/ads/tr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/tr$a;

    iget v2, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/tr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/tr;

    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/nq;

    return-object p1

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/hr;->QX()Lcom/google/android/gms/internal/ads/hr$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dr;->J0()Lcom/google/android/gms/internal/ads/hr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/hr$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/hr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Sr;->QX()Lcom/google/android/gms/internal/ads/Sr$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dr;->Ws()Lcom/google/android/gms/internal/ads/Sr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Sr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Sr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/dr;->QX()Lcom/google/android/gms/internal/ads/dr$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dr;->EQ()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dr$a;->j6(I)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dr$a;->j6(Lcom/google/android/gms/internal/ads/hr;)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dr$a;->j6(Lcom/google/android/gms/internal/ads/Sr;)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dr;

    goto :goto_2b

    :cond_a0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_b1

    :goto_b0
    throw p1

    :goto_b1
    goto :goto_b0
.end method
