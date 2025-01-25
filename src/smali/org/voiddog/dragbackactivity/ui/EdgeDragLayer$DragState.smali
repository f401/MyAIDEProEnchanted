.class final enum Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
.super Ljava/lang/Enum;
.source "EdgeDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final enum DragBackEnd:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final enum DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final enum DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final enum IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field public static final enum PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;


# direct methods
.method private static synthetic $values()[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
    .registers 3

    .line 378
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v1, 0x0

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragBackEnd:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 379
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "DragStart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 380
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "IsDragging"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 381
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "DragCancel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 382
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "PlayAnim"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 383
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const-string v1, "DragBackEnd"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragBackEnd:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 378
    invoke-static {}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->$values()[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    move-result-object v0

    sput-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
    .registers 2

    .line 378
    const-class v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    return-object p0
.end method

.method public static values()[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;
    .registers 1

    .line 378
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->$VALUES:[Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    invoke-virtual {v0}, [Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    return-object v0
.end method
