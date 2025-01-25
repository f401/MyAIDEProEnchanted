.class public final Lcom/google/android/gms/internal/ads/cm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Z

.field private static FH:Z

.field private static Hw:Lcom/google/android/gms/common/util/e;

.field private static j6:Ljava/lang/Object;

.field private static final v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cm;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/cm;->DW:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/cm;->FH:Z

    invoke-static {}, Lcom/google/android/gms/common/util/h;->Hw()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/cm;->Hw:Lcom/google/android/gms/common/util/e;

    new-instance v1, Ljava/util/HashSet;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/cm;->v5:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6f

    :cond_f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "network_request_"

    if-nez p1, :cond_3a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_2c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_31
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_6f

    :cond_3a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "ad_request_"

    if-eqz v4, :cond_4b

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_4b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_5f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_64
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_6f
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cm;->Zo:Ljava/util/List;

    return-void
.end method

.method public static DW()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/cm;->j6:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/internal/ads/cm;->DW:Z

    sput-boolean v1, Lcom/google/android/gms/internal/ads/cm;->FH:Z

    const-string v1, "Ad debug logging enablement is out of date."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private final DW(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/hm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/hm;-><init>(Ljava/lang/String;)V

    const-string p1, "onNetworkRequestError"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/im;)V

    return-void
.end method

.method private final DW(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[B)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/dm;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    const-string p1, "onNetworkRequest"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/im;)V

    return-void
.end method

.method private final DW(Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/em;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/em;-><init>(ILjava/util/Map;)V

    const-string p1, "onNetworkResponse"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/im;)V

    return-void
.end method

.method private static FH(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/ads/cm;

    monitor-enter v0

    :try_start_3
    const-string v0, "GMA Debug BEGIN"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3a

    add-int/lit16 v1, v0, 0xfa0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "GMA Debug CONTENT "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_2e
    new-instance v0, Ljava/lang/String;

    const-string v2, "GMA Debug CONTENT "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :cond_3a
    const-string p0, "GMA Debug FINISH"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_43

    const-class p0, Lcom/google/android/gms/internal/ads/cm;

    monitor-exit p0

    return-void

    :catchall_43
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/ads/cm;

    monitor-exit v0

    goto :goto_49

    :goto_48
    throw p0

    :goto_49
    goto :goto_48
.end method

.method public static FH()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/cm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/cm;->DW:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static final synthetic j6(ILjava/util/Map;Landroid/util/JsonWriter;)V
    .registers 6

    const-string v0, "params"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "firstline"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(Landroid/util/JsonWriter;Ljava/util/Map;)V

    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private static j6(Landroid/util/JsonWriter;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "headers"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/cm;->v5:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    const-string v3, "value"

    const-string v4, "name"

    if-eqz v2, :cond_65

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_44

    :cond_65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_88

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_14

    :cond_88
    const-string p1, "Connection headers should be either Map<String, String> or Map<String, List<String>>"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    :cond_8d
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method static final synthetic j6(Ljava/lang/String;Landroid/util/JsonWriter;)V
    .registers 3

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    if-eqz p0, :cond_14

    const-string v0, "error_description"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/im;)V
    .registers 8

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_a
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/cm;->Hw:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p1, "components"

    invoke-virtual {v1, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cm;->Zo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_34

    :cond_44
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/im;->j6(Landroid/util/JsonWriter;)V

    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v1}, Landroid/util/JsonWriter;->flush()V

    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception p1

    const-string p2, "unable to log"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5a
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cm;->FH(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V
    .registers 6

    const-string v0, "params"

    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "firstline"

    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "uri"

    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p0, "verb"

    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/cm;->j6(Landroid/util/JsonWriter;Ljava/util/Map;)V

    if-eqz p3, :cond_39

    const-string p0, "body"

    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-static {p3}, Lcom/google/android/gms/common/util/c;->j6([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_39
    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static j6(Z)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/cm;->j6:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/internal/ads/cm;->DW:Z

    sput-boolean p0, Lcom/google/android/gms/internal/ads/cm;->FH:Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method static final synthetic j6([BLandroid/util/JsonWriter;)V
    .registers 4

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    array-length v0, p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/c;->j6([B)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1c

    const-string v1, "body"

    :goto_14
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_25

    :cond_1c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string v1, "bodydigest"

    goto :goto_14

    :cond_25
    :goto_25
    const-string p0, "bodylength"

    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static j6()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/cm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/cm;->DW:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/google/android/gms/internal/ads/cm;->FH:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->b1:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    return v2

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "development_settings_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_2a

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v2

    :catch_2a
    move-exception p0

    const-string v0, "Fail to determine debug setting."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cm;->j6([B)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[B)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/cm;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public final j6(Ljava/net/HttpURLConnection;I)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    move-object v0, v1

    goto :goto_19

    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_19
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/cm;->DW(Ljava/util/Map;I)V

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_24

    const/16 v0, 0x12c

    if-lt p2, v0, :cond_4a

    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_47

    :catch_29
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Can not get error message from error HttpURLConnection\n"

    if-eqz p2, :cond_3f

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_3f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_47
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cm;->DW(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public final j6(Ljava/net/HttpURLConnection;[B)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_18

    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_18
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/google/android/gms/internal/ads/cm;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public final j6(Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cm;->DW(Ljava/util/Map;I)V

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_12

    const/16 p1, 0x12c

    if-lt p2, p1, :cond_16

    :cond_12
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cm;->DW(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public final j6([B)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/gm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/gm;-><init>([B)V

    const-string p1, "onNetworkResponseBody"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/im;)V

    return-void
.end method
