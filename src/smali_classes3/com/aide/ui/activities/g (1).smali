.class Lcom/aide/ui/activities/g;
.super Lcom/aide/uidesigner/Pa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/AndroidTrainerActivity;->j6(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static aM:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static j3:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Mr:Lcom/aide/ui/activities/AndroidTrainerActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x44d3aec280c6140L

    const-wide v2, -0xa18881b93ced200L  # -9.02087047336381E259

    const-class v4, Lcom/aide/ui/activities/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/AndroidTrainerActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/activities/g;->Mr:Lcom/aide/ui/activities/AndroidTrainerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aide/uidesigner/Pa;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V

    return-void
.end method


# virtual methods
.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2c1fcf661108b929L
    .end annotation

    const-wide v0, -0x2160c12962a3fb4L  # -3.394615836386558E298

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/g;->j3:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected j6(Lcom/aide/uidesigner/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1dab657e926e5923L
    .end annotation

    const-wide v0, 0x2c0911d47b05a78L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/g;->j3:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method protected j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x260ec19b641887ddL
    .end annotation

    const-wide v0, -0x2a1e3e6619f9df0L  # -7.69206841769425E295

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/g;->j3:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23cdca5d79e2174L
    .end annotation

    const-wide v0, 0x3dc84f7b93dc3e17L  # 4.4220504413200036E-11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/g;->aM:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/g;->j3:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
