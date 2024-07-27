.class enum Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
.super Ljava/lang/Enum;
.source "EdgeDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final DragBackEnd:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;


# direct methods
.method static final constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "DragStart"

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "IsDragging"

    invoke-direct {v0, v1, v3}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "DragCancel"

    invoke-direct {v0, v1, v4}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "PlayAnim"

    invoke-direct {v0, v1, v5}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "DragBackEnd"

    invoke-direct {v0, v1, v6}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragBackEnd:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragBackEnd:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
    .registers 5

    .line 384
    sget-object v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
    .registers 1

    .line 384
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    invoke-virtual {v0}, [Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    return-object v0
.end method
