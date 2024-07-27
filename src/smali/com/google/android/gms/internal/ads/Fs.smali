.class public final Lcom/google/android/gms/internal/ads/Fs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sq;


# static fields
.field private static final j6:[B


# instance fields
.field private final DW:Ljava/security/interfaces/ECPrivateKey;

.field private final FH:Lcom/google/android/gms/internal/ads/Hs;

.field private final Hw:Ljava/lang/String;

.field private final VH:Lcom/google/android/gms/internal/ads/Es;

.field private final Zo:Lcom/google/android/gms/internal/ads/Ns;

.field private final v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/Fs;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fs;->DW:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/Hs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Hs;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fs;->FH:Lcom/google/android/gms/internal/ads/Hs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fs;->v5:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fs;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Fs;->Zo:Lcom/google/android/gms/internal/ads/Ns;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Fs;->VH:Lcom/google/android/gms/internal/ads/Es;

    return-void
.end method
