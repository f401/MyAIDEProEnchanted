.class public Ltv/ouya/console/api/f;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Landroid/net/Uri;

.field private static FH:Landroid/content/Context;

.field private static Hw:Landroid/os/Bundle;

.field static final Zo:[Ltv/ouya/console/api/f;

.field private static j6:[I

.field private static v5:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:Landroid/util/SparseBooleanArray;

.field private VH:I

.field private gn:Landroid/view/InputDevice;

.field private tp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;

.field private we:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltv/ouya/console/api/f;->j6:[I

    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    sput-object v1, Ltv/ouya/console/api/f;->Hw:Landroid/os/Bundle;

    sput-object v1, Ltv/ouya/console/api/f;->v5:Landroid/util/SparseArray;

    const/4 v0, 0x4

    new-array v0, v0, [Ltv/ouya/console/api/f;

    sput-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0x11
        0x12
    .end array-data
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltv/ouya/console/api/f;->VH:I

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/f;->gn:Landroid/view/InputDevice;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/f;->tp:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/f;->we:Landroid/util/SparseIntArray;

    invoke-static {p1}, Ltv/ouya/console/api/f;->Hw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/f;->u7:Ljava/lang/String;

    iget-object v0, p0, Ltv/ouya/console/api/f;->u7:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/f;->gn:Landroid/view/InputDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/f;->u7:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static DW(I)Ltv/ouya/console/api/f;
    .registers 2

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    sget-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DW(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p0, p1}, Ltv/ouya/console/api/f;->FH(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static FH(I)I
    .registers 2

    invoke-static {p0}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ltv/ouya/console/api/f;->Hw()I

    move-result v0

    goto :goto_0
.end method

.method private static FH(ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_5

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    iget-object v6, v4, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v6, v4, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eq v6, v0, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    move v3, v2

    :cond_3
    iget-object v6, v4, Ltv/ouya/console/api/f;->we:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v6, v4, Ltv/ouya/console/api/f;->we:Landroid/util/SparseIntArray;

    or-int/2addr v1, v3

    invoke-virtual {v6, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    iget-object v1, v4, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static Hw(I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bt_name"

    aput-object v4, v2, v3

    const-string v3, "input_device_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v0, v6

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OuyaController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private static VH(I)I
    .registers 9

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    if-nez v0, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "player_num"

    aput-object v3, v2, v7

    const-string v3, "input_device_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method private static Zo(I)Ltv/ouya/console/api/f;
    .registers 4

    invoke-static {p0}, Ltv/ouya/console/api/f;->j6(I)Ltv/ouya/console/api/f;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ltv/ouya/console/api/f;->VH(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller for player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already found, but doesn\'t match device id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ltv/ouya/console/api/f;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OuyaController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_3
    new-instance v2, Ltv/ouya/console/api/f;

    invoke-direct {v2, p0}, Ltv/ouya/console/api/f;-><init>(I)V

    aput-object v2, v1, v0

    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static j6(I)Ltv/ouya/console/api/f;
    .registers 6

    sget-object v2, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltv/ouya/console/api/f;->DW()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Ltv/ouya/console/api/f;->v5(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ltv/ouya/console/api/e;

    invoke-direct {v0}, Ltv/ouya/console/api/e;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "tv.ouya.controller.added"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "tv.ouya.controller.removed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static j6(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p0, p1}, Ltv/ouya/console/api/f;->FH(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static j6(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Ltv/ouya/console/api/f;->j6:[I

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget v5, v3, v1

    iget-object v0, v2, Ltv/ouya/console/api/f;->tp:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, v2, Ltv/ouya/console/api/f;->tp:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static v5(I)I
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "input_device_id"

    aput-object v3, v2, v6

    const-string v3, "player_num = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Ltv/ouya/console/api/f;->VH:I

    return v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/f;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public Hw()I
    .registers 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public j6()Landroid/view/InputDevice;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/f;->gn:Landroid/view/InputDevice;

    return-object v0
.end method
