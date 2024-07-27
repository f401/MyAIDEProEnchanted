.class public final Lcom/google/android/gms/internal/ads/Vy;
.super Ljava/lang/Object;


# instance fields
.field private DW:J

.field private FH:J

.field private Hw:Z

.field public VH:I

.field public Zo:I

.field public gn:J

.field private j6:Ljava/lang/Object;

.field public tp:J

.field public u7:J

.field public v5:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/gms/internal/ads/Vy;
    .registers 20

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vy;->j6:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/Vy;->DW:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/Vy;->FH:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/Vy;->Hw:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/Vy;->v5:Z

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/Vy;->gn:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/Vy;->u7:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/Vy;->Zo:I

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Vy;->tp:J

    return-object p0
.end method
