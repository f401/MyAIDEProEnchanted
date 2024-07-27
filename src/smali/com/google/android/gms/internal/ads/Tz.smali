.class public final Lcom/google/android/gms/internal/ads/Tz;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final j6:Lcom/google/android/gms/internal/ads/bB;


# instance fields
.field public FH:I

.field public Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Uz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Uz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Tz;->j6:Lcom/google/android/gms/internal/ads/bB;

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Tz;->DW:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    return-void
.end method

.method private final j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "iTunSMPB"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/Tz;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-gtz v3, :cond_2

    if-lez v2, :cond_0

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final j6()Z
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzki;)Z
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzki;->j6()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzki;->j6(I)Lcom/google/android/gms/internal/ads/zzki$zza;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzkm;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/ads/Tz;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
