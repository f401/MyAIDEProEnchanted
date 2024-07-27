.class public final Lcom/google/android/gms/internal/ads/io;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Dn;ILjava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Lcom/google/android/gms/internal/ads/po;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    if-lez p2, :cond_2

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/Cn;->v5:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->Zo()I

    move-result v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/Cn;->gn:I

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/Bo;

    invoke-direct {v0, p1, p4}, Lcom/google/android/gms/internal/ads/Bo;-><init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/Cn;)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p4, Lcom/google/android/gms/internal/ads/Cn;->DW:I

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ao;

    invoke-direct {v0, p1, p4}, Lcom/google/android/gms/internal/ads/Ao;-><init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/Cn;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/yo;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/xo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/xo;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    goto :goto_0
.end method
