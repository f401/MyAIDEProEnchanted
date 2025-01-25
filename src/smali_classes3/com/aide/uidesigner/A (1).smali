.class final Lcom/aide/uidesigner/A;
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

    const-wide v2, 0x3019988a5aa696d0L  # 5.526254272784758E-77

    const-class v4, Lcom/aide/uidesigner/A;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/A;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/A;->Hw:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x29737a26a5e6f380L
    .end annotation

    const-wide v0, -0x1c7e8420e988f123L  # -2.1114713274791395E171

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/A;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->Zo()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/A;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27c24339e7ce8c05L
    .end annotation

    const-wide v0, -0x1451f22b26bb0478L  # -4.9402586644799934E210

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/A;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1532f61ddb465e54L
    .end annotation

    const-wide v0, -0x18c61efa64426c91L  # -1.8016260292621599E189

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0d06c2

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/A;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2be840471f5db7L
    .end annotation

    const-wide v0, -0x39efbd6436f96bcL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_add:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/A;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x130165a249710488L
    .end annotation

    const-wide v0, -0x3c1011b4b47af9cbL  # -1.8406873978874472E19

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/A;->Hw:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_45

    if-eqz v4, :cond_1c

    const-string v4, "在 "

    goto :goto_1e

    .line 99
    :cond_1c
    const-string v4, "Add inside "

    .line 0
    :goto_1e
    :try_start_1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/uidesigner/A;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v4}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_45

    if-eqz v4, :cond_33

    const-string v4, " 里面添加..."

    goto :goto_35

    .line 99
    :cond_33
    const-string v4, "..."

    .line 0
    :goto_35
    :try_start_35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/uidesigner/z;

    invoke-direct {v4, p0}, Lcom/aide/uidesigner/z;-><init>(Lcom/aide/uidesigner/A;)V

    invoke-static {v2, v3, v4}, Lcom/aide/uidesigner/Ka;->FH(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_45

    return-void

    .line 99
    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/A;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method
