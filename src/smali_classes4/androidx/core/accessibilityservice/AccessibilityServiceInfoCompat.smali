.class public final Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const-string v0, "UNKNOWN"

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    goto :goto_f

    :cond_13
    const-string v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    goto :goto_f

    :cond_16
    const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    goto :goto_f

    :cond_19
    const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    goto :goto_f
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_b
    if-lez p0, :cond_4f

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int v1, v3, v1

    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_21

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    if-eq v1, v3, :cond_49

    const/4 v2, 0x2

    if-eq v1, v2, :cond_43

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x8

    if-eq v1, v2, :cond_37

    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    const-string v1, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_37
    const-string v1, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_3d
    const-string v1, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_43
    const-string v1, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_49
    const-string v1, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_4f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static flagToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    goto :goto_16

    :cond_1a
    const-string v0, "FLAG_REPORT_VIEW_IDS"

    goto :goto_16

    :cond_1d
    const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    goto :goto_16

    :cond_20
    const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    goto :goto_16

    :cond_23
    const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    goto :goto_16

    :cond_26
    const-string v0, "DEFAULT"

    goto :goto_16
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
