.class enum Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
.super Ljava/lang/Enum;
.source "DragBackHintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/voiddog/dragbackactivity/ui/DragBackHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field public static final ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field public static final NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field public static final ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const-string v1, "NotShowCircle"

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const-string v1, "ShowCircle"

    invoke-direct {v0, v1, v3}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const-string v1, "ExpandCircle"

    invoke-direct {v0, v1, v4}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
    .registers 5

    .line 218
    sget-object v1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
    .registers 1

    .line 218
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    invoke-virtual {v0}, [Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    return-object v0
.end method
