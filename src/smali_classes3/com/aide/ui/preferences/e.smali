.class Lcom/aide/ui/preferences/e;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# instance fields
.field final FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    .line 29
    :try_start_0
    const-string v0, "com.aide.ui.preferences.e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_14

    const-wide v1, -0x5f3244041f22573L  # -8.18499004042859E279

    const-wide v3, 0x1b0c14db4cc00c58L

    invoke-static {v0, v1, v2, v3, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/aide/ui/preferences/CompilerPreferencesFragment;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/aide/ui/preferences/e;->FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2718cc9df1a60780L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 40
    const-wide v0, 0x237c83398f1b179L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/e;->j6:Z

    if-eqz v2, :cond_c

    .line 41
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :cond_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aide/ui/preferences/e;->FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;

    invoke-virtual {v3}, Lcom/aide/ui/preferences/CompilerPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_5d

    if-eqz v3, :cond_20

    const-string v3, "提示"

    goto :goto_22

    :cond_20
    const-string v3, "Tips"

    :goto_22
    :try_start_22
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_5d

    if-eqz v3, :cond_2e

    const-string v3, "确定要刷新Maven仓库吗？"

    goto :goto_30

    :cond_2e
    const-string v3, "Are you sure you want to refresh Maven warehouse?"

    :goto_30
    :try_start_30
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_5d

    if-eqz v3, :cond_3c

    const-string v3, "确定"

    goto :goto_3e

    :cond_3c
    const-string v3, "Yes"

    :goto_3e
    :try_start_3e
    new-instance v4, Lcom/aide/ui/preferences/e$100000000;

    invoke-direct {v4, p0}, Lcom/aide/ui/preferences/e$100000000;-><init>(Lcom/aide/ui/preferences/e;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_5d

    if-eqz v3, :cond_4f

    const-string v3, "取消"

    goto :goto_51

    :cond_4f
    const-string v3, "No"

    :goto_51
    const/4 v4, 0x0

    :try_start_52
    move-object v5, v4

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_5d

    .line 70
    const/4 p1, 0x1

    return p1

    :catchall_5d
    move-exception v2

    .line 75
    sget-boolean v3, Lcom/aide/ui/preferences/e;->DW:Z

    if-eqz v3, :cond_65

    .line 76
    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_65
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
