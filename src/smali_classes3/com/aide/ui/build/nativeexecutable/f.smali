.class Lcom/aide/ui/build/nativeexecutable/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/android/G;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/k;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/ui/build/nativeexecutable/k;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad04fbe50739491L

    const-wide v2, 0x2219515984c1792cL

    const-class v4, Lcom/aide/ui/build/nativeexecutable/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/k;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x597b339a8d110bc8L
    .end annotation

    const-wide v0, 0x320eb599df57fde0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/nativeexecutable/b;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/nativeexecutable/b;-><init>(Lcom/aide/ui/build/nativeexecutable/f;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/f;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x28d1e75d35795820L
    .end annotation

    const-wide v0, 0x425b55f03780dcefL  # 4.696236928034521E11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/nativeexecutable/c;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/nativeexecutable/c;-><init>(Lcom/aide/ui/build/nativeexecutable/f;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/f;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x499ecea952c1e99L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v0, -0x21f7c4c4e93fb858L  # -9.45553066739464E144

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/nativeexecutable/e;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/nativeexecutable/e;-><init>(Lcom/aide/ui/build/nativeexecutable/f;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/f;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6750e9719ff8baf8L
    .end annotation

    const-wide v0, 0x954cc12457d259L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/nativeexecutable/d;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/nativeexecutable/d;-><init>(Lcom/aide/ui/build/nativeexecutable/f;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/f;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
