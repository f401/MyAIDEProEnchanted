.class final Lcom/aide/uidesigner/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/L;->FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1dd98fa673d10c90L  # -6.460833633665477E164

    const-wide v2, 0x1672c7d41f0d478bL

    const-class v4, Lcom/aide/uidesigner/v;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/v;->Hw:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x13f468d2694bf31dL
    .end annotation

    const-wide v0, -0x6a9d332beb05af68L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x34e224313b44fbe0L
    .end annotation

    const-wide v0, -0x1c84f765f22fa771L  # -1.6323806905951264E171

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x194d0169f37ac671L
    .end annotation

    const-wide v0, 0x5c29bade014e247cL  # 9.350762027623313E135

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->getStyle()Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_38

    if-nez v2, :cond_17

    const-string v0, "Style"

    return-object v0

    :cond_17
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style = <b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v3}, Lcom/aide/uidesigner/s;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_38

    return-object v0

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x22780de6f3714bc0L
    .end annotation

    const-wide v0, -0xfd516ccb0bb50afL  # -2.088985997344401E232

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1170cb7092107f6bL
    .end annotation

    const-wide v0, 0x257e663226f7aac8L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/v;->Hw:Landroid/app/Activity;

    iget-object v3, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    invoke-static {v2, v3}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
