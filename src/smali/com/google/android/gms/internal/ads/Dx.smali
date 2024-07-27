.class final Lcom/google/android/gms/internal/ads/Dx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Z

.field private final FH:Lcom/google/android/gms/internal/ads/Ax;

.field private final j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ax;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dx;->FH:Lcom/google/android/gms/internal/ads/Ax;

    iput p2, p0, Lcom/google/android/gms/internal/ads/Dx;->j6:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/Dx;->DW:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dx;->FH:Lcom/google/android/gms/internal/ads/Ax;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Dx;->j6:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Dx;->DW:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ax;->DW(IZ)Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dx;->FH:Lcom/google/android/gms/internal/ads/Ax;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ax;->j6(Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/br;)Lcom/google/android/gms/internal/ads/br;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Dx;->j6:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ax;->j6(ILcom/google/android/gms/internal/ads/br;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dx;->FH:Lcom/google/android/gms/internal/ads/Ax;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Dx;->j6:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Dx;->DW:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ax;->j6(IZ)V

    :cond_0
    return-void
.end method
