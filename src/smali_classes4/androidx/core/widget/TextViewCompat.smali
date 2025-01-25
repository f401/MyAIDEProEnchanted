.class public final Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewCompat$AutoSizeTextType;,
        Landroidx/core/widget/TextViewCompat$OreoCallback;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_a
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getCompoundDrawableTintList(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;
    .registers 3

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v0, :cond_19

    check-cast p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundDrawablesView;->getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getCompoundDrawableTintMode(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v0, :cond_19

    check-cast p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundDrawablesView;->getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2c

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_2a

    :goto_1a
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_28

    aget-object v0, v2, v4

    aget-object v3, v2, v1

    aput-object v0, v2, v1

    aput-object v3, v2, v4

    :cond_28
    move-object v0, v2

    goto :goto_d

    :cond_2a
    move v0, v1

    goto :goto_1a

    :cond_2c
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_d
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .registers 4

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    :goto_b
    return v0

    :cond_c
    sget-boolean v0, Landroidx/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    if-nez v0, :cond_1a

    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    sput-boolean v2, Landroidx/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    :cond_1a
    sget-object v0, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3b

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v2, :cond_3b

    sget-boolean v0, Landroidx/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    if-nez v0, :cond_32

    const-string v0, "mMaximum"

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    sput-boolean v2, Landroidx/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    :cond_32
    sget-object v0, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3b

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    goto :goto_b

    :cond_3b
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .registers 4

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    :goto_b
    return v0

    :cond_c
    sget-boolean v0, Landroidx/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    if-nez v0, :cond_1a

    const-string v0, "mMinMode"

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    sput-boolean v2, Landroidx/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    :cond_1a
    sget-object v0, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3b

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v2, :cond_3b

    sget-boolean v0, Landroidx/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    if-nez v0, :cond_32

    const-string v0, "mMinimum"

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    sput-boolean v2, Landroidx/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    :cond_32
    sget-object v0, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3b

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    goto :goto_b

    :cond_3b
    const/4 v0, -0x1

    goto :goto_b
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .registers 3

    const/4 v0, 0x1

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p0, v1, :cond_5

    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_10

    const/4 v0, 0x2

    goto :goto_5

    :cond_10
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_16

    const/4 v0, 0x3

    goto :goto_5

    :cond_16
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_1c

    const/4 v0, 0x4

    goto :goto_5

    :cond_1c
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_22

    const/4 v0, 0x5

    goto :goto_5

    :cond_22
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_28

    const/4 v0, 0x6

    goto :goto_5

    :cond_28
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_5

    const/4 v0, 0x7

    goto :goto_5
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_d

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_c
    return-object v0

    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3d

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    if-eq v1, v0, :cond_37

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3a

    :cond_37
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :cond_3a
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :cond_3d
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_64

    :goto_43
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_66

    if-eqz v0, :cond_61

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :pswitch_4f  #0x7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :pswitch_52  #0x6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :pswitch_55  #0x5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :pswitch_58  #0x4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :pswitch_5b  #0x3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :pswitch_5e  #0x2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :cond_61
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_c

    :cond_64
    move v0, v1

    goto :goto_43

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_5e  #00000002
        :pswitch_5b  #00000003
        :pswitch_58  #00000004
        :pswitch_55  #00000005
        :pswitch_52  #00000006
        :pswitch_4f  #00000007
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_10

    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    new-instance v1, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_32

    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3f

    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    :cond_3f
    invoke-virtual {v0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    goto :goto_f
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_b} :catch_c

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TextViewCompat"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not retrieve value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " field."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TextViewCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_4
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_9
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0, p1, p2}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_9
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_9

    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {p0, p1}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_9
.end method

.method public static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .registers 4

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v0, :cond_c

    check-cast p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_c
.end method

.method public static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v0, :cond_c

    check-cast p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_c
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_a
    return-void

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_21

    move v1, v0

    :goto_18
    if-eqz v1, :cond_24

    move-object v0, p3

    :goto_1b
    if-eqz v1, :cond_26

    :goto_1d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    move v1, v0

    goto :goto_18

    :cond_24
    move-object v0, p1

    goto :goto_1b

    :cond_26
    move-object p1, p3

    goto :goto_1d

    :cond_28
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 8

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :goto_a
    return-void

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_21

    move v1, v0

    :goto_18
    if-eqz v1, :cond_24

    move v0, p3

    :goto_1b
    if-eqz v1, :cond_26

    :goto_1d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    move v1, v0

    goto :goto_18

    :cond_24
    move v0, p1

    goto :goto_1b

    :cond_26
    move p1, p3

    goto :goto_1d

    :cond_28
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_a
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_a
    return-void

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_21

    move v1, v0

    :goto_18
    if-eqz v1, :cond_24

    move-object v0, p3

    :goto_1b
    if-eqz v1, :cond_26

    :goto_1d
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    move v1, v0

    goto :goto_18

    :cond_24
    move-object v0, p1

    goto :goto_1b

    :cond_26
    move-object p1, p3

    goto :goto_1d

    :cond_28
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .registers 6

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_21

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_21
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :goto_23
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_c

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_c

    :cond_3c
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_23
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .registers 6

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_17

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_31

    :cond_17
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_30

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v0, p1, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_30
    return-void

    :cond_31
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_19
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .registers 4

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_16

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_16
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    .registers 4

    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getParams()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given text can not be applied to TextView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_9
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_11

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_40

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3c

    const/high16 v1, 0x40000000  # 2.0f

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_3c
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    :goto_3f
    return-void

    :cond_40
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_3f
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_10

    instance-of v0, p1, Landroidx/core/widget/TextViewCompat$OreoCallback;

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-object p1

    :cond_11
    new-instance v0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    invoke-direct {v0, p1, p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    move-object p1, v0

    goto :goto_10
.end method
