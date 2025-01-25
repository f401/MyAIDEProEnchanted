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
    .registers 6

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p3, v0, :cond_3a

    if-lez p2, :cond_3a

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/Cn;->v5:Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string p3, "3"

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->Zo()I

    move-result p2

    iget p3, p4, Lcom/google/android/gms/internal/ads/Cn;->gn:I

    if-ge p2, p3, :cond_2a

    new-instance p2, Lcom/google/android/gms/internal/ads/Bo;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/Bo;-><init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/Cn;)V

    return-object p2

    :cond_2a
    iget p3, p4, Lcom/google/android/gms/internal/ads/Cn;->DW:I

    if-ge p2, p3, :cond_34

    new-instance p2, Lcom/google/android/gms/internal/ads/Ao;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/Ao;-><init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/Cn;)V

    return-object p2

    :cond_34
    new-instance p2, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/yo;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    return-object p2

    :cond_3a
    new-instance p2, Lcom/google/android/gms/internal/ads/xo;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/xo;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    return-object p2
.end method
