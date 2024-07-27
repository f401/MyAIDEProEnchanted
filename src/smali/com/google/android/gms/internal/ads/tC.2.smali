.class public final Lcom/google/android/gms/internal/ads/tC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field private final DW:I

.field private final j6:Lcom/google/android/gms/internal/ads/jD;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jD;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/tC;-><init>(Lcom/google/android/gms/internal/ads/jD;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/jD;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tC;->j6:Lcom/google/android/gms/internal/ads/jD;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/tC;->DW:I

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/wC;I[ILcom/google/android/gms/internal/ads/_C;IJZZ)Lcom/google/android/gms/internal/ads/cC;
    .registers 24

    new-instance v0, Lcom/google/android/gms/internal/ads/sC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tC;->j6:Lcom/google/android/gms/internal/ads/jD;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jD;->zzgs()Lcom/google/android/gms/internal/ads/iD;

    move-result-object v7

    iget v10, p0, Lcom/google/android/gms/internal/ads/tC;->DW:I

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v8, p7

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/sC;-><init>(Lcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/wC;I[ILcom/google/android/gms/internal/ads/_C;ILcom/google/android/gms/internal/ads/iD;JIZZ)V

    return-object v0
.end method
