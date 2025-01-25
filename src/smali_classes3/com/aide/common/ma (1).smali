.class public abstract Lcom/aide/common/ma;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Lcom/aide/common/ma;
    .annotation runtime Labcd/ru;
        field = -0x339571fd45ed5c20L
    .end annotation
.end field

.field private static FH:Landroid/app/Dialog;
    .annotation runtime Labcd/ru;
        field = 0x20d5319c50ce817dL
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static j6:I
    .annotation runtime Labcd/ru;
        field = -0xc857818b7f978f1L
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5a73b69e861d890L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x24b849aa275b26d8L  # 8.554393781167199E-132

    :try_start_6
    const-class v3, Lcom/aide/common/ma;

    const-wide v4, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/common/ma;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const v3, 0x1e240

    sput v3, Lcom/aide/common/ma;->j6:I
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/common/ma;->v5:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2aec303eb878f7c0L  # 6.292783393908678E-102

    :try_start_6
    sget-boolean v3, Lcom/aide/common/ma;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/common/ma;->v5:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x2251d30e3b5f3ef8L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x2251d30e3b5f3ef8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x375f9efea8663ff0L  # 5.671751860900605E-42

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/common/ia;

    invoke-direct {v0, p2, p3, p1}, Lcom/aide/common/ia;-><init>(Ljava/util/List;Lcom/aide/common/ab;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x375f9efea8663ff0L  # 5.671751860900605E-42

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public static Hw()V
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x1acbea3e8bf31520L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/ma;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/common/ma;->FH:Landroid/app/Dialog;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    :cond_14
    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Lcom/aide/common/ma;->v5:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method public static j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x22c808ab67559f33L  # 3.941809819939498E-141

    invoke-static {v2, v3, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    sget-object v0, Lcom/aide/common/ma;->DW:Lcom/aide/common/ma;

    if-eqz v0, :cond_23

    sget v2, Lcom/aide/common/ma;->j6:I

    if-ne p1, v2, :cond_23

    invoke-virtual {v0, p0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/aide/common/ma;->FH:Landroid/app/Dialog;

    sput-object v1, Lcom/aide/common/ma;->DW:Lcom/aide/common/ma;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_24

    return-object v0

    :cond_23
    return-object v1

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x22c808ab67559f33L  # 3.941809819939498E-141

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public static j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_1a

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x14ddac774690a127L  # -1.1767438337798222E208

    const/4 v3, 0x0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aide/ui/Ra;->dialog_yes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aide/ui/Ra;->dialog_no:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x14ddac774690a127L  # -1.1767438337798222E208

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public static j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_1a

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x21b2b7d40fc47d7L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x21b2b7d40fc47d7L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public static j6(Landroid/app/Activity;IILjava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, 0x3bc99ef87a8467c9L  # 1.0850906669451488E-20

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2c
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, "\n"

    move-object v1, v0

    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_5e
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/aide/ui/Ra;->dialog_no:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/aide/ui/Ra;->dialog_yes:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v2, p0

    move-object v6, p5

    move-object v8, p4

    invoke-static/range {v2 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x12bffe0029049389L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sput-object p1, Lcom/aide/common/ma;->DW:Lcom/aide/common/ma;

    sget-object v0, Lcom/aide/common/ma;->FH:Landroid/app/Dialog;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    sget v0, Lcom/aide/common/ma;->j6:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    sget v0, Lcom/aide/common/ma;->j6:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x12bffe0029049389L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x9b3299ba527b650L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_27

    const-wide v2, -0x9b3299ba527b650L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_11

    const-wide v1, -0xf686abf1a064a9L  # -8.73457431403553E303

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_32

    const-wide v2, -0xf686abf1a064a9L  # -8.73457431403553E303

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, 0xc960d5a269f2998L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_34

    const-wide v2, 0xc960d5a269f2998L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/common/ab;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/u;",
            "Lcom/aide/common/ab<",
            "Lcom/aide/common/u;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x309d3803c155f9fdL  # -2.654679615591044E74

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Lcom/aide/common/Y;

    invoke-direct {v0, p3, p4, p2, p1}, Lcom/aide/common/Y;-><init>(Lcom/aide/common/u;Lcom/aide/common/ab;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x309d3803c155f9fdL  # -2.654679615591044E74

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_11

    const-wide v1, -0xc8d49c781ff65b9L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_29

    const-wide v2, -0xc8d49c781ff65b9L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x20e8f2bb88038b25L  # -1.1790254800196042E150

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x20e8f2bb88038b25L  # -1.1790254800196042E150

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 16

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, -0x669b7b8aa29be60L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aide/ui/Ra;->dialog_yes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aide/ui/Ra;->dialog_no:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v2 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x3fad2ee8888d56f3L  # -75.26705728719044

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x3fad2ee8888d56f3L  # -75.26705728719044

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, -0x1fc3b18731032440L  # -3.795285293644982E155

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_22
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v10}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x3c9a856ddb7de47L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Lcom/aide/common/J;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/aide/common/J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x3c9a856ddb7de47L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 19

    move-object v0, p0

    sget-boolean v1, Lcom/aide/common/ma;->Hw:Z

    if-eqz v1, :cond_2a

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const-wide v2, -0x6d3efb849359ea80L  # -2.410400027174093E-218

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2a
    new-instance v1, Lcom/aide/common/S;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/aide/common/S;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const-wide v1, 0x2558539edf68d50L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_25
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-static/range {v2 .. v10}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = -0x15bd10e5741946ebL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/common/ma;->Hw:Z

    if-eqz v1, :cond_36

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v11, p5

    invoke-direct {v2, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    const-wide v2, 0x2a6401bdc08a30a0L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_38

    :cond_36
    move/from16 v11, p5

    :goto_38
    new-instance v1, Lcom/aide/common/H;

    move-object v3, v1

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p8

    move-object v8, p1

    move-object/from16 v9, p7

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/aide/common/H;-><init>(Lcom/aide/common/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 16

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, 0x46da09b48fc149d1L  # 2.112446336994041E33

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aide/ui/Ra;->dialog_ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move-object v9, p5

    invoke-static/range {v2 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 19

    move-object v0, p0

    sget-boolean v1, Lcom/aide/common/ma;->Hw:Z

    if-eqz v1, :cond_31

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    move v5, p3

    invoke-direct {v2, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const-wide v2, 0xea70e67ee81358dL

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_32

    :cond_31
    move v5, p3

    :goto_32
    new-instance v1, Lcom/aide/common/N;

    move-object v3, v1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/aide/common/N;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2b7179d5f88fdb80L  # 1.9974757568374273E-99

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_2a

    const-wide v2, 0x2b7179d5f88fdb80L  # 1.9974757568374273E-99

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x20e0d3e58a5b028L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLcom/aide/common/ab;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_29

    const-wide v2, -0x20e0d3e58a5b028L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x342e5f61a67ac8c7L  # -1.7288919527063217E57

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Lcom/aide/common/da;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/aide/common/da;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x342e5f61a67ac8c7L  # -1.7288919527063217E57

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, -0x285f9c1d377fabc7L  # -1.2613397302569309E114

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_22
    new-instance v0, Lcom/aide/common/la;

    move-object v4, v0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    move-object v8, p5

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/aide/common/la;-><init>(Ljava/util/List;Lcom/aide/common/ab;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/aide/common/ab<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x28e4b42045c53e53L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Lcom/aide/common/ga;

    invoke-direct {v0, p3, p2, p4, p1}, Lcom/aide/common/ga;-><init>(Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x28e4b42045c53e53L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const-wide v1, 0x28156ac4a2686a0L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_2f

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_39

    :cond_2f
    const-string v1, "\\|"

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :goto_39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_55
    new-instance p4, Lcom/aide/common/I;

    invoke-direct {p4, p5, p2}, Lcom/aide/common/I;-><init>(Lcom/aide/common/ab;Ljava/util/List;)V

    invoke-static {p0, p1, p3, v0, p4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;)V

    return-void
.end method

.method private static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLcom/aide/common/ab;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x18c3f67e605be144L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ma;->Hw:Z

    if-eqz v0, :cond_16

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x597618e7d8950cbL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    new-instance v0, Lcom/aide/common/aa;

    invoke-direct {v0, p3, p2, p4, p1}, Lcom/aide/common/aa;-><init>(ZLjava/util/List;Lcom/aide/common/ab;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ma;->v5:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x597618e7d8950cbL

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method


# virtual methods
.method protected abstract j6(Landroid/app/Activity;)Landroid/app/Dialog;
.end method
