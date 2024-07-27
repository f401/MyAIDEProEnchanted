.class public final Lcom/google/android/gms/internal/ads/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Z

.field private final VH:Z

.field private final Zo:I

.field private final j6:Ljava/util/Date;

.field private final v5:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf;->j6:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/cf;->DW:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cf;->FH:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cf;->v5:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/cf;->Hw:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/cf;->Zo:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/cf;->VH:Z

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/cf;->Zo:I

    return v0
.end method

.method public final EQ()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf;->FH:Ljava/util/Set;

    return-object v0
.end method

.method public final FH()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf;->VH:Z

    return v0
.end method

.method public final Hw()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf;->j6:Ljava/util/Date;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf;->v5:Landroid/location/Location;

    return-object v0
.end method

.method public final gn()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/cf;->DW:I

    return v0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf;->Hw:Z

    return v0
.end method
