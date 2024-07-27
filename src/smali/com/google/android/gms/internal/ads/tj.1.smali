.class public final Lcom/google/android/gms/internal/ads/tj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:I

.field public final Hw:J

.field private final j6:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/vj;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vj;->j6(Lcom/google/android/gms/internal/ads/vj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tj;->j6:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vj;->DW(Lcom/google/android/gms/internal/ads/vj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tj;->DW:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vj;->FH(Lcom/google/android/gms/internal/ads/vj;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/tj;->FH:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vj;->Hw(Lcom/google/android/gms/internal/ads/vj;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tj;->Hw:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vj;Lcom/google/android/gms/internal/ads/uj;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tj;-><init>(Lcom/google/android/gms/internal/ads/vj;)V

    return-void
.end method
