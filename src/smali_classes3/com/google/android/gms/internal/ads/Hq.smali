.class Lcom/google/android/gms/internal/ads/Hq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq<",
        "Lcom/google/android/gms/internal/ads/nq;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/Hq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Hq;->j6:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Iq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Iq;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Lcom/google/android/gms/internal/ads/uq;)V

    return-void
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;
    .registers 6

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/dr;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dr;

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Os;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->J0()Lcom/google/android/gms/internal/ads/hr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Zs;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->Ws()Lcom/google/android/gms/internal/ads/Sr;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/yq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->Ws()Lcom/google/android/gms/internal/ads/Sr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/Os;-><init>(Lcom/google/android/gms/internal/ads/Zs;Lcom/google/android/gms/internal/ads/yq;I)V

    return-object v0

    :cond_3a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_42
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_42} :catch_42

    :catch_42
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/fr;

    if-eqz v0, :cond_33

    check-cast p1, Lcom/google/android/gms/internal/ads/fr;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fr;->EQ()Lcom/google/android/gms/internal/ads/jr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hr;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fr;->J0()Lcom/google/android/gms/internal/ads/Ur;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Sr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/dr;->QX()Lcom/google/android/gms/internal/ads/dr$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dr$a;->j6(Lcom/google/android/gms/internal/ads/hr;)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dr$a;->j6(Lcom/google/android/gms/internal/ads/Sr;)Lcom/google/android/gms/internal/ads/dr$a;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dr$a;->j6(I)Lcom/google/android/gms/internal/ads/dr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_33
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Hq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/fr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Hq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Hq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pt;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr$a;

    sget-object p1, Lcom/google/android/gms/internal/ads/Yr$b;->DW:Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Yr;

    return-object p1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dr;

    if-eqz v0, :cond_38

    check-cast p1, Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Os;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->J0()Lcom/google/android/gms/internal/ads/hr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Zs;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->Ws()Lcom/google/android/gms/internal/ads/Sr;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/yq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dr;->Ws()Lcom/google/android/gms/internal/ads/Sr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/Os;-><init>(Lcom/google/android/gms/internal/ads/Zs;Lcom/google/android/gms/internal/ads/yq;I)V

    return-object v0

    :cond_38
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method
