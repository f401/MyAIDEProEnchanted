.class final enum Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
.super Ljava/lang/Enum;
.source "DragBackHintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/voiddog/dragbackactivity/ui/DragBackHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field public static final enum ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field public static final enum NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field public static final enum ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;


# direct methods
.method private static synthetic $values()[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
    .registers 3

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const/4 v1, 0x0

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 215
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const-string v1, "NotShowCircle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 216
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const-string v1, "ShowCircle"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 217
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    const-string v1, "ExpandCircle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 214
    invoke-static {}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->$values()[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    move-result-object v0

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
    .registers 2

    .line 214
    const-class v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    return-object p0
.end method

.method public static values()[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
    .registers 1

    .line 214
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    invoke-virtual {v0}, [Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    return-object v0
.end method
