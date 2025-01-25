.class public final Lcom/google/android/gms/internal/ads/XB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/HB;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/EB;

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/WB;

.field public final j6:Lcom/google/android/gms/internal/ads/WB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/WB<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/WB;Lcom/google/android/gms/internal/ads/WB;Lcom/google/android/gms/internal/ads/EB;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/WB<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/EB;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/XB;->j6:Lcom/google/android/gms/internal/ads/WB;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/XB;->DW:Lcom/google/android/gms/internal/ads/EB;

    iput p4, p0, Lcom/google/android/gms/internal/ads/XB;->FH:I

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/WB;->j6(Lcom/google/android/gms/internal/ads/WB;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/XB;->FH:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/WB;->j6(Lcom/google/android/gms/internal/ads/WB;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/XB;->FH:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final FH()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->DW:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->v5()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public final Hw(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->DW:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/XB;->DW:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/EB;->VH()V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->DW:Lcom/google/android/gms/internal/ads/EB;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/XB;->DW:Lcom/google/android/gms/internal/ads/EB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/XB;->Hw:Lcom/google/android/gms/internal/ads/WB;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/WB;->XL:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZJ)I

    move-result p1

    return p1
.end method

.method public final j6()V
    .registers 1

    return-void
.end method
