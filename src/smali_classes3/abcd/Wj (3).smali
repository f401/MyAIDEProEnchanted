.class Labcd/Wj;
.super Lcom/aide/engine/service/q$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Xj;->Hw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final v5:Labcd/Xj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xd208e29057b8e3fL

    const-wide v2, 0x35e430c1031c0efL

    const-class v4, Labcd/Wj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Xj;)V
    .registers 2

    iput-object p1, p0, Labcd/Wj;->v5:Labcd/Xj;

    invoke-direct {p0}, Lcom/aide/engine/service/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public jO()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3822dc84aa50825dL
    .end annotation

    const-wide v0, -0x89cce81bf1c6f98L  # -1.237760340934952E267

    :try_start_5
    sget-boolean v2, Labcd/Wj;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Vj;

    invoke-direct {v2, p0}, Labcd/Vj;-><init>(Labcd/Wj;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Wj;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public sy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x57e338b73ecb5917L
    .end annotation

    const-wide v0, -0x221577c872e000L

    :try_start_5
    sget-boolean v2, Labcd/Wj;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Uj;

    invoke-direct {v2, p0}, Labcd/Uj;-><init>(Labcd/Wj;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Wj;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
