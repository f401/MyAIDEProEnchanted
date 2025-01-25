.class public final Lcom/google/android/gms/ads/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/sI;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/sI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sI;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sI;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/c$a;)Lcom/google/android/gms/internal/ads/sI;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    return-object p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->DW(Ljava/lang/String;)V

    return-object p0
.end method

.method public final DW(Z)Lcom/google/android/gms/ads/c$a;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->j6(Z)V

    return-object p0
.end method

.method public final j6(I)Lcom/google/android/gms/ads/c$a;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->j6(I)V

    return-object p0
.end method

.method public final j6(Landroid/location/Location;)Lcom/google/android/gms/ads/c$a;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->j6(Landroid/location/Location;)V

    return-object p0
.end method

.method public final j6(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/b;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/c$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/sI;->j6(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "_emulatorLiveAds"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/sI;->FH(Ljava/lang/String;)V

    :cond_1c
    return-object p0
.end method

.method public final j6(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->j6(Ljava/lang/String;)V

    return-object p0
.end method

.method public final j6(Ljava/util/Date;)Lcom/google/android/gms/ads/c$a;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->j6(Ljava/util/Date;)V

    return-object p0
.end method

.method public final j6(Z)Lcom/google/android/gms/ads/c$a;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->j6:Lcom/google/android/gms/internal/ads/sI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sI;->DW(Z)V

    return-object p0
.end method

.method public final j6()Lcom/google/android/gms/ads/c;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/c;-><init>(Lcom/google/android/gms/ads/c$a;Lcom/google/android/gms/ads/k;)V

    return-object v0
.end method
