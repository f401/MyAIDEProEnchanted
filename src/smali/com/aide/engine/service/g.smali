.class Lcom/aide/engine/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/h;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/l;->j6(Lcom/aide/engine/service/p;)V
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
.field final FH:Lcom/aide/engine/service/p;

.field final Hw:Lcom/aide/engine/service/l;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/engine/service/g;

    const-wide v2, 0x1bd72709e548b1bdL

    const-wide v4, 0x12ff1d0d898bed10L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/p;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/engine/service/g;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/g;->FH:Lcom/aide/engine/service/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x11f611623c063ed0L
    .end annotation

    const-wide v2, -0x6b32ff28e97bd715L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6b32ff28e97bd715L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/g;->FH:Lcom/aide/engine/service/p;

    invoke-interface {v0, p1}, Lcom/aide/engine/service/p;->FH(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4d02e65f4c0aba48L
    .end annotation

    const-wide v2, 0x7cdd94e17fc30e3L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7cdd94e17fc30e3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public OW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x17113f93067a16afL
    .end annotation

    const-wide v2, 0x1e2af51c5c7a890L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e2af51c5c7a890L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/g;->FH:Lcom/aide/engine/service/p;

    invoke-interface {v0}, Lcom/aide/engine/service/p;->OW()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public XG()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3f5f931ac6550c30L
    .end annotation

    const-wide v2, -0x39cc66ccd983bfabL    # -1.5527481312324468E30

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39cc66ccd983bfabL    # -1.5527481312324468E30

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public XX()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6052ef744d98313cL
    .end annotation

    const-wide v2, 0x1acc20ea595aa1L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1acc20ea595aa1L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public aj()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x883326aa64339d3L
    .end annotation

    const-wide v2, -0x1070a63f63c964b4L    # -2.3765803870973117E229

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1070a63f63c964b4L    # -2.3765803870973117E229

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/g;->FH:Lcom/aide/engine/service/p;

    invoke-interface {v0}, Lcom/aide/engine/service/p;->aj()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public br()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5d2afd91dcd1c735L
    .end annotation

    const-wide v2, -0x18569a15c14d25ecL    # -2.263229459835065E191

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18569a15c14d25ecL    # -2.263229459835065E191

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xda093ea38831a74L
    .end annotation

    const-wide v2, -0x5f6a5e3a3ce23c33L    # -1.032564856504418E-151

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5f6a5e3a3ce23c33L    # -1.032564856504418E-151

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x934579f20880191L
    .end annotation

    const-wide v8, -0x12bd76d875116cL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x12bd76d875116cL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/g;->FH:Lcom/aide/engine/service/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/p;->j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public jJ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xe528f08dcaa4b8cL
    .end annotation

    const-wide v2, -0xaced7c674520857L    # -3.220185694212127E256

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xaced7c674520857L    # -3.220185694212127E256

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public kQ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2f3d5cafd348a16fL
    .end annotation

    const-wide v2, 0x26d4920b9de5f8fcL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26d4920b9de5f8fcL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6404290878b8491L
    .end annotation

    const-wide v2, 0x412196c8322c10b8L    # 576356.0979924416

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x412196c8322c10b8L    # 576356.0979924416

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/g;->FH:Lcom/aide/engine/service/p;

    invoke-interface {v0, p1}, Lcom/aide/engine/service/p;->QX(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public wc()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1d2f71235ca1f4c7L
    .end annotation

    const-wide v2, -0x3a050b895f0a7c00L    # -1.334743738200998E29

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a050b895f0a7c00L    # -1.334743738200998E29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public yO()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2403a04cc3caabfbL
    .end annotation

    const-wide v2, 0x23d610aee93d5930L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23d610aee93d5930L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
