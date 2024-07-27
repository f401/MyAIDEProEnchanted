.class Lcom/aide/ui/build/nativeexecutable/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/nativeexecutable/a;


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
    .registers 6

    const-class v0, Lcom/aide/ui/build/nativeexecutable/j;

    const-wide v2, -0xad04fbe50739491L

    const-wide v4, 0x2219c134f70e19f7L    # 2.062523135476013E-144

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/k;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/j;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x490a1902efe0c115L
    .end annotation

    const-wide v2, 0x32168879801f8585L    # 2.089498194154975E-67

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x32168879801f8585L    # 2.089498194154975E-67

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/nativeexecutable/g;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/nativeexecutable/g;-><init>(Lcom/aide/ui/build/nativeexecutable/j;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x44031d3aac18e9d0L
    .end annotation

    const-wide v2, -0x44bb7b38fe0ea80L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x44bb7b38fe0ea80L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/nativeexecutable/i;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/nativeexecutable/i;-><init>(Lcom/aide/ui/build/nativeexecutable/j;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/Throwable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x32a079151de2c9e3L
    .end annotation

    const-wide v2, 0x3ed3c31870272fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ed3c31870272fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/nativeexecutable/h;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/build/nativeexecutable/h;-><init>(Lcom/aide/ui/build/nativeexecutable/j;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
