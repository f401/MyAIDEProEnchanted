.class final synthetic Lcom/google/android/gms/internal/ads/jd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jd;->j6:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jd;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jd;->j6:Lcom/google/android/gms/internal/ads/id;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jd;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/id;->j6(Ljava/lang/String;)V

    return-void
.end method
