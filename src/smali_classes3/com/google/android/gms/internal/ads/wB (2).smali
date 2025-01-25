.class public final Lcom/google/android/gms/internal/ads/wB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AB;
.implements Lcom/google/android/gms/internal/ads/BB;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/jD;

.field private EQ:Lcom/google/android/gms/internal/ads/Sy;

.field private final FH:Lcom/google/android/gms/internal/ads/Sz;

.field private final Hw:I

.field private final VH:Lcom/google/android/gms/internal/ads/Uy;

.field private final Zo:Lcom/google/android/gms/internal/ads/xB;

.field private final gn:Ljava/lang/String;

.field private final j6:Landroid/net/Uri;

.field private tp:Lcom/google/android/gms/internal/ads/BB;

.field private final u7:I

.field private final v5:Landroid/os/Handler;

.field private we:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/Sz;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/xB;Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wB;->j6:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wB;->DW:Lcom/google/android/gms/internal/ads/jD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wB;->FH:Lcom/google/android/gms/internal/ads/Sz;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/wB;->Hw:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/wB;->v5:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/wB;->Zo:Lcom/google/android/gms/internal/ads/xB;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wB;->gn:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/ads/wB;->u7:I

    new-instance p1, Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Uy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wB;->VH:Lcom/google/android/gms/internal/ads/Uy;

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wB;->tp:Lcom/google/android/gms/internal/ads/BB;

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/gD;)Lcom/google/android/gms/internal/ads/yB;
    .registers 14

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/oB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wB;->j6:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wB;->DW:Lcom/google/android/gms/internal/ads/jD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jD;->zzgs()Lcom/google/android/gms/internal/ads/iD;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wB;->FH:Lcom/google/android/gms/internal/ads/Sz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Sz;->j6()[Lcom/google/android/gms/internal/ads/Oz;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/wB;->Hw:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/wB;->v5:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/wB;->Zo:Lcom/google/android/gms/internal/ads/xB;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/wB;->u7:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/oB;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/iD;[Lcom/google/android/gms/internal/ads/Oz;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/xB;Lcom/google/android/gms/internal/ads/BB;Lcom/google/android/gms/internal/ads/gD;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V
    .registers 8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wB;->VH:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object p2

    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/wB;->we:Z

    if-eqz p2, :cond_1a

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wB;->EQ:Lcom/google/android/gms/internal/ads/Sy;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wB;->we:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wB;->tp:Lcom/google/android/gms/internal/ads/BB;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wy;ZLcom/google/android/gms/internal/ads/BB;)V
    .registers 6

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wB;->tp:Lcom/google/android/gms/internal/ads/BB;

    new-instance p1, Lcom/google/android/gms/internal/ads/KB;

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/KB;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wB;->EQ:Lcom/google/android/gms/internal/ads/Sy;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yB;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/oB;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oB;->FH()V

    return-void
.end method
