.class public Ltv/ouya/console/api/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/j$a;
    }
.end annotation


# static fields
.field private static final DW:Landroid/net/Uri;

.field private static FH:Ltv/ouya/console/api/j$a; = null

.field private static Hw:Landroid/hardware/input/InputManager; = null

.field private static VH:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private static Zo:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private static gn:Ltv/ouya/console/api/d; = null

.field private static final j6:Ljava/lang/String; = "j"

.field private static u7:Z

.field private static v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/j;->DW:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Ltv/ouya/console/api/j;->FH:Ltv/ouya/console/api/j$a;

    const/4 v0, 0x1

    sput-boolean v0, Ltv/ouya/console/api/j;->v5:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ltv/ouya/console/api/j;->Zo:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltv/ouya/console/api/j;->VH:Ljava/util/List;

    new-instance v0, Ltv/ouya/console/api/d;

    invoke-direct {v0}, Ltv/ouya/console/api/d;-><init>()V

    sput-object v0, Ltv/ouya/console/api/j;->gn:Ltv/ouya/console/api/d;

    const/4 v0, 0x0

    sput-boolean v0, Ltv/ouya/console/api/j;->u7:Z

    return-void
.end method

.method static synthetic DW()Ltv/ouya/console/api/d;
    .registers 1

    sget-object v0, Ltv/ouya/console/api/j;->gn:Ltv/ouya/console/api/d;

    return-object v0
.end method

