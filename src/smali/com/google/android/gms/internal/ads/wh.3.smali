.class final Lcom/google/android/gms/internal/ads/wh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/th;Lcom/google/android/gms/internal/ads/nm;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wh;->j6:Lcom/google/android/gms/internal/ads/nm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wh;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wh;->j6:Lcom/google/android/gms/internal/ads/nm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wh;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nm;->j6(Ljava/lang/String;)V

    return-void
.end method
