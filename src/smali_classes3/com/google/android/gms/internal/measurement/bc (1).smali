.class final Lcom/google/android/gms/internal/measurement/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Dc;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/kc;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/measurement/kc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/cc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bc;->j6:Lcom/google/android/gms/internal/measurement/kc;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/dc;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/kc;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Eb;->j6()Lcom/google/android/gms/internal/measurement/Eb;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/bc;->j6()Lcom/google/android/gms/internal/measurement/kc;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/dc;-><init>([Lcom/google/android/gms/internal/measurement/kc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/bc;-><init>(Lcom/google/android/gms/internal/measurement/kc;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/kc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/kc;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bc;->DW:Lcom/google/android/gms/internal/measurement/kc;

    return-void
.end method

.method private static j6()Lcom/google/android/gms/internal/measurement/kc;
    .registers 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/kc;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/bc;->j6:Lcom/google/android/gms/internal/measurement/kc;

    return-object v0
.end method

.method private static j6(Lcom/google/android/gms/internal/measurement/jc;)Z
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/jc;->FH()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/measurement/Fb$e;->u7:I

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Cc;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/Cc<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bc;->DW:Lcom/google/android/gms/internal/measurement/kc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/kc;->DW(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/jc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/jc;->DW()Z

    move-result v0

    if-eqz v0, :cond_39

    const-class v0, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->FH()Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vb;->j6()Lcom/google/android/gms/internal/measurement/tb;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/jc;->j6()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/rc;->j6(Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/rc;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->j6()Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vb;->DW()Lcom/google/android/gms/internal/measurement/tb;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/jc;->j6()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/rc;->j6(Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/rc;

    move-result-object p1

    return-object p1

    :cond_39
    const-class v0, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/bc;->j6(Lcom/google/android/gms/internal/measurement/jc;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vc;->DW()Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Xb;->DW()Lcom/google/android/gms/internal/measurement/Xb;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->FH()Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object v5

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vb;->j6()Lcom/google/android/gms/internal/measurement/tb;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->DW()Lcom/google/android/gms/internal/measurement/gc;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/pc;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/jc;Lcom/google/android/gms/internal/measurement/tc;Lcom/google/android/gms/internal/measurement/Xb;Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/gc;)Lcom/google/android/gms/internal/measurement/pc;

    move-result-object p1

    return-object p1

    :cond_61
    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->DW()Lcom/google/android/gms/internal/measurement/gc;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/pc;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/jc;Lcom/google/android/gms/internal/measurement/tc;Lcom/google/android/gms/internal/measurement/Xb;Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/gc;)Lcom/google/android/gms/internal/measurement/pc;

    move-result-object p1

    return-object p1

    :cond_6c
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/bc;->j6(Lcom/google/android/gms/internal/measurement/jc;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vc;->j6()Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Xb;->j6()Lcom/google/android/gms/internal/measurement/Xb;

    move-result-object v4

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->j6()Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/vb;->DW()Lcom/google/android/gms/internal/measurement/tb;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->j6()Lcom/google/android/gms/internal/measurement/gc;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/pc;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/jc;Lcom/google/android/gms/internal/measurement/tc;Lcom/google/android/gms/internal/measurement/Xb;Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/gc;)Lcom/google/android/gms/internal/measurement/pc;

    move-result-object p1

    return-object p1

    :cond_8c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->DW()Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->j6()Lcom/google/android/gms/internal/measurement/gc;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/pc;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/jc;Lcom/google/android/gms/internal/measurement/tc;Lcom/google/android/gms/internal/measurement/Xb;Lcom/google/android/gms/internal/measurement/Uc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/gc;)Lcom/google/android/gms/internal/measurement/pc;

    move-result-object p1

    return-object p1
.end method
