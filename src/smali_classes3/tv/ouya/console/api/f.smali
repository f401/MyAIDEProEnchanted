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
            "Landroid/util/SparseArray<",
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
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;

.field private we:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Ltv/ouya/console/api/f;->j6:[I

    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Ltv/ouya/console/api/f;->Hw:Landroid/os/Bundle;

    sput-object v0, Ltv/ouya/console/api/f;->v5:Landroid/util/SparseArray;

    const/4 v0, 0x4

    new-array v0, v0, [Ltv/ouya/console/api/f;

    sput-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    return-void

    nop

    :array_1c
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

    move-result-object p1

    iput-object p1, p0, Ltv/ouya/console/api/f;->u7:Ljava/lang/String;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_2e
    iget-object p1, p0, Ltv/ouya/console/api/f;->gn:Landroid/view/InputDevice;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/ouya/console/api/f;->u7:Ljava/lang/String;

    :cond_38
    return-void
.end method

.method public static DW(I)Ltv/ouya/console/api/f;
    .registers 2

    if-ltz p0, :cond_a

    const/4 v0, 0x4

    if-ge p0, v0, :cond_a

    sget-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object p0, v0, p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static DW(ILandroid/view/KeyEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Ltv/ouya/console/api/f;->FH(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static FH(I)I
    .registers 1

    invoke-static {p0}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    invoke-virtual {p0}, Ltv/ouya/console/api/f;->Hw()I

    move-result p0

    return p0
.end method

.method private static FH(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p0

    invoke-static {p0}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    if-eq v1, v3, :cond_18

    if-eq v1, v2, :cond_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iget-object v4, p0, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2f

    iget-object v4, p0, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eq v4, v1, :cond_3e

    :cond_2f
    if-eqz v1, :cond_32

    const/4 v2, 0x1

    :cond_32
    iget-object v4, p0, Ltv/ouya/console/api/f;->we:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v4, p0, Ltv/ouya/console/api/f;->we:Landroid/util/SparseIntArray;

    or-int/2addr v0, v2

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3e
    iget-object p0, p0, Ltv/ouya/console/api/f;->EQ:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v3
.end method

.method private static Hw(I)Ljava/lang/String;
    .registers 10

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "bt_name"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const-string v5, "input_device_id = ?"

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_23} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_3e

    if-eqz p0, :cond_38

    :try_start_25
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_31

    move-object v1, v0

    goto :goto_38

    :catchall_31
    move-exception v0

    if-eqz p0, :cond_37

    :try_start_34
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0

    :cond_38
    :goto_38
    if-eqz p0, :cond_5b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_3d} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_5b

    :catch_3e
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "OuyaController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catch_5a
    move-exception p0

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method private static VH(I)I
    .registers 10

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "player_num"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const-string v5, "input_device_id = ?"

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3c

    :try_start_25
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_35

    if-eqz p0, :cond_34

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_34
    return v0

    :catchall_35
    move-exception v0

    if-eqz p0, :cond_3b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v0

    :cond_3c
    if-eqz p0, :cond_41

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_41
    return v1
.end method

.method private static Zo(I)Ltv/ouya/console/api/f;
    .registers 5

    invoke-static {p0}, Ltv/ouya/console/api/f;->j6(I)Ltv/ouya/console/api/f;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {p0}, Ltv/ouya/console/api/f;->VH(I)I

    move-result v0

    if-ltz v0, :cond_58

    const/4 v1, 0x4

    if-lt v0, v1, :cond_11

    goto :goto_58

    :cond_11
    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v2, v1, v0

    if-eqz v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller for player "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already found, but doesn\'t match device id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " got "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v1, v0

    invoke-virtual {p0}, Ltv/ouya/console/api/f;->DW()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "OuyaController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p0, v1, v0

    return-object p0

    :cond_50
    new-instance v2, Ltv/ouya/console/api/f;

    invoke-direct {v2, p0}, Ltv/ouya/console/api/f;-><init>(I)V

    aput-object v2, v1, v0

    return-object v2

    :cond_58
    :goto_58
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(I)Ltv/ouya/console/api/f;
    .registers 6

    sget-object v0, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ltv/ouya/console/api/f;->DW()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    const/4 p0, 0x0

    :goto_c
    const/4 v0, 0x4

    if-ge p0, v0, :cond_1c

    invoke-static {p0}, Ltv/ouya/console/api/f;->v5(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    invoke-static {v0}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_1c
    new-instance p0, Ltv/ouya/console/api/e;

    invoke-direct {p0}, Ltv/ouya/console/api/e;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "tv.ouya.controller.added"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "tv.ouya.controller.removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static j6(ILandroid/view/KeyEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Ltv/ouya/console/api/f;->FH(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static j6(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    return v1

    :cond_12
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Ltv/ouya/console/api/f;->Zo(I)Ltv/ouya/console/api/f;

    move-result-object v0

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    sget-object v2, Ltv/ouya/console/api/f;->j6:[I

    array-length v3, v2

    :goto_20
    if-ge v1, v3, :cond_46

    aget v4, v2, v1

    iget-object v5, v0, Ltv/ouya/console/api/f;->tp:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_43

    :cond_3a
    iget-object v5, v0, Ltv/ouya/console/api/f;->tp:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_46
    const/4 p0, 0x1

    return p0
.end method

.method private static v5(I)I
    .registers 9

    sget-object v0, Ltv/ouya/console/api/f;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Ltv/ouya/console/api/f;->DW:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "input_device_id"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string v4, "player_num = ?"

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_38

    :try_start_21
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_31

    if-eqz p0, :cond_30

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_30
    return v0

    :catchall_31
    move-exception v0

    if-eqz p0, :cond_37

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0

    :cond_38
    if-eqz p0, :cond_3d

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3d
    const/4 p0, -0x1

    return p0
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

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    sget-object v1, Ltv/ouya/console/api/f;->Zo:[Ltv/ouya/console/api/f;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public j6()Landroid/view/InputDevice;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/f;->gn:Landroid/view/InputDevice;

    return-object v0
.end method
