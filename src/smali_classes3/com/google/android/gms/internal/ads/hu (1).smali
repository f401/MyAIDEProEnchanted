.class public abstract Lcom/google/android/gms/internal/ads/hu;
.super Lcom/google/android/gms/internal/ads/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/hu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/hu$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/pt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzfpw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/hu<",
            "**>;>;"
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
            "Lcom/google/android/gms/internal/ads/hu<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/hu;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    array-length v4, p1

    new-instance v5, Lcom/google/android/gms/internal/ads/vt;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vt;-><init>()V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/vt;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    if-nez p1, :cond_2d

    return-object p0

    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_33} :catch_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_33} :catch_33

    :catch_33
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw p1

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/pu;

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/pu;

    throw p0

    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/ads/pu;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/Kt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/Kt;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/hu;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nt;->j6(Lcom/google/android/gms/internal/ads/Kt;)Lcom/google/android/gms/internal/ads/Nt;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/pu;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/pu;

    throw p0

    :cond_34
    throw p0

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/pu;

    if-eqz p2, :cond_45

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/pu;

    throw p0

    :cond_45
    new-instance p2, Lcom/google/android/gms/internal/ads/pu;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw p2
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/yt;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->DW()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_4f

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    invoke-virtual {p0, v3, v0, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, p1, :cond_23

    const/4 v3, 0x1

    goto :goto_3f

    :cond_23
    if-nez v3, :cond_27

    const/4 v3, 0x0

    goto :goto_3f

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_3f

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v3, :cond_3b

    move-object v4, p0

    goto :goto_3c

    :cond_3b
    move-object v4, v0

    :goto_3c
    invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    if-eqz v3, :cond_42

    goto :goto_4f

    :cond_42
    new-instance p1, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wv;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw p1

    :cond_4f
    :goto_4f
    if-eqz p0, :cond_92

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    invoke-virtual {p0, v3, v0, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, p1, :cond_66

    goto :goto_82

    :cond_66
    if-nez v3, :cond_6a

    const/4 p1, 0x0

    goto :goto_82

    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v2, :cond_82

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz p1, :cond_7e

    move-object v2, p0

    goto :goto_7f

    :cond_7e
    move-object v2, v0

    :goto_7f
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    :goto_82
    if-eqz p1, :cond_85

    goto :goto_92

    :cond_85
    new-instance p1, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wv;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw p1

    :cond_92
    :goto_92
    return-object p0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/yt;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->Hw()Lcom/google/android/gms/internal/ads/Kt;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/Kt;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Kt;->j6(I)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_9 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw p1
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/hu;[B)Lcom/google/android/gms/internal/ads/hu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/hu;->DW(Lcom/google/android/gms/internal/ads/hu;[B)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    if-eqz p0, :cond_49

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    goto :goto_39

    :cond_1d
    if-nez v0, :cond_21

    const/4 v2, 0x0

    goto :goto_39

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_39

    sget p1, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v2, :cond_35

    move-object v0, p0

    goto :goto_36

    :cond_35
    move-object v0, v1

    :goto_36
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    if-eqz v2, :cond_3c

    goto :goto_49

    :cond_3c
    new-instance p1, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wv;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/pu;->j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/pu;

    throw p1

    :cond_49
    :goto_49
    return-object p0
.end method

.method static j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/hu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/hu;->zzfpw:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    if-nez v0, :cond_28

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    sget-object v0, Lcom/google/android/gms/internal/ads/hu;->zzfpw:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    goto :goto_28

    :catch_1f
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Unable to get default instance for: "

    if-eqz v0, :cond_3f

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    return-object v0
.end method

.method protected static j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/dv;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dv;-><init>(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs j6(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
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
            "Lcom/google/android/gms/internal/ads/ou<",
            "TE;>;"
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

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    return v0
.end method

.method public final synthetic Zo()Lcom/google/android/gms/internal/ads/Qu;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Zo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final gn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpv:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/pt;->zzfkx:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    return v3

    :cond_17
    if-nez v1, :cond_1b

    const/4 v0, 0x0

    return v0

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_33

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v1, :cond_2f

    move-object v3, p0

    goto :goto_30

    :cond_2f
    move-object v3, v2

    :goto_30
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return v1
.end method

.method public final synthetic j6()Lcom/google/android/gms/internal/ads/Pu;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Zo:I

    const/4 v1, 0x0

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

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

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

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    return-object v0
.end method
