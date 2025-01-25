.class public final Lcom/google/android/gms/internal/ads/Aq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/nio/charset/Charset;


# instance fields
.field private DW:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Cq<",
            "TP;>;>;>;"
        }
    .end annotation
.end field

.field private FH:Lcom/google/android/gms/internal/ads/Cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Cq<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Aq;->j6:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Aq;->DW:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public final DW()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Cq<",
            "TP;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aq;->DW:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/Cq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Cq<",
            "TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aq;->FH:Lcom/google/android/gms/internal/ads/Cq;

    return-object v0
.end method

.method protected final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/hs$b;)Lcom/google/android/gms/internal/ads/Cq;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/gms/internal/ads/hs$b;",
            ")",
            "Lcom/google/android/gms/internal/ads/Cq<",
            "TP;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/rq;->j6:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hs$b;->XL()Lcom/google/android/gms/internal/ads/ts;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_24

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/ads/qq;->j6:[B

    goto :goto_42

    :cond_1c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_36

    :cond_2d
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_42
    new-instance v1, Lcom/google/android/gms/internal/ads/Cq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hs$b;->Ws()Lcom/google/android/gms/internal/ads/as;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hs$b;->XL()Lcom/google/android/gms/internal/ads/ts;

    move-result-object p2

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/google/android/gms/internal/ads/Cq;-><init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/as;Lcom/google/android/gms/internal/ads/ts;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Cq;->DW()[B

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/Aq;->j6:Ljava/nio/charset/Charset;

    invoke-direct {p2, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aq;->DW:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_84

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Aq;->DW:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    return-object v1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/Cq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Cq<",
            "TP;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Aq;->FH:Lcom/google/android/gms/internal/ads/Cq;

    return-void
.end method
