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
    .registers 6

    .line 29
    :try_start_0
    const-string v0, "com.aide.ui.preferences.e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-wide v2, -0x5f3244041f22573L    # -8.18499004042859E279

    const-wide v4, 0x1b0c14db4cc00c58L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void

    :catch_0
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

    const-wide v4, 0x237c83398f1b179L

    .line 40
    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/e;->j6:Z

    if-eqz v0, :cond_0

    .line 41
    const-wide v0, 0x237c83398f1b179L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/aide/ui/preferences/e;->FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;

    invoke-virtual {v0}, Lcom/aide/ui/preferences/CompilerPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u63d0\u793a"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u786e\u5b9a\u8981\u5237\u65b0Maven\u4ed3\u5e93\u5417\uff1f"

    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u786e\u5b9a"

    :goto_2
    :try_start_3
    new-instance v1, Lcom/aide/ui/preferences/e$100000000;

    invoke-direct {v1, p0}, Lcom/aide/ui/preferences/e$100000000;-><init>(Lcom/aide/ui/preferences/e;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u53d6\u6d88"

    move-object v1, v0

    :goto_3
    const/4 v0, 0x0

    :try_start_4
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_1
    const-string v0, "Tips"

    goto :goto_0

    .line 53
    :cond_2
    const-string v0, "Are you sure you want to refresh Maven warehouse?"

    goto :goto_1

    .line 55
    :cond_3
    const-string v0, "Yes"

    goto :goto_2

    .line 65
    :cond_4
    const-string v0, "No"

    move-object v1, v0

    goto :goto_3

    .line 70
    :catch_0
    move-exception v0

    .line 75
    sget-boolean v1, Lcom/aide/ui/preferences/e;->DW:Z

    if-eqz v1, :cond_5

    .line 76
    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
