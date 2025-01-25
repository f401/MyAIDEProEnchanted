.class public final Lcom/google/android/gms/internal/ads/we;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/pe;

.field public final FH:Lcom/google/android/gms/internal/ads/Je;

.field public final Hw:Ljava/lang/String;

.field public final VH:J

.field public final Zo:Lcom/google/android/gms/internal/ads/Pe;

.field public final j6:I

.field public final v5:Lcom/google/android/gms/internal/ads/se;


# direct methods
.method public constructor <init>(I)V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/we;-><init>(Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;ILcom/google/android/gms/internal/ads/Pe;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;ILcom/google/android/gms/internal/ads/Pe;J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/we;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/we;->v5:Lcom/google/android/gms/internal/ads/se;

    iput p5, p0, Lcom/google/android/gms/internal/ads/we;->j6:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/we;->Zo:Lcom/google/android/gms/internal/ads/Pe;

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/we;->VH:J

    return-void
.end method
