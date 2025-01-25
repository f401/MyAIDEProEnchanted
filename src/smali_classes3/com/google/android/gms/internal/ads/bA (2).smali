.class final Lcom/google/android/gms/internal/ads/bA;
.super Ljava/lang/Object;


# instance fields
.field private final DW:J

.field private final j6:I


# direct methods
.method private constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/bA;->j6:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bA;->DW:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/gms/internal/ads/aA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bA;-><init>(IJ)V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/bA;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/bA;->j6:I

    return p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/bA;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/bA;->DW:J

    return-wide v0
.end method
