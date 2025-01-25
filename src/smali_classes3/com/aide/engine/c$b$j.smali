.class Lcom/aide/engine/c$b$j;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ib;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
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
.field final FH:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$j;

    const-wide v1, 0x3ddcb18a5f2aa5dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x20467ee2bba803dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x202c8c75137f8780L  # -4.074997052906953E153

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x2d5455896d37765L  # 5.2039100005918716E-295

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$j;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x2d5455896d37765L  # 5.2039100005918716E-295

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public I()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b3533a3fcf38c30L
    .end annotation

    const-wide v0, -0x3d113942d0c31b50L  # -2.707114107799415E14

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->ce(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public OW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3667b196aba2ba80L
    .end annotation

    const-wide v0, 0xe49752faf0985b4L  # 7.635783966088651E-240

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->cT(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->zh(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Gj(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Cz(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->AL(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->MP(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->pO(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->aX(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->e9(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->pN(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Jl(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->PT(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->w9(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->eU(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->e3(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->gG(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Nh(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->BR(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->AE(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->k2(Lcom/aide/engine/c;)I

    move-result v2

    if-gtz v2, :cond_e1

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Za(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_dc
    .catchall {:try_start_5 .. :try_end_dc} :catchall_e3

    if-eqz v0, :cond_df

    goto :goto_e1

    :cond_df
    const/4 v0, 0x0

    goto :goto_e2

    :cond_e1
    :goto_e1
    const/4 v0, 0x1

    :goto_e2
    return v0

    :catchall_e3
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_eb

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_eb
    throw v2
.end method

.method public Qq()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x361d352fe920b7ffL
    .end annotation

    const-wide v0, 0x448ee1d0e972cc51L  # 1.8229570699015666E22

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->cT(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Jl(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Gj(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Cz(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->aX(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->e9(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->AL(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_57

    if-eqz v0, :cond_53

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v0, 0x1

    :goto_56
    return v0

    :catchall_57
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_5f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5f
    throw v2
.end method

.method public aj()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5b17044da820a138L
    .end annotation

    const-wide v0, -0x36080a1240108b18L  # -2.1886588996252596E48

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/engine/c$b$j;->OW()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public ca()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6091cfca8cd2c323L
    .end annotation

    const-wide v0, -0x17ba77c2b9c2bbd3L  # -1.964786306114079E194

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->e3(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->eU(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public lp()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2c439608ce35371dL
    .end annotation

    const-wide v0, 0x1b0b4c5677f29e21L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Bx(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public sy()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3a16c678390e3e9bL
    .end annotation

    const-wide v0, 0x2c0e8f14eba08bc5L  # 1.7883367534741155E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Jm(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public x9()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x376ca89e12fb51abL
    .end annotation

    const-wide v0, 0xbefe4963929c7d7L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->Pa(Lcom/aide/engine/c;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/aide/engine/c$b$j;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->AL(Lcom/aide/engine/c;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$j;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method
