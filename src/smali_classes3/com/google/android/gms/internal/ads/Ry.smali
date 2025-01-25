.class public final Lcom/google/android/gms/internal/ads/Ry;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Lcom/google/android/gms/internal/ads/Ry;


# instance fields
.field public final DW:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Ry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ry;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ry;->j6:Lcom/google/android/gms/internal/ads/Ry;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_18

    const-class v1, Lcom/google/android/gms/internal/ads/Ry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_18

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/Ry;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    return v0
.end method
