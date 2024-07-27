.class final Lcom/google/android/gms/internal/ads/oz;
.super Ljava/lang/Object;


# instance fields
.field private final DW:J

.field private final FH:J

.field private final j6:Lcom/google/android/gms/internal/ads/Ny;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Ny;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oz;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/oz;->DW:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/oz;->FH:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ny;JJLcom/google/android/gms/internal/ads/iz;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/oz;-><init>(Lcom/google/android/gms/internal/ads/Ny;JJ)V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/oz;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oz;->FH:J

    return-wide v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/oz;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oz;->DW:J

    return-wide v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oz;)Lcom/google/android/gms/internal/ads/Ny;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oz;->j6:Lcom/google/android/gms/internal/ads/Ny;

    return-object v0
.end method
