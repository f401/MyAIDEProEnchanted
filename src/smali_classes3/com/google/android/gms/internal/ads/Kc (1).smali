.class public final Lcom/google/android/gms/internal/ads/Kc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/Lc;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Lcom/google/android/gms/internal/ads/fc;

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/Lc;",
            "Lcom/google/android/gms/internal/ads/Mc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    return-void
.end method

.method static DW(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Kc;->Hw(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "_skipMediation"

    if-eqz v0, :cond_14

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private final DW()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Lc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Lc;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception v0

    const-string v0, ""

    return-object v0
.end method

.method private static DW(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Jm:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "InterstitialAdPool.isExcludedAdUnit"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static FH(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;
    .registers 7

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Kc;->Hw(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Za:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/Kc;->j6(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/Kc;->j6(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_37
    return-object p0
.end method

.method private static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "([^/]+/[0-9]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    :cond_17
    :goto_17
    return-object p0
.end method

.method private static Hw(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzwb;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzwb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwb;->DW()Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p0

    return-object p0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/zzwb;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzwb;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    return-object v0
.end method

.method private static j6(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5

    :goto_0
    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1d

    return-void

    :cond_1d
    aget-object p1, p1, v2

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private static j6(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "\u0000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    new-instance v2, Ljava/lang/String;

    aget-object v3, p0, v1

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v2, p0, v1
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1a} :catch_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-object p0

    :catch_1e
    move-exception p0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final DW(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fc;->j6()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaua;->j6()Lcom/google/android/gms/internal/ads/Ji;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ji;->Ws:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Kc;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Kc;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/ads/Lc;

    invoke-direct {v2, v1, p2, v0}, Lcom/google/android/gms/internal/ads/Lc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Mc;

    if-nez v3, :cond_3a

    const-string v3, "Interstitial pool created at %s."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/Mc;

    invoke-direct {v3, v1, p2, v0}, Lcom/google/android/gms/internal/ads/Mc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/internal/ads/Mc;->j6(Lcom/google/android/gms/internal/ads/fc;Lcom/google/android/gms/internal/ads/zzwb;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mc;->VH()V

    const-string p1, "Inline entry added to the queue at %s."

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Nc;
    .registers 13

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Kc;->DW(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaua;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fc;->j6()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaua;->j6()Lcom/google/android/gms/internal/ads/Ji;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ji;->Ws:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Kc;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Kc;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/ads/Lc;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Lc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Mc;

    if-nez v3, :cond_3f

    const-string v3, "Interstitial pool created at %s."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/Mc;

    invoke-direct {v3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Mc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mc;->VH()V

    :goto_4c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->An:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_9a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/Lc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Mc;

    const-string v4, "Evicting interstitial queue for %s."

    invoke-static {v4, p2}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    :goto_79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Mc;->FH()I

    move-result v4

    if-lez v4, :cond_94

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Mc;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/Nc;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/Nc;->v5:Z

    if-eqz v5, :cond_8e

    invoke-static {}, Lcom/google/android/gms/internal/ads/Oc;->j6()Lcom/google/android/gms/internal/ads/Oc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Oc;->FH()V

    :cond_8e
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Nc;->j6:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/m;->zg()V

    goto :goto_79

    :cond_94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_9a
    :goto_9a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mc;->FH()I

    move-result p2

    if-lez p2, :cond_102

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/Mc;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/Nc;

    move-result-object p2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/Nc;->v5:Z

    if-eqz v0, :cond_d9

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/Nc;->Hw:J

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ce:Lcom/google/android/gms/internal/ads/e;

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_d9

    const-string p2, "Expired interstitial at %s."

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/Oc;->j6()Lcom/google/android/gms/internal/ads/Oc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Oc;->DW()V

    goto :goto_9a

    :cond_d9
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Nc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz p1, :cond_e0

    const-string p1, " (inline) "

    goto :goto_e2

    :cond_e0
    const-string p1, " "

    :goto_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Pooled interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "returned at %s."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    return-object p2

    :cond_102
    return-object v1
.end method

.method final j6()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Lc;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Mc;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mc;->FH()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mc;->v5()I

    move-result v6

    if-ge v6, v5, :cond_56

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v7, v6

    aput-object v3, v7, v4

    const-string v4, "Loading %s/%s pooled interstitials for %s."

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mc;->Zo()I

    move-result v4

    add-int/2addr v4, v2

    :cond_5b
    :goto_5b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mc;->FH()I

    move-result v2

    sget-object v5, Lcom/google/android/gms/internal/ads/p;->Pa:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v2, v5, :cond_81

    const-string v2, "Pooling and loading one new interstitial for %s."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Mc;->j6(Lcom/google/android/gms/internal/ads/fc;)Z

    move-result v2

    if-eqz v2, :cond_5b

    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_81
    invoke-static {}, Lcom/google/android/gms/internal/ads/Oc;->j6()Lcom/google/android/gms/internal/ads/Oc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/Oc;->j6(I)V

    goto :goto_f

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    if-eqz v0, :cond_e8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fc;->j6()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a8
    :goto_a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Lc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Mc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Mc;->gn()Z

    move-result v4

    if-eqz v4, :cond_a8

    new-instance v4, Lcom/google/android/gms/internal/ads/Qc;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Lcom/google/android/gms/internal/ads/Mc;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Qc;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Lc;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Saved interstitial queue for %s."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    goto :goto_a8

    :cond_dc
    const-string v1, "PoolKeys"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kc;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e8
    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/fc;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    if-nez v0, :cond_f1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fc;->DW()Lcom/google/android/gms/internal/ads/fc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kc;->FH:Lcom/google/android/gms/internal/ads/fc;

    if-eqz p1, :cond_f1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fc;->j6()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Lc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Mc;

    const-string v3, "Flushing interstitial queue for %s."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    :goto_34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Mc;->FH()I

    move-result v3

    if-lez v3, :cond_45

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Mc;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/Nc;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Nc;->j6:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/m;->zg()V

    goto :goto_34

    :cond_45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_60} :catch_d8
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_60} :catch_d6

    const-string v4, "PoolKeys"

    if-eqz v3, :cond_b0

    :try_start_64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Qc;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Qc;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/Lc;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/Qc;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Qc;->DW:Ljava/lang/String;

    iget v7, v3, Lcom/google/android/gms/internal/ads/Qc;->FH:I

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Lc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    new-instance v5, Lcom/google/android/gms/internal/ads/Mc;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/Qc;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Qc;->DW:Ljava/lang/String;

    iget v3, v3, Lcom/google/android/gms/internal/ads/Qc;->FH:I

    invoke-direct {v5, v6, v7, v3}, Lcom/google/android/gms/internal/ads/Mc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Lc;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Restored interstitial queue for %s."

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Lc;)V

    goto :goto_5c

    :cond_b0
    const-string v2, ""

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Kc;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_bb
    if-ge v1, v2, :cond_d5

    aget-object v3, p1, v1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/Lc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_d2} :catch_d8
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_d2} :catch_d6

    :cond_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_d5
    return-void

    :catch_d6
    move-exception p1

    goto :goto_d9

    :catch_d8
    move-exception p1

    :goto_d9
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "InterstitialAdPool.restore"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Malformed preferences value for InterstitialAdPool."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Kc;->j6:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Kc;->DW:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_f1
    return-void
.end method
