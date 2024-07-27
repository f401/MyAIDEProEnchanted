.class public final Lcom/google/android/gms/internal/ads/Ui;
.super Lcom/google/android/gms/internal/ads/aj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:I

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ui;->j6:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ui;->DW:I

    return-void
.end method


# virtual methods
.method public final Z1()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ui;->DW:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Ui;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Ui;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ui;->j6:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Ui;->j6:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ui;->DW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/Ui;->DW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ui;->j6:Ljava/lang/String;

    return-object v0
.end method
