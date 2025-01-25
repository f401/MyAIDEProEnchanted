.class public abstract Lcom/google/android/gms/internal/ads/PB;
.super Lcom/google/android/gms/internal/ads/aC;


# instance fields
.field private EQ:[I

.field private tp:Lcom/google/android/gms/internal/ads/QB;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/ads/aC;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJI)V

    return-void
.end method


# virtual methods
.method protected final VH()Lcom/google/android/gms/internal/ads/QB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PB;->tp:Lcom/google/android/gms/internal/ads/QB;

    return-object v0
.end method

.method public final j6(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PB;->EQ:[I

    aget p1, v0, p1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/QB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PB;->tp:Lcom/google/android/gms/internal/ads/QB;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/QB;->j6()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PB;->EQ:[I

    return-void
.end method
