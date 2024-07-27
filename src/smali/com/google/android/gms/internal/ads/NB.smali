.class public final Lcom/google/android/gms/internal/ads/NB;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Lcom/google/android/gms/internal/ads/NB;


# instance fields
.field public final DW:I

.field private final FH:[Lcom/google/android/gms/internal/ads/LB;

.field private Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/NB;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/LB;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/NB;-><init>([Lcom/google/android/gms/internal/ads/LB;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/NB;->j6:Lcom/google/android/gms/internal/ads/NB;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/LB;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/NB;->FH:[Lcom/google/android/gms/internal/ads/LB;

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/NB;->DW:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/NB;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/NB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/NB;->DW:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/NB;->FH:[Lcom/google/android/gms/internal/ads/LB;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/NB;->FH:[Lcom/google/android/gms/internal/ads/LB;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/NB;->Hw:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NB;->FH:[Lcom/google/android/gms/internal/ads/LB;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/NB;->Hw:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/NB;->Hw:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/LB;)I
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/NB;->DW:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/NB;->FH:[Lcom/google/android/gms/internal/ads/LB;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/LB;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NB;->FH:[Lcom/google/android/gms/internal/ads/LB;

    aget-object v0, v0, p1

    return-object v0
.end method
