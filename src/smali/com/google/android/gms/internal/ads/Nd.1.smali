.class final Lcom/google/android/gms/internal/ads/Nd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Um;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/Hd;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Nd;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nd;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xm;->DW()V

    return-void
.end method
