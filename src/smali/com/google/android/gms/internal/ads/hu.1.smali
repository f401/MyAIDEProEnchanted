.class public abstract Lcom/google/android/gms/internal/ads/hu;
.super Lcom/google/android/gms/internal/ads/pt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/hu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/hu",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/hu$a",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/pt",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzfpw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/hu",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzfpu:Lcom/google/android/gms/internal/ads/yv;

.field private zzfpv:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hu;->zzfpw:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pt;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->FH()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/hu;[B)Lcom/google/android/gms/internal/ads/hu;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hu;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    array-length v4, p1

    new-instance v5, Lcom/google/android/gms/internal/ads/vt;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vt;-><init>()V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/vt;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/pu;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/pu;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v2
.end method

.method static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/Kt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/Kt;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nt;->j6(Lcom/google/android/gms/internal/ads/Kt;)Lcom/google/android/gms/internal/ads/Nt;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/pu;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :cond_0
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/pu;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/pu;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v2
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/yt;",
            ")TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->DW()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v3, :cond_6

    move v0, v3

    :goto_1
    if-eqz v0, :cond_9

    :cond_1
    return-object v1

    :cond_2
    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v6, :cond_b

    sget v6, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v5, :cond_4

    move-object v0, v1

    :goto_2
    invoke-virtual {v1, v6, v0, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v5

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wv;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :cond_6
    if-nez v0, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v5, :cond_a

    sget v4, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v3, :cond_8

    move-object v0, v1

    :goto_3
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wv;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    move v0, v5

    goto :goto_0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/yt;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->Hw()Lcom/google/android/gms/internal/ads/Kt;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/Kt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Kt;->j6(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    throw v0
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/hu;[B)Lcom/google/android/gms/internal/ads/hu;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/hu;->DW(Lcom/google/android/gms/internal/ads/hu;[B)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    :cond_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_5

    sget v4, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v3, :cond_3

    move-object v0, v1

    :goto_1
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wv;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method static j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/hu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hu;->zzfpw:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/ads/hu;->zzfpw:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Class initialization cannot fail."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "Unable to get default instance for: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/dv;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dv;-><init>(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs j6(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hu;->zzfpw:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static tp()Lcom/google/android/gms/internal/ads/ou;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/ou",
            "<TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/bv;->DW()Lcom/google/android/gms/internal/ads/bv;

    move-result-object v0

    return-object v0
.end method

.method protected static u7()Lcom/google/android/gms/internal/ads/nu;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/iu;->DW()Lcom/google/android/gms/internal/ads/iu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final Hw()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    return v0
.end method

.method public final synthetic Zo()Lcom/google/android/gms/internal/ads/Qu;
    .registers 3

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Zo:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final gn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_2

    sget v3, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v2, :cond_3

    move-object v0, p0

    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final synthetic j6()Lcom/google/android/gms/internal/ads/Pu;
    .registers 3

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Zo:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    return-object v0
.end method

.method protected abstract j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final j6(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ot;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Qt;->j6(Lcom/google/android/gms/internal/ads/Ot;)Lcom/google/android/gms/internal/ads/Qt;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Su;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic v5()Lcom/google/android/gms/internal/ads/Qu;
    .registers 3

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    return-object v0
.end method
