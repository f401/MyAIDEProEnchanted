.class public final Lcom/google/android/gms/ads/d;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Lcom/google/android/gms/ads/d;

.field public static final FH:Lcom/google/android/gms/ads/d;

.field public static final Hw:Lcom/google/android/gms/ads/d;

.field public static final VH:Lcom/google/android/gms/ads/d;

.field public static final Zo:Lcom/google/android/gms/ads/d;

.field public static final gn:Lcom/google/android/gms/ads/d;

.field public static final j6:Lcom/google/android/gms/ads/d;

.field public static final tp:Lcom/google/android/gms/ads/d;

.field public static final u7:Lcom/google/android/gms/ads/d;

.field public static final v5:Lcom/google/android/gms/ads/d;


# instance fields
.field private final EQ:I

.field private final J0:Ljava/lang/String;

.field private final we:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x140

    const/4 v5, -0x3

    const/16 v4, 0x32

    new-instance v0, Lcom/google/android/gms/ads/d;

    const-string v1, "320x50_mb"

    invoke-direct {v0, v6, v4, v1}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->j6:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "468x60_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->DW:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x64

    const-string v2, "320x100_as"

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->FH:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "728x90_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->Hw:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "300x250_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->v5:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string v3, "160x600_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->Zo:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "smart_banner"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->VH:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, -0x4

    const-string v2, "fluid"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->gn:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const-string v1, "50x50_mb"

    invoke-direct {v0, v4, v4, v1}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->u7:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    const-string v2, "search_v2"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->tp:Lcom/google/android/gms/ads/d;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "FULL"

    move-object v1, v0

    :goto_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const-string v0, "AUTO"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_as"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    if-gez p2, :cond_1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x4

    if-ne p2, v0, :cond_3

    :cond_1
    iput p1, p0, Lcom/google/android/gms/ads/d;->EQ:I

    iput p2, p0, Lcom/google/android/gms/ads/d;->we:I

    iput-object p3, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid width for AdSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid height for AdSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    return v0
.end method

.method public final DW(Landroid/content/Context;)I
    .registers 5

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/gms/ads/d;->EQ:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    if-eq v1, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwf;->j6(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0
.end method

.method public final FH()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/d;->we:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/ads/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/ads/d;

    iget v2, p0, Lcom/google/android/gms/ads/d;->EQ:I

    iget v3, p1, Lcom/google/android/gms/ads/d;->EQ:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/ads/d;->we:I

    iget v3, p1, Lcom/google/android/gms/ads/d;->we:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/d;->we:I

    return v0
.end method

.method public final j6(Landroid/content/Context;)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/ads/d;->we:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v0, p0, Lcom/google/android/gms/ads/d;->we:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwf;->DW(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    return-object v0
.end method
