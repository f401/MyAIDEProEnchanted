.class synthetic Landroidx/lifecycle/Lifecycle$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

.field static final $SwitchMap$androidx$lifecycle$Lifecycle$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    :try_start_9
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_aa

    :goto_12
    :try_start_12
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_a7

    :goto_1d
    :try_start_1d
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_a5

    :goto_28
    :try_start_28
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_a3

    :goto_33
    :try_start_33
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_a1

    :goto_3e
    :try_start_3e
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_9f

    :goto_49
    :try_start_49
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_9d

    :goto_54
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    :try_start_5d
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_66} :catch_9b

    :goto_66
    :try_start_66
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_99

    :goto_71
    :try_start_71
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_97

    :goto_7c
    :try_start_7c
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_95

    :goto_87
    :try_start_87
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception v0

    goto :goto_92

    :catch_95
    move-exception v0

    goto :goto_87

    :catch_97
    move-exception v0

    goto :goto_7c

    :catch_99
    move-exception v0

    goto :goto_71

    :catch_9b
    move-exception v0

    goto :goto_66

    :catch_9d
    move-exception v0

    goto :goto_54

    :catch_9f
    move-exception v0

    goto :goto_49

    :catch_a1
    move-exception v0

    goto :goto_3e

    :catch_a3
    move-exception v0

    goto :goto_33

    :catch_a5
    move-exception v0

    goto :goto_28

    :catch_a7
    move-exception v0

    goto/16 :goto_1d

    :catch_aa
    move-exception v0

    goto/16 :goto_12
.end method
