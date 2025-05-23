.class public final Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;,
        Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;,
        Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl;,
        Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;,
        Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final DEFAULT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field private static final IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl;

    invoke-direct {v0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;

    invoke-direct {v0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;

    invoke-direct {v0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    goto :goto_d

    :cond_2a
    new-instance v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    :pswitch_3  #0x3, 0x5, 0x6, 0x7
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    :pswitch_6  #0x1
    const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    goto :goto_5

    :pswitch_9  #0x2
    const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    goto :goto_5

    :pswitch_c  #0x4
    const-string v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    goto :goto_5

    :pswitch_f  #0x8
    const-string v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6  #00000001
        :pswitch_9  #00000002
        :pswitch_3  #00000003
        :pswitch_c  #00000004
        :pswitch_3  #00000005
        :pswitch_3  #00000006
        :pswitch_3  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    if-lez p0, :cond_43

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
    sparse-switch v1, :sswitch_data_4e

    goto :goto_b

    :sswitch_25
    const-string v1, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :sswitch_2b
    const-string v1, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :sswitch_31
    const-string v1, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :sswitch_37
    const-string v1, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :sswitch_3d
    const-string v1, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_43
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_31
        0x4 -> :sswitch_2b
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_37
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_18

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :sswitch_5
    const-string v0, "DEFAULT"

    goto :goto_4

    :sswitch_8
    const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    goto :goto_4

    :sswitch_b
    const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    goto :goto_4

    :sswitch_e
    const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    goto :goto_4

    :sswitch_11
    const-string v0, "FLAG_REPORT_VIEW_IDS"

    goto :goto_4

    :sswitch_14
    const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    goto :goto_4

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x4 -> :sswitch_b
        0x8 -> :sswitch_e
        0x10 -> :sswitch_11
        0x20 -> :sswitch_14
    .end sparse-switch
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
