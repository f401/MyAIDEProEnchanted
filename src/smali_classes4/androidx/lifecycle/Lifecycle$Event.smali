.class public final enum Landroidx/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/lifecycle/Lifecycle$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_START:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_STOP:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v3}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_START"

    invoke-direct {v0, v1, v4}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_RESUME"

    invoke-direct {v0, v1, v5}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_PAUSE"

    invoke-direct {v0, v1, v6}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_STOP"

    invoke-direct {v0, v1, v7}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_ANY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v1, 0x7

    new-array v1, v1, [Landroidx/lifecycle/Lifecycle$Event;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    aput-object v2, v1, v3

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    aput-object v2, v1, v4

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    aput-object v2, v1, v5

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    aput-object v2, v1, v6

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3

    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12
.end method

.method public static downTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3

    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12
.end method

.method public static upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3

    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12
.end method

.method public static upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3

    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12

    :cond_19
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    const-class v0, Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$Event;
    .registers 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0}, [Landroidx/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method


# virtual methods
.method public getTargetState()Landroidx/lifecycle/Lifecycle$State;
    .registers 3

    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has no target state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_22  #0x6
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    :goto_24
    return-object v0

    :pswitch_25  #0x5
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_24

    :pswitch_28  #0x3, 0x4
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_24

    :pswitch_2b  #0x1, 0x2
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_24

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
    .end packed-switch
.end method
