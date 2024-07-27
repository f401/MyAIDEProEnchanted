.class public final Lcom/google/android/gms/internal/ads/A;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Lcom/google/android/gms/internal/ads/A;

.field private final j6:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/A;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/A;->j6:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/A;->DW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/A;->FH:Lcom/google/android/gms/internal/ads/A;

    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/A;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/A;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/A;->FH:Lcom/google/android/gms/internal/ads/A;

    return-object v0
.end method

.method public final j6()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/A;->j6:J

    return-wide v0
.end method
