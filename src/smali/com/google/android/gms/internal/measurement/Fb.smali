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
        "Lcom/google/android/gms/internal/measurement/Fb",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/Fb$a",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/Oa",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbyf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/Fb",
            "<**>;>;"
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/Fb",
            "<TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/measurement/hb;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->Hw:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/kb;->j6(Lcom/google/android/gms/internal/measurement/hb;)Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Bc;Lcom/google/android/gms/internal/measurement/sb;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/Cc;->DW(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/Mb;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Mb;

    throw v0

    :cond_0
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/measurement/Mb;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Mb;

    throw v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/measurement/Mb;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/Mb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/Mb;->j6(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/Mb;

    throw v2
.end method

.method static j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Fb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/Fb",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    sget v1, Lcom/google/android/gms/internal/measurement/Fb$e;->Zo:I

    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/measurement/Fb;->zzbyf:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Class initialization cannot fail."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected static j6(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ac;-><init>(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method protected static j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/Fb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/Fb",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
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
            "Lcom/google/android/gms/internal/measurement/Lb",
            "<TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zc;->DW()Lcom/google/android/gms/internal/measurement/zc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic DW()Lcom/google/android/gms/internal/measurement/mc;
    .registers 3

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->v5:I

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

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/Cc;->FH(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->Zo:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Cc;->DW(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final gn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbye:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Oa;->zzbti:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Oa;->zzbti:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Oa;->zzbti:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->j6:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/yc;->j6()Lcom/google/android/gms/internal/measurement/yc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/Cc;->Hw(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_2

    sget v3, Lcom/google/android/gms/internal/measurement/Fb$e;->DW:I

    if-eqz v2, :cond_3

    move-object v0, p0

    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final synthetic j6()Lcom/google/android/gms/internal/measurement/lc;
    .registers 3

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->Zo:I

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

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

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

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->v5:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/Fb$a;->j6(Lcom/google/android/gms/internal/measurement/Fb;)Lcom/google/android/gms/internal/measurement/Fb$a;

    return-object v0
.end method

.method public final synthetic v5()Lcom/google/android/gms/internal/measurement/mc;
    .registers 3

    const/4 v1, 0x0

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->v5:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb$a;

    return-object v0
.end method