.method public static DW(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Ltv/ouya/console/api/j;->Hw:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    sget-object v1, Ltv/ouya/console/api/j;->FH:Ltv/ouya/console/api/j$a;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_0
    return-void
.end method

.method private static DW(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 4

    sget-boolean v0, Ltv/ouya/console/api/j;->v5:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ltv/ouya/console/api/f;->j6(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Ltv/ouya/console/api/j;->u7:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    sput-boolean v1, Ltv/ouya/console/api/j;->u7:Z

    return v0
.end method

.method static synthetic FH()Ljava/lang/String;
    .registers 1

    sget-object v0, Ltv/ouya/console/api/j;->j6:Ljava/lang/String;

    return-object v0
.end method

.method private static FH(Landroid/app/Activity;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    sget-object v2, Ltv/ouya/console/api/j;->DW:Landroid/net/Uri;

    const-string v3, "get_button_remap_json"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "button_remap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Ltv/ouya/console/api/j;->j6:Ljava/lang/String;

    const-string v2, "Error querying button remapping"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic j6()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Ltv/ouya/console/api/j;->Zo:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static j6(I)Ltv/ouya/console/api/d$e;
    .registers 2

    sget-object v0, Ltv/ouya/console/api/j;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/ouya/console/api/j;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/d$e;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ltv/ouya/console/api/j;->FH:Ltv/ouya/console/api/j$a;

    invoke-virtual {v0, p0}, Ltv/ouya/console/api/j$a;->onInputDeviceAdded(I)V

    sget-object v0, Ltv/ouya/console/api/j;->Zo:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/d$e;

    goto :goto_0
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 7

    const/4 v5, 0x4

    const/4 v1, 0x0

    invoke-static {p0}, Ltv/ouya/console/api/f;->j6(Landroid/content/Context;)V

    sget-object v0, Ltv/ouya/console/api/j;->FH:Ltv/ouya/console/api/j$a;

    if-nez v0, :cond_0

    new-instance v0, Ltv/ouya/console/api/j$a;

    invoke-direct {v0}, Ltv/ouya/console/api/j$a;-><init>()V

    sput-object v0, Ltv/ouya/console/api/j;->FH:Ltv/ouya/console/api/j$a;

    const-string v0, "input"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    sput-object v0, Ltv/ouya/console/api/j;->Hw:Landroid/hardware/input/InputManager;

    sget-object v0, Ltv/ouya/console/api/j;->Hw:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    sget-object v2, Ltv/ouya/console/api/j;->FH:Ltv/ouya/console/api/j$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    sget-object v2, Ltv/ouya/console/api/j;->VH:Ljava/util/List;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v5, :cond_4

    invoke-static {v1}, Ltv/ouya/console/api/f;->DW(I)Ltv/ouya/console/api/f;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ltv/ouya/console/api/f;->j6()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ltv/ouya/console/api/f;->j6()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v2, Ltv/ouya/console/api/j;->j6:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OUYA Controller #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "null"

    goto :goto_3

    :cond_4
    invoke-static {p0}, Ltv/ouya/console/api/j;->FH(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/j;->gn:Ltv/ouya/console/api/d;

    invoke-virtual {v1, v0}, Ltv/ouya/console/api/d;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Z)V
    .registers 1

    sput-boolean p0, Ltv/ouya/console/api/j;->v5:Z

    return-void
.end method

.method public static j6(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .registers 14

    const/4 v11, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Ltv/ouya/console/api/j;->j6(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    invoke-static {p0, p1, v11}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ltv/ouya/console/api/j;->j6(I)Ltv/ouya/console/api/d$e;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p0, p1, v0}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    sget-object v4, Ltv/ouya/console/api/j;->gn:Ltv/ouya/console/api/d;

    invoke-virtual {v4, v1, v2}, Ltv/ouya/console/api/d;->j6(Ltv/ouya/console/api/d$e;I)Ltv/ouya/console/api/d$c;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {p0, p1, v0}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, v7, Ltv/ouya/console/api/d$c;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v7, Ltv/ouya/console/api/d$c;->FH:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget v1, v7, Ltv/ouya/console/api/d$c;->DW:I

    if-ne v2, v1, :cond_5

    :goto_1
    invoke-static {p0, p1, v0}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    iget v7, v7, Ltv/ouya/console/api/d$c;->DW:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-direct/range {v1 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    move-object p1, v1

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t pass events when shouldHandleInputEvent is false"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z
    .registers 16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Ltv/ouya/console/api/j;->u7:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_1

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Ltv/ouya/console/api/j;->u7:Z

    return v0

    :cond_2
    sget-boolean v1, Ltv/ouya/console/api/j;->v5:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Ltv/ouya/console/api/f;->DW(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_3
    sget-boolean v1, Ltv/ouya/console/api/j;->v5:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Ltv/ouya/console/api/f;->j6(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x4

    goto :goto_2

    :pswitch_3
    const/16 v7, 0x17

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static j6(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 23

    invoke-static/range {p1 .. p1}, Ltv/ouya/console/api/j;->j6(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/j;->DW(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Ltv/ouya/console/api/f;->FH(I)I

    move-result v18

    if-gez v18, :cond_1

    sget-object v2, Ltv/ouya/console/api/j;->j6:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find playerNum for Controller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/j;->DW(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Ltv/ouya/console/api/j;->j6(I)Ltv/ouya/console/api/d$e;

    move-result-object v19

    if-nez v19, :cond_2

    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/j;->DW(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    move-object/from16 v0, v19

    iget-object v0, v0, Ltv/ouya/console/api/d$e;->v5:Ljava/util/Vector;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v15, v2

    move/from16 v17, v3

    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/d$d;

    iget v3, v2, Ltv/ouya/console/api/d$d;->j6:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget v4, v2, Ltv/ouya/console/api/d$d;->FH:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3

    iget v4, v2, Ltv/ouya/console/api/d$d;->DW:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    sget-object v3, Ltv/ouya/console/api/j;->VH:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Ltv/ouya/console/api/d$d;->Hw:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Ltv/ouya/console/api/j;->VH:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Ltv/ouya/console/api/d$d;->Hw:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v3, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget v9, v2, Ltv/ouya/console/api/d$d;->Hw:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v2

    :goto_2
    or-int v17, v17, v2

    move/from16 v3, v17

    :goto_3
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    move/from16 v17, v3

    goto :goto_1

    :cond_3
    sget-object v3, Ltv/ouya/console/api/j;->VH:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Ltv/ouya/console/api/d$d;->Hw:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ltv/ouya/console/api/j;->VH:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Ltv/ouya/console/api/d$d;->Hw:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v3, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    iget v9, v2, Ltv/ouya/console/api/d$d;->Hw:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;Z)Z

    move-result v2

    goto :goto_2

    :cond_4
    move/from16 v18, v17

    :goto_4
    move-object/from16 v0, v19

    iget-object v2, v0, Ltv/ouya/console/api/d$e;->DW:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Ltv/ouya/console/api/d$e;->DW:Landroid/util/SparseBooleanArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    move/from16 v18, v17

    goto :goto_4

    :cond_6
    move-object/from16 v0, v19

    iget-object v4, v0, Ltv/ouya/console/api/d$e;->FH:Ljava/util/Vector;

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x1

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/d$b;

    iget v5, v2, Ltv/ouya/console/api/d$b;->j6:I

    iget v6, v2, Ltv/ouya/console/api/d$b;->DW:I

    if-ne v5, v6, :cond_7

    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v9, v6

    iget v2, v2, Ltv/ouya/console/api/d$b;->DW:I

    invoke-virtual {v6, v2, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_6

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ltv/ouya/console/api/j;->DW(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    or-int v2, v18, v3

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p0 .. p1}, Ltv/ouya/console/api/j;->DW(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int v2, v2, v18

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Don\'t pass events when shouldHandleInputEvent is false"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move/from16 v3, v17

    goto/16 :goto_3
.end method

.method public static j6(Landroid/view/InputEvent;)Z
    .registers 2

    sget-boolean v0, Ltv/ouya/console/api/j;->u7:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
