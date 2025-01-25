.class Lcom/aide/ui/preferences/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/preferences/CompilerPreferencesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x5f3244041f22573L  # -8.18499004042859E279

    const-wide v2, 0x1b0b158e3c322278L

    const-class v4, Lcom/aide/ui/preferences/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/preferences/CompilerPreferencesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/preferences/c;->FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4bbcace00aa06f3cL
    .end annotation

    const-wide v0, 0x898bbf9671b0f45L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->aM()Lcom/aide/ui/build/android/O;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/preferences/c;->FH:Lcom/aide/ui/preferences/CompilerPreferencesFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/android/O;->j6(Landroid/app/Activity;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    const/4 p1, 0x1

    return p1

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/c;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method
