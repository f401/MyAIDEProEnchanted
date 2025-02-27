.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/BidiFormatter$Builder;,
        Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x2

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    new-instance v0, Landroidx/core/text/BidiFormatter;

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    new-instance v0, Landroidx/core/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    return-void
.end method

.method constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    iput p2, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    iput-object p3, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .registers 3

    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v0

    return v0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .registers 3

    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroidx/core/text/BidiFormatter;
    .registers 1

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroidx/core/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroidx/core/text/BidiFormatter;
    .registers 2

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Landroidx/core/text/BidiFormatter;
    .registers 2

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->build()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method static isRtlLocale(Ljava/util/Locale;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private markAfter(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    :cond_16
    sget-object v0, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    :goto_18
    return-object v0

    :cond_19
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    :cond_26
    sget-object v0, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_18

    :cond_29
    const-string v0, ""

    goto :goto_18
.end method

.method private markBefore(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    :cond_16
    sget-object v0, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    :goto_18
    return-object v0

    :cond_19
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    :cond_26
    sget-object v0, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_18

    :cond_29
    const-string v0, ""

    goto :goto_18
.end method


# virtual methods
.method public getStereoReset()Z
    .registers 2

    iget v0, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .registers 5

    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isRtlContext()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    return v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter;->getStereoReset()Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p3, :cond_25

    if-eqz v2, :cond_47

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_1e
    invoke-direct {p0, p1, v0}, Landroidx/core/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_25
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v2, v0, :cond_4d

    if-eqz v2, :cond_4a

    const/16 v0, 0x202b

    :goto_2d
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v0, 0x202c

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_38
    if-eqz p3, :cond_45

    if-eqz v2, :cond_51

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_3e
    invoke-direct {p0, p1, v0}, Landroidx/core/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_45
    move-object v0, v1

    goto :goto_3

    :cond_47
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1e

    :cond_4a
    const/16 v0, 0x202a

    goto :goto_2d

    :cond_4d
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_38

    :cond_51
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_3e
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
