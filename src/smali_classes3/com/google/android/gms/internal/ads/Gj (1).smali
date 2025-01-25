.class public Lcom/google/android/gms/internal/ads/Gj;
.super Lcom/google/android/gms/internal/ads/lE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/lE<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final QX:Ljava/lang/Object;

.field private XL:Lcom/google/android/gms/internal/ads/uI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/uI<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/uI;Lcom/google/android/gms/internal/ads/XH;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/uI<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/XH;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/lE;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/XH;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gj;->QX:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gj;->XL:Lcom/google/android/gms/internal/ads/uI;

    return-void
.end method


# virtual methods
.method protected FH(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gj;->QX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gj;->XL:Lcom/google/android/gms/internal/ads/uI;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/uI;->j6(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/wH;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/nD;",
            ")",
            "Lcom/google/android/gms/internal/ads/wH<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/nD;->FH:Ljava/util/Map;

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3c

    const-string v3, ";"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_19
    array-length v6, v2

    if-ge v5, v6, :cond_3c

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_39

    aget-object v7, v6, v4

    const-string v8, "charset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_34} :catch_42

    if-eqz v7, :cond_39

    aget-object v2, v6, v3

    goto :goto_3e

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_3c
    const-string v2, "ISO-8859-1"

    :goto_3e
    :try_start_3e
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_4a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pg;->j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/Ow;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wH;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/wH;

    move-result-object p1

    return-object p1
.end method
