.class final synthetic Lcom/google/android/gms/internal/ads/dn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final j6:Lcom/google/android/gms/internal/ads/cn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cn;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dn;->j6:Lcom/google/android/gms/internal/ads/cn;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dn;->DW:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dn;->j6:Lcom/google/android/gms/internal/ads/cn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dn;->DW:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cn;->VH(I)V

    return-void
.end method
