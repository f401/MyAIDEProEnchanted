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
    .registers 6

    const-class v0, Lcom/aide/ui/build/c;

    const-wide v2, -0xbbcd7bda37b86ffL

    const-wide v4, 0x1fbdc279c8ec0310L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, -0x4eaca8bc9c62b08L    # -7.884462725637243E284

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/c;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4eaca8bc9c62b08L    # -7.884462725637243E284

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/a;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/build/a;-><init>(Lcom/aide/ui/build/c;Z)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/c;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x24d09fd4cbabf280L
    .end annotation

    const-wide v2, 0x11d4599f6842f945L    # 8.796492200761715E-223

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/c;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11d4599f6842f945L    # 8.796492200761715E-223

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/b;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/build/b;-><init>(Lcom/aide/ui/build/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/c;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
