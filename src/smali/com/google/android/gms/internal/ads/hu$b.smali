.class public final Lcom/google/android/gms/internal/ads/hu$b;
.super Lcom/google/android/gms/internal/ads/rt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/hu",
        "<TT;*>;>",
        "Lcom/google/android/gms/internal/ads/rt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hu;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hu$b;->DW:Lcom/google/android/gms/internal/ads/hu;

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Kt;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$b;->DW:Lcom/google/android/gms/internal/ads/hu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/Kt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    return-object v0
.end method
