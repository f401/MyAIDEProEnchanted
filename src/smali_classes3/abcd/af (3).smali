.class public Labcd/af;
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

    const-class v0, Labcd/af;

    const-wide v1, 0x309ca6e0697dcfa0L  # 1.583630768298628E-74

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x437ea094bbc7e080L  # 1.37932959477794816E17

    :try_start_6
    sget-boolean v3, Labcd/af;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/af;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x177ea3db29eede25L  # -2.534517825086268E195

    :try_start_5
    sget-boolean v2, Labcd/af;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->tp()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/af;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x2f8be93838f8968dL  # 1.1769737433533086E-79

    :try_start_5
    sget-boolean v2, Labcd/af;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800b7

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/af;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->filetabMenuCloseOthers(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run_()Z
    .registers 8

    const-wide v0, 0x164bb308647dd761L

    :try_start_5
    sget-boolean v2, Labcd/af;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v6

    invoke-virtual {v6, v5}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v6

    invoke-interface {v6}, Labcd/Nk$a;->J0()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_6b

    goto :goto_55

    :cond_69
    const/4 v0, 0x1

    return v0

    :catchall_6b
    move-exception v2

    sget-boolean v3, Labcd/af;->DW:Z

    if-eqz v3, :cond_73

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_73
    goto :goto_75

    :goto_74
    throw v2

    :goto_75
    goto :goto_74
.end method
