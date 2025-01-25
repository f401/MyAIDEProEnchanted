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
    .registers 6

    new-instance v0, Lcom/google/android/gms/ads/d;

    const-string v1, "320x50_mb"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->j6:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x3c

    const-string v4, "468x60_as"

    const/16 v5, 0x1d4

    invoke-direct {v0, v5, v1, v4}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->DW:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x64

    const-string v4, "320x100_as"

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->FH:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x5a

    const-string v2, "728x90_as"

    const/16 v4, 0x2d8

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->Hw:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0xfa

    const-string v2, "300x250_as"

    const/16 v4, 0x12c

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->v5:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x258

    const-string v2, "160x600_as"

    const/16 v4, 0xa0

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->Zo:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, -0x2

    const-string v2, "smart_banner"

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->VH:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, -0x4

    const-string v2, "fluid"

    const/4 v4, -0x3

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->gn:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const-string v1, "50x50_mb"

    invoke-direct {v0, v3, v3, v1}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->u7:Lcom/google/android/gms/ads/d;

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    const-string v2, "search_v2"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/d;->tp:Lcom/google/android/gms/ads/d;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const-string v0, "FULL"

    goto :goto_a

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    const/4 v1, -0x2

    if-ne p2, v1, :cond_10

    const-string v1, "AUTO"

    goto :goto_14

    :cond_10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_as"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_25

    const/4 v0, -0x1

    if-eq p1, v0, :cond_25

    const/4 v0, -0x3

    if-ne p1, v0, :cond_c

    goto :goto_25

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x25

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid width for AdSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    :goto_25
    if-gez p2, :cond_47

    const/4 v0, -0x2

    if-eq p2, v0, :cond_47

    const/4 v0, -0x4

    if-ne p2, v0, :cond_2e

    goto :goto_47

    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x26

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid height for AdSize: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_47
    :goto_47
    iput p1, p0, Lcom/google/android/gms/ads/d;->EQ:I

    iput p2, p0, Lcom/google/android/gms/ads/d;->we:I

    iput-object p3, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    return v0
.end method

.method public final DW(Landroid/content/Context;)I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    const/4 v1, -0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_22

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_15

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwf;->j6(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_22
    return v2
.end method

.method public final FH()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/d;->EQ:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/ads/d;->we:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/ads/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/ads/d;

    iget v1, p0, Lcom/google/android/gms/ads/d;->EQ:I

    iget v3, p1, Lcom/google/android/gms/ads/d;->EQ:I

    if-ne v1, v3, :cond_23

    iget v1, p0, Lcom/google/android/gms/ads/d;->we:I

    iget v3, p1, Lcom/google/android/gms/ads/d;->we:I

    if-ne v1, v3, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    return v2
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

    if-eq v0, v1, :cond_22

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    const/4 v1, -0x2

    if-eq v0, v1, :cond_15

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v0, p0, Lcom/google/android/gms/ads/d;->we:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwf;->DW(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/d;->J0:Ljava/lang/String;

    return-object v0
.end method
