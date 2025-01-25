.class public Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;
.super Landroid/app/Fragment;


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

    const-class v0, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;

    const-wide v1, 0x4bea28116014ee9L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x11d31408c1c87378L  # -5.227225687382303E222

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const-wide v1, 0x16db5858385L

    const-wide v7, 0xf96adb83c7b380L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->DW:Z

    if-eqz v1, :cond_2d

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2c2405c62693a20fL  # 4.686956065946309E-96

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v0, 0x7f0b0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x2c2405c62693a20fL  # 4.686956065946309E-96

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xedb4056c95717d0L  # -1.0555455728123672E237

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/preferences/KeyBindingsView;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0xedb4056c95717d0L  # -1.0555455728123672E237

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const-wide v0, -0x1776f9ed7408daffL  # -3.653415642138774E195

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0800db

    if-ne v2, v3, :cond_3a

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_3f

    if-eqz v3, :cond_22

    const-string v3, "重置快捷键"

    goto :goto_24

    :cond_22
    const-string v3, "Reset Keybindings"

    :goto_24
    :try_start_24
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_3f

    if-eqz v4, :cond_2d

    const-string v4, "确定要恢复默认设置？所有更改都将丢失。"

    goto :goto_2f

    :cond_2d
    const-string v4, "Really restore default keybindings? All changes will be lost."

    :goto_2f
    :try_start_2f
    new-instance v5, Lcom/aide/ui/preferences/g;

    invoke-direct {v5, p0}, Lcom/aide/ui/preferences/g;-><init>(Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;)V

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_3a
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3f

    return p1

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method
