.class public Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;,
        Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;,
        Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    goto :goto_d
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 1

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    invoke-interface {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->obtain()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    goto :goto_3
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    :pswitch_6  #0x1
    const-string v0, "TYPE_APPLICATION"

    goto :goto_5

    :pswitch_9  #0x2
    const-string v0, "TYPE_INPUT_METHOD"

    goto :goto_5

    :pswitch_c  #0x3
    const-string v0, "TYPE_SYSTEM"

    goto :goto_5

    :pswitch_f  #0x4
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6  #00000001
        :pswitch_9  #00000002
        :pswitch_c  #00000003
        :pswitch_f  #00000004
    .end packed-switch
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    check-cast p1, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v1, :cond_1c

    iget-object v1, p1, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_1c
    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    iget-object v2, p1, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4
.end method

.method public getAnchor()Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getAnchor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 4

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 4

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLayer()I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getLayer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParent()Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isAccessibilityFocused()Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v4, "AccessibilityWindowInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v5

    invoke-static {v5}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", layer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", focused="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", active="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasParent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_6f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasChildren="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result v4

    if-lez v4, :cond_8d

    :goto_7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    move v0, v2

    goto :goto_6f

    :cond_8d
    move v1, v2

    goto :goto_7e
.end method
