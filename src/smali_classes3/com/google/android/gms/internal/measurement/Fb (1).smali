.class public abstract Lcom/google/android/gms/internal/measurement/Fb;
.super Lcom/google/android/gms/internal/measurement/Oa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/Fb$a;,
        Lcom/google/android/gms/internal/measurement/Fb$b;,
        Lcom/google/android/gms/internal/measurement/Fb$c;,
        Lcom/google/android/gms/internal/measurement/Fb$d;,
        Lcom/google/android/gms/internal/measurement/Fb$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/Fb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/Fb$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/Oa<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbyf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/Fb<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzbyd:Lcom/google/android/gms/internal/measurement/Vc;

.field private zzbye:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Oa;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Vc;->FH()Lcom/google/android/gms/internal/measurement/Vc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyd:Lcom/google/android/gms/internal/measurement/Vc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/Fb;Lcom/google/android/gms/internal/measurement/hb;Lcom/google/android/gms/internal/measurement/sb;)Lcom/google/android/gms/internal/measurement/Fb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/Fb<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/measurement/hb;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            ")TT;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->Hw:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/Fb;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/kb;->j6(Lcom/google/android/gms/internal/measurement/hb;)Lcom/google/android/gms/internal/measurement/kb;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Bc;Lcom/google/android/gms/internal/measurement/sb;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/Cc;->DW(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/Mb;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/Mb;

    throw p0

    :cond_34
    throw p0

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/Mb;

    if-eqz p2, :cond_45

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/Mb;

    throw p0

    :cond_45
    new-instance p2, Lcom/google/android/gms/internal/measurement/Mb;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/Mb;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/Mb;->j6(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/Mb;

    throw p2
.end method

.method static j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Fb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/Fb<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    goto :goto_28

    :catch_1f
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_47

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    sget v1, Lcom/google/android/gms/internal/measurement/Fb$e;->Zo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    if-eqz v0, :cond_41

    sget-object v1, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    :goto_47
    return-object v0
.end method

.method protected static j6(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ac;-><init>(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method protected static j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/Fb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/Fb<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static tp()Lcom/google/android/gms/internal/measurement/Lb;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/Lb<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zc;->DW()Lcom/google/android/gms/internal/measurement/zc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic DW()Lcom/google/android/gms/internal/measurement/mc;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->v5:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/Fb$a;->j6(Lcom/google/android/gms/internal/measurement/Fb;)Lcom/google/android/gms/internal/measurement/Fb$a;

    return-object v0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/Cc;->FH(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->Zo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Cc;->DW(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final gn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Oa;->zzbti:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Oa;->zzbti:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Oa;->zzbti:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/Fb$e;->j6:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/measurement/Cc;->Hw(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_33

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->DW:I

    if-eqz v1, :cond_2f

    move-object v3, p0

    goto :goto_30

    :cond_2f
    move-object v3, v2

    :goto_30
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return v1
.end method

.method public final synthetic j6()Lcom/google/android/gms/internal/measurement/lc;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->Zo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    return-object v0
.end method

.method protected abstract j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final j6(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/lb;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/nb;->j6(Lcom/google/android/gms/internal/measurement/lb;)Lcom/google/android/gms/internal/measurement/nb;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/oc;->j6(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u7()Lcom/google/android/gms/internal/measurement/Fb$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->v5:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/Fb$a;->j6(Lcom/google/android/gms/internal/measurement/Fb;)Lcom/google/android/gms/internal/measurement/Fb$a;

    return-object v0
.end method

.method public final synthetic v5()Lcom/google/android/gms/internal/measurement/mc;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->v5:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb$a;

    return-object v0
.end method
