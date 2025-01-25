.class final Lcom/google/android/gms/internal/ads/am;
.super Ljava/lang/Thread;


# instance fields
.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/_l;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/am;->j6:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/nm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/am;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nm;->j6(Ljava/lang/String;)V

    return-void
.end method
