.class final synthetic Lcom/google/android/gms/internal/ads/Qn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final j6:Lcom/google/android/gms/internal/ads/Jn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Jn;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qn;->j6:Lcom/google/android/gms/internal/ads/Jn;

    iput p2, p0, Lcom/google/android/gms/internal/ads/Qn;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/Qn;->FH:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qn;->j6:Lcom/google/android/gms/internal/ads/Jn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qn;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qn;->FH:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Jn;->DW(II)V

    return-void
.end method
