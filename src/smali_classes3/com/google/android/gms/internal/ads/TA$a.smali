.class final Lcom/google/android/gms/internal/ads/TA$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/TA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final DW:Z

.field public final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/TA$a;->j6:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/TA$a;->DW:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/TA$a;

    if-eq v1, v2, :cond_f

    goto :goto_22

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/TA$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/TA$a;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/TA$a;->j6:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/TA$a;->DW:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/TA$a;->DW:Z

    if-ne v1, p1, :cond_22

    return v0

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/TA$a;->j6:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/TA$a;->DW:Z

    if-eqz v1, :cond_11

    const/16 v1, 0x4cf

    goto :goto_13

    :cond_11
    const/16 v1, 0x4d5

    :goto_13
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
