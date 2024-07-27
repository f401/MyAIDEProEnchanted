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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ds;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/vr;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Dq;->DW(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/tr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->FH:Lcom/google/android/gms/internal/ads/tr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vr;->EQ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ds;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/fr;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Dq;->DW(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fr;->EQ()Lcom/google/android/gms/internal/ads/jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->EQ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fr;->J0()Lcom/google/android/gms/internal/ads/Ur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ur;->EQ()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    return v0
.end method

.method public final j6([B)Lcom/google/android/gms/internal/ads/nq;
    .registers 6

    const/4 v2, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/tr;->Ws()Lcom/google/android/gms/internal/ads/tr$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yq;->FH:Lcom/google/android/gms/internal/ads/tr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/tr$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/tr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/tr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/nq;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yq;->v5:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Yq;->DW:I

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/hr;->QX()Lcom/google/android/gms/internal/ads/hr$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dr;->J0()Lcom/google/android/gms/internal/ads/hr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/hr$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Sr;->QX()Lcom/google/android/gms/internal/ads/Sr$a;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dr;->Ws()Lcom/google/android/gms/internal/ads/Sr;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    check-cast v1, Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Sr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Sr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/dr;->QX()Lcom/google/android/gms/internal/ads/dr$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Yq;->Hw:Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dr;->EQ()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dr$a;->j6(I)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dr$a;->j6(Lcom/google/android/gms/internal/ads/hr;)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/dr$a;->j6(Lcom/google/android/gms/internal/ads/Sr;)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yq;->j6:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/nq;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Symmetric key has incorrect length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
