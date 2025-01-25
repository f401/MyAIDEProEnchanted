.class final Lcom/aide/uidesigner/K;
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
.field final FH:Landroid/app/Activity;

.field final Hw:Lcom/aide/uidesigner/s;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1dd98fa673d10c90L  # -6.460833633665477E164

    const-wide v2, 0x301b8ef7f0741187L  # 5.949989963596805E-77

    const-class v4, Lcom/aide/uidesigner/K;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/K;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/uidesigner/K;->Hw:Lcom/aide/uidesigner/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2198defc91635055L
    .end annotation

    const-wide v0, -0x153cce3b8c13a508L  # -1.9257578462541778E206

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/K;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xc0129af919d5ce8L
    .end annotation

    const-wide v0, -0x12f88253b8736e57L  # -1.6195961381164137E217

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/K;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2a96590b2e98c215L
    .end annotation

    const-wide v0, -0x10e0a4e08e24dd90L  # -1.8570204711455632E227

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0d06bb

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/K;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1b2f94cb7077b16cL
    .end annotation

    const-wide v0, -0x1890004cd3de6e5L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_add:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/K;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa71b58a7523349fL
    .end annotation

    const-wide v0, -0x36a5d8d245636da0L  # -2.3329292602760826E45

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/K;->FH:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_45

    if-eqz v4, :cond_1c

    const-string v4, "设置 "

    goto :goto_1e

    .line 99
    :cond_1c
    const-string v4, "Surround "

    .line 0
    :goto_1e
    :try_start_1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/uidesigner/K;->Hw:Lcom/aide/uidesigner/s;

    invoke-virtual {v4}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_45

    if-eqz v4, :cond_33

    const-string v4, " 的父布局..."

    goto :goto_35

    .line 99
    :cond_33
    const-string v4, " with..."

    .line 0
    :goto_35
    :try_start_35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/uidesigner/J;

    invoke-direct {v4, p0}, Lcom/aide/uidesigner/J;-><init>(Lcom/aide/uidesigner/K;)V

    invoke-static {v2, v3, v4}, Lcom/aide/uidesigner/Ka;->DW(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_45

    return-void

    .line 99
    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/K;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method
