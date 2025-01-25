.class public Labcd/Ye;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Yl;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ye;

    const-wide v1, 0xa3ce0a2ee40d0bdL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xcc47c98315bffc9L

    :try_start_6
    sget-boolean v3, Labcd/Ye;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Ye;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private FH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2db28e2775ba020bL
    .end annotation

    const-wide v0, 0x22310fe83da574f0L  # 5.465570717328327E-144

    :try_start_5
    sget-boolean v2, Labcd/Ye;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4e

    goto :goto_39

    :cond_4d
    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Labcd/Ye;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v2

    :goto_58
    goto :goto_57
.end method

.method static synthetic j6(Labcd/Ye;)V
    .registers 1

    invoke-direct {p0}, Labcd/Ye;->FH()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x25a798915703c21fL  # -1.6519609556238339E127

    :try_start_5
    sget-boolean v2, Labcd/Ye;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Ye;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0xd698ebae8251acbL

    :try_start_5
    sget-boolean v2, Labcd/Ye;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800b6

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ye;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->filetabMenuCloseAll(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run_()Z
    .registers 9

    const-wide v0, 0x6cfc1ab9bfefeefL

    :try_start_5
    sget-boolean v2, Labcd/Ye;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v6

    invoke-virtual {v6, v4}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v4

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x1

    goto :goto_1d

    :cond_3e
    if-eqz v3, :cond_54

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/Xe;

    invoke-direct {v3, p0}, Labcd/Xe;-><init>(Labcd/Ye;)V

    const v4, 0x7f0d05e6

    const/4 v6, 0x0

    const v7, 0x7f0d05e7

    invoke-static {v2, v7, v4, v3, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_57

    :cond_54
    invoke-direct {p0}, Labcd/Ye;->FH()V
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_58

    :goto_57
    return v5

    :catchall_58
    move-exception v2

    sget-boolean v3, Labcd/Ye;->DW:Z

    if-eqz v3, :cond_60

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_60
    goto :goto_62

    :goto_61
    throw v2

    :goto_62
    goto :goto_61
.end method
