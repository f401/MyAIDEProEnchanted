.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$a;
.super Lcom/google/android/gms/ads/mediation/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final QX:Lcom/google/android/gms/ads/formats/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/g;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->QX:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->Hw()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->FH(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->Zo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->j6(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->DW()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->v5()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->j6(Lcom/google/android/gms/ads/formats/a$b;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->FH()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->DW(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->gn()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->gn()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/mediation/g;->j6(D)V

    :cond_45
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->u7()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->u7()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->v5(Ljava/lang/String;)V

    :cond_56
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->VH()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->VH()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/g;->Hw(Ljava/lang/String;)V

    :cond_67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/f;->DW(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/f;->j6(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->tp()Lcom/google/android/gms/ads/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/f;->j6(Lcom/google/android/gms/ads/h;)V

    return-void
.end method


# virtual methods
.method public final DW(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->QX:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    :cond_c
    sget-object v0, Lcom/google/android/gms/ads/formats/c;->j6:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/c;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->QX:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/c;->j6(Lcom/google/android/gms/ads/formats/a;)V

    :cond_1b
    return-void
.end method
