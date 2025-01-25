.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    new-instance v0, Landroidx/core/text/util/LinkifyCompat$1;

    invoke-direct {v0}, Landroidx/core/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_15
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_a
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :goto_9
    return-void

    :cond_a
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_9
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    goto :goto_9
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    if-nez p1, :cond_12

    move v0, v6

    goto :goto_d

    :cond_12
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_2b

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_2b
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_33

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_54

    sget-object v2, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v6

    const-string v1, "https://"

    aput-object v1, v3, v7

    const/4 v1, 0x2

    const-string v8, "rtsp://"

    aput-object v8, v3, v1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_54
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_65

    sget-object v2, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v7, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v6

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_65
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6c

    invoke-static {v0, p0}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_6c
    invoke-static {v0, p0}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_77

    move v0, v6

    goto :goto_d

    :cond_77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7b
    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v2, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v2, :cond_7b

    iget-object v2, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v3, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v2, v3, v0, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_7b

    :cond_95
    move v0, v7

    goto/16 :goto_d
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    goto :goto_b
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    goto :goto_a
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    :cond_c
    return v0

    :cond_d
    if-nez p2, :cond_11

    const-string p2, ""

    :cond_11
    if-eqz p3, :cond_16

    array-length v0, p3

    if-ge v0, v3, :cond_18

    :cond_16
    sget-object p3, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    :cond_18
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v0, v1

    :goto_26
    array-length v2, p3

    if-ge v0, v2, :cond_3c

    aget-object v5, p3, v0

    add-int/lit8 v2, v0, 0x1

    if-nez v5, :cond_35

    const-string v0, ""

    :goto_31
    aput-object v0, v4, v2

    move v0, v2

    goto :goto_26

    :cond_35
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_3c
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v0, v1

    :cond_41
    :goto_41
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    if-eqz p4, :cond_64

    invoke-interface {p4, p0, v6, v7}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    :goto_55
    if-eqz v2, :cond_41

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    move v0, v3

    goto :goto_41

    :cond_64
    move v2, v3

    goto :goto_55
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    if-nez p1, :cond_11

    move v0, v1

    goto :goto_c

    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_28

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v0, v2

    goto :goto_c

    :cond_26
    move v0, v1

    goto :goto_c

    :cond_28
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_c

    :cond_3a
    move v0, v1

    goto :goto_c
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 6

    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1a
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iput v1, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iput v2, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_32
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    :try_start_5
    invoke-static {v1}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v4}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v3, v0

    iput v3, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    add-int/2addr v0, v5

    iput v0, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_25} :catch_43

    move-result-object v1

    :try_start_26
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2b} :catch_45
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_2b} :catch_43

    move-result-object v2

    :try_start_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_42} :catch_43

    goto :goto_5

    :catch_43
    move-exception v0

    goto :goto_11

    :catch_45
    move-exception v2

    goto :goto_5
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_65

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    move v9, v2

    :goto_9
    array-length v3, p1

    if-ge v9, v3, :cond_63

    aget-object v3, p1, v9

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5f

    aget-object v6, p1, v9

    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v0

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_48
    :goto_48
    if-nez v1, :cond_5e

    array-length v1, p1

    if-lez v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5e
    return-object v0

    :cond_5f
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_9

    :cond_63
    move v1, v2

    goto :goto_48

    :cond_65
    move-object v0, p0

    goto :goto_8
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    move v1, v2

    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_31

    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    aget-object v4, v0, v1

    iput-object v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_31
    sget-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v0

    :goto_3b
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_96

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget v6, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v7, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v6, v7, :cond_94

    iget v6, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v6, v7, :cond_94

    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v6, v7, :cond_76

    :cond_5f
    move v1, v4

    :goto_60
    if-eq v1, v5, :cond_94

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v0, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-eqz v0, :cond_6f

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_6f
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3b

    :cond_76
    iget v6, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v8, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-gt v6, v7, :cond_5f

    iget v6, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v0, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int v0, v6, v0

    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int v1, v6, v1

    if-ge v0, v1, :cond_92

    move v1, v2

    goto :goto_60

    :cond_92
    move v1, v5

    goto :goto_60

    :cond_94
    move v2, v4

    goto :goto_3b

    :cond_96
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
