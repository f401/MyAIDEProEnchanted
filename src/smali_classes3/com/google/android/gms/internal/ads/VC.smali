.class public final Lcom/google/android/gms/internal/ads/VC;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Ljava/lang/String;

.field public final EQ:I

.field public final FH:Z

.field public final Hw:Z

.field public final VH:I

.field public final Zo:I

.field public final gn:Z

.field public final j6:Ljava/lang/String;

.field public final tp:I

.field public final u7:Z

.field public final v5:I

.field public final we:Z


# direct methods
.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const/4 v12, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/VC;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VC;->j6:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VC;->DW:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VC;->FH:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VC;->Hw:Z

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/ads/VC;->v5:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/VC;->Zo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/VC;->VH:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VC;->gn:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/VC;->tp:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/VC;->EQ:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/VC;->we:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_55

    const-class v1, Lcom/google/android/gms/internal/ads/VC;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_55

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/VC;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VC;->Hw:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/VC;->Hw:Z

    if-ne v1, v2, :cond_55

    iget v1, p0, Lcom/google/android/gms/internal/ads/VC;->v5:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/VC;->v5:I

    if-ne v1, v2, :cond_55

    iget v1, p0, Lcom/google/android/gms/internal/ads/VC;->Zo:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/VC;->Zo:I

    if-ne v1, v2, :cond_55

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VC;->gn:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/VC;->gn:Z

    if-ne v1, v2, :cond_55

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/VC;->u7:Z

    if-ne v1, v2, :cond_55

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VC;->we:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/VC;->we:Z

    if-ne v1, v2, :cond_55

    iget v1, p0, Lcom/google/android/gms/internal/ads/VC;->tp:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/VC;->tp:I

    if-ne v1, v2, :cond_55

    iget v1, p0, Lcom/google/android/gms/internal/ads/VC;->EQ:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/VC;->EQ:I

    if-ne v1, v2, :cond_55

    iget v1, p0, Lcom/google/android/gms/internal/ads/VC;->VH:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/VC;->VH:I

    if-ne v1, p1, :cond_55

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_55

    return v0

    :cond_55
    :goto_55
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
