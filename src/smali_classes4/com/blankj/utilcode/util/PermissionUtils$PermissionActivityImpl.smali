.class final Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;
.super Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionActivityImpl"
.end annotation


# static fields
.field private static INSTANCE:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl; = null

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final TYPE_DRAW_OVERLAYS:I = 0x3

.field private static final TYPE_RUNTIME:I = 0x1

.field private static final TYPE_WRITE_SETTINGS:I = 0x2

.field private static currentRequestCode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    return-void
.end method

.method private checkRequestCallback(I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1200()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedWriteSettings()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1200()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    :goto_18
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1202(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    goto :goto_a

    :cond_1c
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1200()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    goto :goto_18

    :cond_24
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1300()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1300()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    :goto_3a
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1302(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    goto :goto_a

    :cond_3e
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1300()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    goto :goto_3a
.end method

.method private requestPermissions(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;-><init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    invoke-static {v0, p1, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1000(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public static start(I)V
    .registers 3

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$1;-><init>(I)V

    sget-object v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->start(Lcom/blankj/utilcode/util/Utils$Consumer;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    return-void
.end method

.method public onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x40010

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v0, "PermissionUtils"

    const-string v1, "sInstance is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    :goto_2a
    return-void

    :cond_2b
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_40

    const-string v0, "PermissionUtils"

    const-string v1, "mPermissionsRequest is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    goto :goto_2a

    :cond_40
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_59

    const-string v0, "PermissionUtils"

    const-string v1, "mPermissionsRequest\'s size is no more than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    goto :goto_2a

    :cond_59
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;->onActivityCreate(Landroid/app/Activity;)V

    :cond_6e
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$600(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$600(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;-><init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;->explain(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/util/List;Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener$ShouldRequest;)V

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$602(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;)Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

    goto :goto_2a

    :cond_99
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    goto :goto_2a

    :cond_9d
    if-ne v0, v3, :cond_a5

    sput v3, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    invoke-static {p1, v3}, Lcom/blankj/utilcode/util/PermissionUtils;->access$800(Landroid/app/Activity;I)V

    goto :goto_2a

    :cond_a5
    if-ne v0, v4, :cond_ae

    sput v4, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    invoke-static {p1, v4}, Lcom/blankj/utilcode/util/PermissionUtils;->access$900(Landroid/app/Activity;I)V

    goto/16 :goto_2a

    :cond_ae
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    const-string v0, "PermissionUtils"

    const-string v1, "type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a
.end method

.method public onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 4

    const/4 v1, -0x1

    sget v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    if-eq v0, v1, :cond_a

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->checkRequestCallback(I)V

    sput v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    :cond_a
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(Lcom/blankj/utilcode/util/UtilsTransActivity;I[Ljava/lang/String;[I)V
    .registers 6

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1100(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    :cond_1a
    return-void
.end method
