.class public final Lcom/google/android/gms/internal/ads/rF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/qF;

.field private final j6:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/vF;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vF;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rF;->Hw:Lcom/google/android/gms/internal/ads/qF;

    iput p1, p0, Lcom/google/android/gms/internal/ads/rF;->DW:I

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/rF;->j6:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/rF;->FH:I

    return-void
.end method

.method private final j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_c

    const-string p1, ""

    return-object p1

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/tF;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tF;-><init>()V

    new-instance v1, Ljava/util/PriorityQueue;

    iget v2, p0, Lcom/google/android/gms/internal/ads/rF;->DW:I

    new-instance v3, Lcom/google/android/gms/internal/ads/sF;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/sF;-><init>(Lcom/google/android/gms/internal/ads/rF;)V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    array-length v4, p1

    if-ge v3, v4, :cond_35

    aget-object v4, p1, v3

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_32

    iget v5, p0, Lcom/google/android/gms/internal/ads/rF;->DW:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/rF;->j6:I

    invoke-static {v4, v5, v6, v1}, Lcom/google/android/gms/internal/ads/xF;->j6([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_35
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yF;

    :try_start_45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rF;->Hw:Lcom/google/android/gms/internal/ads/qF;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yF;->DW:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/qF;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tF;->j6([B)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_50} :catch_51

    goto :goto_39

    :catch_51
    move-exception p1

    const-string v1, "Error while writing hash to byteStream"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tF;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final j6(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rF;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
