.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$c;
.super Lcom/google/android/gms/ads/mediation/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final aM:Lcom/google/android/gms/ads/formats/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/g;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/m;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->aM:Lcom/google/android/gms/ads/formats/g;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->Hw(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->Zo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->DW(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->v5()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Lcom/google/android/gms/ads/formats/a$b;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->FH(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->gn()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Ljava/lang/Double;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->Zo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->v5(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->we()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->DW(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->tp()Lcom/google/android/gms/ads/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/m;->j6(Lcom/google/android/gms/ads/h;)V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    instance-of p2, p1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->aM:Lcom/google/android/gms/ads/formats/g;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/g;)V

    return-void

    :cond_c
    sget-object p2, Lcom/google/android/gms/ads/formats/c;->j6:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/c;

    if-eqz p1, :cond_1b

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->aM:Lcom/google/android/gms/ads/formats/g;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/c;->j6(Lcom/google/android/gms/ads/formats/g;)V

    :cond_1b
    return-void
.end method
