.class public final Lcom/google/android/gms/internal/ads/gy;
.super Lcom/google/android/gms/internal/ads/jy;


# instance fields
.field private final u7:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;IILandroid/view/View;)V
    .registers 15

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/gy;->u7:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gy;->u7:Landroid/view/View;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->j6()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Ix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gy;->u7:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Ix;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/cs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cs;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ix;->DW:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cs;->v5:Ljava/lang/Long;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Ix;->FH:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cs;->Zo:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ix;->Hw:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cs;->VH:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/br;->OW:Lcom/google/android/gms/internal/ads/cs;

    :cond_40
    return-void
.end method
