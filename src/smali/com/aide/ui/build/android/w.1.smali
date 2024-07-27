.class Lcom/aide/ui/build/android/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/android/G;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/B;->DW()V
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
.field final FH:Lcom/aide/ui/build/android/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/w;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, 0x14c281a5f59e1cc8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/B;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/w;->FH:Lcom/aide/ui/build/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x79088a2710816030L
    .end annotation

    const-wide v2, -0x340131a6bd91b8e1L    # -1.2085794170340208E58

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x340131a6bd91b8e1L    # -1.2085794170340208E58

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/s;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/android/s;-><init>(Lcom/aide/ui/build/android/w;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x10a88663ac62484cL
    .end annotation

    const-wide v2, 0x6a973a954708309L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6a973a954708309L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/t;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/android/t;-><init>(Lcom/aide/ui/build/android/w;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x7222726abf9a31L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v2, -0x1dd21b4e640b8cb0L    # -8.60720240973689E164

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1dd21b4e640b8cb0L    # -8.60720240973689E164

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/v;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/build/android/v;-><init>(Lcom/aide/ui/build/android/w;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x54698f1f2ac82fc8L
    .end annotation

    const-wide v2, -0xf4ef917395bc52dL    # -6.767285521495141E234

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf4ef917395bc52dL    # -6.767285521495141E234

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/u;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/build/android/u;-><init>(Lcom/aide/ui/build/android/w;Z)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/w;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
