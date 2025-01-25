.class public Lcom/google/android/gms/internal/ads/GC;
.super Ljava/lang/Object;


# instance fields
.field final DW:J

.field final FH:J

.field final j6:Lcom/google/android/gms/internal/ads/BC;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/BC;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/GC;->DW:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/GC;->FH:J

    return-void
.end method


# virtual methods
.method public j6(Lcom/google/android/gms/internal/ads/CC;)Lcom/google/android/gms/internal/ads/BC;
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    return-object p1
.end method
