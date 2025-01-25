.class final Lcom/aide/common/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/g;->FH(Landroid/app/Activity;)V
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4f5fa34ecae7e20cL  # -1.8087126003135542E-74

    const-wide v2, 0x11888cd1f213869bL

    const-class v4, Lcom/aide/common/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/f;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x8866f622db47f20L
    .end annotation

    const-wide v0, 0x39c9e6ae63d23e25L  # 2.5540454990559304E-30

    :try_start_5
    sget-boolean v2, Lcom/aide/common/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5f

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/common/f;->FH:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/common/f;->FH:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_container"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-class v4, Landroid/widget/Spinner;

    invoke-static {v3, v4}, Lcom/aide/common/g;->j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    if-eqz v3, :cond_5e

    new-instance v4, Lcom/aide/common/e;

    invoke-direct {v4, p0, v3, v2}, Lcom/aide/common/e;-><init>(Lcom/aide/common/f;Landroid/widget/Spinner;Landroid/app/ActionBar;)V

    const-class v2, Landroid/view/View;

    const-string v5, "getListenerInfo"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android.view.View$ListenerInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "mOnClickListener"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_c .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v2

    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    :cond_5e
    :goto_5e
    return-void

    :catchall_5f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/f;->DW:Z

    if-eqz v3, :cond_67

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_67
    throw v2
.end method
