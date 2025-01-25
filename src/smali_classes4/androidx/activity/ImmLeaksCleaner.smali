.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final INIT_FAILED:I = 0x2

.field private static final INIT_SUCCESS:I = 0x1

.field private static final NOT_INITIALIAZED:I

.field private static sHField:Ljava/lang/reflect/Field;

.field private static sNextServedViewField:Ljava/lang/reflect/Field;

.field private static sReflectedFieldsInitialized:I

.field private static sServedViewField:Ljava/lang/reflect/Field;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private static initializeReflectiveFields()V
    .registers 2

    const/4 v0, 0x2

    :try_start_1
    sput v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mNextServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mH"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x1

    sput v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I
    :try_end_30
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    goto :goto_30
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 7

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    if-nez v0, :cond_c

    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->initializeReflectiveFields()V

    :cond_c
    sget v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    :try_start_1b
    sget-object v1, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_20} :catch_4f

    move-result-object v2

    if-eqz v2, :cond_4

    monitor-enter v2

    :try_start_24
    sget-object v1, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2c} :catch_4c
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_2c} :catch_49
    .catchall {:try_start_24 .. :try_end_2c} :catchall_30

    if-nez v1, :cond_33

    :try_start_2e
    monitor-exit v2

    goto :goto_4

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3b

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_30

    goto :goto_4

    :cond_3b
    :try_start_3b
    sget-object v1, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_41} :catch_46
    .catchall {:try_start_3b .. :try_end_41} :catchall_30

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_30

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_4

    :catch_46
    move-exception v0

    :try_start_47
    monitor-exit v2

    goto :goto_4

    :catch_49
    move-exception v0

    monitor-exit v2

    goto :goto_4

    :catch_4c
    move-exception v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_30

    goto :goto_4

    :catch_4f
    move-exception v0

    goto :goto_4
.end method
