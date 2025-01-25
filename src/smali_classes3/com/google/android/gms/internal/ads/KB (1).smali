.class public final Lcom/google/android/gms/internal/ads/KB;
.super Lcom/google/android/gms/internal/ads/Sy;


# static fields
.field private static final DW:Ljava/lang/Object;


# instance fields
.field private final FH:J

.field private final Hw:J

.field private final VH:Z

.field private final Zo:J

.field private final gn:Z

.field private final v5:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/KB;->DW:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJJJZZ)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Sy;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KB;->FH:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/KB;->Hw:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KB;->v5:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KB;->Zo:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/KB;->VH:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/KB;->gn:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 15

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/KB;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final FH()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6(Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/KB;->DW:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    if-eqz p3, :cond_a

    sget-object p1, Lcom/google/android/gms/internal/ads/KB;->DW:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    move-object v2, p1

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/KB;->FH:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/Uy;->j6(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/Uy;

    return-object p2
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL  # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/KB;->VH:Z

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/KB;->Hw:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/Vy;->j6(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/gms/internal/ads/Vy;

    return-object p2
.end method
