.class synthetic Landroidx/lifecycle/FullLifecycleObserverAdapter$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/FullLifecycleObserverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$androidx$lifecycle$Lifecycle$Event:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    :try_start_9
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_61

    :goto_12
    :try_start_12
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_5f

    :goto_1d
    :try_start_1d
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_5d

    :goto_28
    :try_start_28
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_5b

    :goto_33
    :try_start_33
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_59

    :goto_3e
    :try_start_3e
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    :catch_59
    move-exception v0

    goto :goto_3e

    :catch_5b
    move-exception v0

    goto :goto_33

    :catch_5d
    move-exception v0

    goto :goto_28

    :catch_5f
    move-exception v0

    goto :goto_1d

    :catch_61
    move-exception v0

    goto :goto_12
.end method
