.class Lcom/aide/ui/build/java/f;
.super Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/h;->DW()V
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
.field final v5:Lcom/aide/ui/build/java/h;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xe65e2c46d3e3b4dL

    const-wide v2, -0x16f7327dd97545a7L  # -9.270161609229957E197

    const-class v4, Lcom/aide/ui/build/java/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/java/h;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/java/f;->v5:Lcom/aide/ui/build/java/h;

    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x364d8ff5e47c059L
    .end annotation

    const-wide v0, 0x56e8c206f51a099L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/f;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/java/d;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/java/d;-><init>(Lcom/aide/ui/build/java/f;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/f;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public aM(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x341ec21f265a136fL
    .end annotation

    const-wide v0, 0x18eb329dc0f64edL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/f;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/java/c;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/java/c;-><init>(Lcom/aide/ui/build/java/f;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/f;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x33222e7019bbb8c9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/f;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xbeffe8842cda4d9L  # 3.4911281399089E-251

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/ui/build/java/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/aide/ui/build/java/e;-><init>(Lcom/aide/ui/build/java/f;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/f;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0xbeffe8842cda4d9L  # 3.4911281399089E-251

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x41e150622acd1f55L
    .end annotation

    const-wide v0, -0x1c3b832af53beb63L  # -3.958759926081275E172

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/f;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/java/b;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/java/b;-><init>(Lcom/aide/ui/build/java/f;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/f;->Hw:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
