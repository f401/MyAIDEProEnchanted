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
    .registers 6

    const-class v0, Labcd/Wj;

    const-wide v2, 0xd208e29057b8e3fL

    const-wide v4, 0x35e430c1031c0efL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, -0x89cce81bf1c6f98L    # -1.237760340934952E267

    :try_start_0
    sget-boolean v0, Labcd/Wj;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x89cce81bf1c6f98L    # -1.237760340934952E267

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Vj;

    invoke-direct {v0, p0}, Labcd/Vj;-><init>(Labcd/Wj;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wj;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public sy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x57e338b73ecb5917L
    .end annotation

    const-wide v2, -0x221577c872e000L

    :try_start_0
    sget-boolean v0, Labcd/Wj;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x221577c872e000L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Uj;

    invoke-direct {v0, p0}, Labcd/Uj;-><init>(Labcd/Wj;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wj;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
