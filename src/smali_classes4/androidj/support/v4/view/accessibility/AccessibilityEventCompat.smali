.class public final Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field private static final IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_d

    :cond_2a
    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .registers 4

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-virtual {p1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->getImpl()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public static asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 4

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v1, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method


# virtual methods
.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getAction(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 4

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setAction(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 4

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method
