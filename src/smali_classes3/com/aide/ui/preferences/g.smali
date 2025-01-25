.class Lcom/aide/ui/preferences/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final FH:Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x4bea28116014ee9L

    const-wide v2, 0x236b45a6f4002a0L

    const-class v4, Lcom/aide/ui/preferences/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/preferences/g;->FH:Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x126ea76eae9693e0L
    .end annotation

    const-wide v0, -0xbcf5f9d407c974bL  # -4.761649300695167E251

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Bk;->DW()V

    iget-object v2, p0, Lcom/aide/ui/preferences/g;->FH:Lcom/aide/ui/preferences/KeyBindingsPreferencesFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/aide/ui/preferences/KeyBindingsView;

    if-eqz v3, :cond_22

    check-cast v2, Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-virtual {v2}, Lcom/aide/ui/preferences/KeyBindingsView;->j6()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/g;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method
