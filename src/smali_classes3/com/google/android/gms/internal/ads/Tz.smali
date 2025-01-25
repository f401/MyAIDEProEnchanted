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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    return-void
.end method

.method private final j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "iTunSMPB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    sget-object p1, Lcom/google/android/gms/internal/ads/Tz;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_34

    const/4 p2, 0x1

    :try_start_17
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_2e

    if-lez p1, :cond_34

    :cond_2e
    iput v1, p0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_32} :catch_33

    return p2

    :catch_33
    move-exception p1

    :cond_34
    return v0
.end method


# virtual methods
.method public final j6()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzki;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzki;->j6()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzki;->j6(I)Lcom/google/android/gms/internal/ads/zzki$zza;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzkm;

    if-eqz v3, :cond_1e

    check-cast v2, Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/Tz;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method
