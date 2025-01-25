.class public final Lcom/google/android/gms/internal/ads/Oc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static j6:Lcom/google/android/gms/internal/ads/Oc;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private Zo:I

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Oc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Oc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Oc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/Oc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Oc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    return-object v0
.end method


# virtual methods
.method final DW()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Oc;->FH:I

    return-void
.end method

.method final FH()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Oc;->Hw:I

    return-void
.end method

.method final Hw()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Oc;->v5:I

    return-void
.end method

.method public final VH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->Hw:I

    return v0
.end method

.method public final Zo()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->FH:I

    return v0
.end method

.method public final gn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->v5:I

    return v0
.end method

.method final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->DW:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Oc;->DW:I

    return-void
.end method

.method public final tp()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipl"

    iget v2, p0, Lcom/google/android/gms/internal/ads/Oc;->DW:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipds"

    iget v2, p0, Lcom/google/android/gms/internal/ads/Oc;->FH:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipde"

    iget v2, p0, Lcom/google/android/gms/internal/ads/Oc;->Hw:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iph"

    iget v2, p0, Lcom/google/android/gms/internal/ads/Oc;->v5:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipm"

    iget v2, p0, Lcom/google/android/gms/internal/ads/Oc;->Zo:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final u7()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->Zo:I

    return v0
.end method

.method final v5()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Oc;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Oc;->Zo:I

    return-void
.end method
