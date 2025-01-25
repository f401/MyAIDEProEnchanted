.class public abstract Lcom/google/android/gms/internal/ads/RB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wD;


# instance fields
.field public final DW:I

.field public final FH:Lcom/google/android/gms/internal/ads/zzfs;

.field public final Hw:I

.field public final VH:J

.field public final Zo:J

.field protected final gn:Lcom/google/android/gms/internal/ads/iD;

.field public final j6:Lcom/google/android/gms/internal/ads/mD;

.field public final v5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/iD;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/RB;->gn:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/mD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/RB;->DW:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iput p5, p0, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    return-void
.end method


# virtual methods
.method public abstract Hw()J
.end method
