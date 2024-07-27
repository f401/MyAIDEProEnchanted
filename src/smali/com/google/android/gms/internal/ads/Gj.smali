.class public Lcom/google/android/gms/internal/ads/Gj;
.super Lcom/google/android/gms/internal/ads/lE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/lE",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final QX:Ljava/lang/Object;

.field private XL:Lcom/google/android/gms/internal/ads/uI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/uI",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/uI;Lcom/google/android/gms/internal/ads/XH;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/uI",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/XH;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/lE;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/XH;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gj;->QX:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gj;->XL:Lcom/google/android/gms/internal/ads/uI;

    return-void
.end method


# virtual methods
.method protected FH(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gj;->QX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gj;->XL:Lcom/google/android/gms/internal/ads/uI;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uI;->j6(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/wH;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/nD;",
            ")",
            "Lcom/google/android/gms/internal/ads/wH",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/nD;->FH:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ISO-8859-1"

    :try_start_1
    const-string v5, "Content-Type"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v5, ";"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "charset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    aget-object v0, v6, v1

    :goto_1
    :try_start_2
    invoke-direct {v2, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pg;->j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wH;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/wH;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method
