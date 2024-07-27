.class public final Lcom/google/android/gms/internal/ads/Gs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tq;


# static fields
.field private static final j6:[B


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Is;

.field private final FH:Ljava/lang/String;

.field private final Hw:[B

.field private final Zo:Lcom/google/android/gms/internal/ads/Es;

.field private final v5:Lcom/google/android/gms/internal/ads/Ns;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/Gs;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ks;->j6(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Is;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Is;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gs;->DW:Lcom/google/android/gms/internal/ads/Is;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gs;->Hw:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gs;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Gs;->v5:Lcom/google/android/gms/internal/ads/Ns;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Gs;->Zo:Lcom/google/android/gms/internal/ads/Es;

    return-void
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gs;->DW:Lcom/google/android/gms/internal/ads/Is;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gs;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Gs;->Hw:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Gs;->Zo:Lcom/google/android/gms/internal/ads/Es;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Es;->j6()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Gs;->v5:Lcom/google/android/gms/internal/ads/Ns;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Is;->j6(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/Ns;)Lcom/google/android/gms/internal/ads/Js;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gs;->Zo:Lcom/google/android/gms/internal/ads/Es;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Js;->DW()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Es;->j6([B)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/Gs;->j6:[B

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/nq;->j6([B[B)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Js;->j6()[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
