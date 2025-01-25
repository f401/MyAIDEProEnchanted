.class Lcom/aide/ui/build/c;
.super Lcom/aide/engine/service/m$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/d;->Zo()V
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
.field final v5:Lcom/aide/ui/build/d;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xbbcd7bda37b86ffL

    const-wide v2, 0x1fbdc279c8ec0310L

    const-class v4, Lcom/aide/ui/build/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/d;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/c;->v5:Lcom/aide/ui/build/d;

    invoke-direct {p0}, Lcom/aide/engine/service/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public VH(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3b000a87481e2c8fL
    .end annotation

    const-wide v0, -0x4eaca8bc9c62b08L  # -7.884462725637243E284

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/c;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/a;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/a;-><init>(Lcom/aide/ui/build/c;Z)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/c;->Hw:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x24d09fd4cbabf280L
    .end annotation

    const-wide v0, 0x11d4599f6842f945L  # 8.796492200761715E-223

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/c;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/b;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/b;-><init>(Lcom/aide/ui/build/c;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/c;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
