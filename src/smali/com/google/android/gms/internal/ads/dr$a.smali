.class public final Lcom/google/android/gms/internal/ads/dr$a;
.super Lcom/google/android/gms/internal/ads/hu$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu$a",
        "<",
        "Lcom/google/android/gms/internal/ads/dr;",
        "Lcom/google/android/gms/internal/ads/dr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/dr;->XL()Lcom/google/android/gms/internal/ads/dr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/hu$a;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/er;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)Lcom/google/android/gms/internal/ads/dr$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    check-cast v0, Lcom/google/android/gms/internal/ads/dr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dr;->j6(Lcom/google/android/gms/internal/ads/dr;I)V

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Sr;)Lcom/google/android/gms/internal/ads/dr$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    check-cast v0, Lcom/google/android/gms/internal/ads/dr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dr;->j6(Lcom/google/android/gms/internal/ads/dr;Lcom/google/android/gms/internal/ads/Sr;)V

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/hr;)Lcom/google/android/gms/internal/ads/dr$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    check-cast v0, Lcom/google/android/gms/internal/ads/dr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dr;->j6(Lcom/google/android/gms/internal/ads/dr;Lcom/google/android/gms/internal/ads/hr;)V

    return-object p0
.end method
