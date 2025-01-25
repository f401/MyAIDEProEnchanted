.class public Lcom/google/android/gms/ads/mediation/h;
.super Lcom/google/android/gms/ads/mediation/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private EQ:Lcom/google/android/gms/ads/formats/a$b;

.field private J0:Ljava/lang/String;

.field private gn:Ljava/lang/String;

.field private tp:Ljava/lang/String;

.field private u7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private we:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/h;->tp:Ljava/lang/String;

    return-void
.end method

.method public final EQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->we:Ljava/lang/String;

    return-object v0
.end method

.method public final FH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/h;->we:Ljava/lang/String;

    return-void
.end method

.method public final Hw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/h;->gn:Ljava/lang/String;

    return-void
.end method

.method public final J0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->u7:Ljava/util/List;

    return-object v0
.end method

.method public final J8()Lcom/google/android/gms/ads/formats/a$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->EQ:Lcom/google/android/gms/ads/formats/a$b;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/ads/formats/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/h;->EQ:Lcom/google/android/gms/ads/formats/a$b;

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/h;->J0:Ljava/lang/String;

    return-void
.end method

.method public final j6(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/h;->u7:Ljava/util/List;

    return-void
.end method

.method public final tp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public final u7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->J0:Ljava/lang/String;

    return-object v0
.end method

.method public final we()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->gn:Ljava/lang/String;

    return-object v0
.end method
