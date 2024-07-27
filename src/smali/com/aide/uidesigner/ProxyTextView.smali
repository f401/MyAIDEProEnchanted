.class public Lcom/aide/uidesigner/ProxyTextView;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z = false
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z = false
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final INPUTTYPE_date:I = 0x14

.field public static final INPUTTYPE_datetime:I = 0x4

.field public static final INPUTTYPE_none:I = 0x0

.field public static final INPUTTYPE_number:I = 0x2

.field public static final INPUTTYPE_numberDecimal:I = 0x2002

.field public static final INPUTTYPE_numberPassword:I = 0x12

.field public static final INPUTTYPE_numberSigned:I = 0x1002

.field public static final INPUTTYPE_phone:I = 0x3

.field public static final INPUTTYPE_text:I = 0x1

.field public static final INPUTTYPE_textAutoComplete:I = 0x10001

.field public static final INPUTTYPE_textAutoCorrect:I = 0x8001

.field public static final INPUTTYPE_textCapCharacters:I = 0x1001

.field public static final INPUTTYPE_textCapSentences:I = 0x4001

.field public static final INPUTTYPE_textCapWords:I = 0x2001

.field public static final INPUTTYPE_textEmailAddress:I = 0x21

.field public static final INPUTTYPE_textEmailSubject:I = 0x31

.field public static final INPUTTYPE_textFilter:I = 0xb1

.field public static final INPUTTYPE_textImeMultiLine:I = 0x40001

.field public static final INPUTTYPE_textLongMessage:I = 0x51

.field public static final INPUTTYPE_textMultiLine:I = 0x20001

.field public static final INPUTTYPE_textNoSuggestions:I = 0x80001

.field public static final INPUTTYPE_textPassword:I = 0x81

.field public static final INPUTTYPE_textPersonName:I = 0x61

.field public static final INPUTTYPE_textPhonetic:I = 0xc1

.field public static final INPUTTYPE_textPostalAddress:I = 0x71

.field public static final INPUTTYPE_textShortMessage:I = 0x41

.field public static final INPUTTYPE_textUri:I = 0x11

.field public static final INPUTTYPE_textVisiblePassword:I = 0x91

.field public static final INPUTTYPE_textWebEditText:I = 0xa1

.field public static final INPUTTYPE_textWebEmailAddress:I = 0xd1

.field public static final INPUTTYPE_textWebPassword:I = 0xe1

.field public static final INPUTTYPE_time:I = 0x24

.field public static final TEXTSTYLE_bold:I = 0x1

.field public static final TEXTSTYLE_italic:I = 0x2

.field public static final TEXTSTYLE_normal:I = 0x0

.field public static final TYPEFACE_MONOSPACE:I = 0x3

.field public static final TYPEFACE_NORMAL:I = 0x0

.field public static final TYPEFACE_SANS:I = 0x1

.field public static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private fontFamily:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x3994c7d4f6414cb0L
    .end annotation
.end field

.field private shadowColor:I
    .annotation runtime Labcd/ru;
        field = 0x88ccbbdd3d040c0L
    .end annotation
.end field

.field private shadowDx:F
    .annotation runtime Labcd/ru;
        field = -0x78623ff1bdabda1L
    .end annotation
.end field

.field private shadowDy:F
    .annotation runtime Labcd/ru;
        field = -0x7863613dba553d4L
    .end annotation
.end field

.field private shadowRadius:F
    .annotation runtime Labcd/ru;
        field = 0x10a97783e207485L
    .end annotation
.end field

.field private textStyle:I
    .annotation runtime Labcd/ru;
        field = 0x36a1cd8aad51b83fL
    .end annotation
.end field

.field private final textView:Landroid/widget/TextView;
    .annotation runtime Labcd/ru;
        field = 0xf765ec56d16cf3fL
    .end annotation
.end field

.field private typeface:I
    .annotation runtime Labcd/ru;
        field = -0x344948688b252ec0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x4a9b4f3e2a0c1b75L    # -1.728147661661855E-51

    const-class v0, Lcom/aide/uidesigner/ProxyTextView;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 10

    const-wide v6, 0x41863839cbcfe811L    # 4.659794547651685E7

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x41863839cbcfe811L    # 4.659794547651685E7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/uidesigner/ProxyTextView;->typeface:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    iput-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method

.method private updateFont()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x203b6635ddc6b428L
    .end annotation

    const-wide v4, 0x26ed4ee87b7a2080L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26ed4ee87b7a2080L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    iget v1, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/aide/uidesigner/ProxyTextView;->typeface:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    iget v2, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateShadow()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x27d093a830ecf33fL
    .end annotation

    const-wide v6, 0x16aab0a7da85c84dL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16aab0a7da85c84dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowRadius:F

    iget v2, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDx:F

    iget v3, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDy:F

    iget v4, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public setFontFamily(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x131bbeaad34109a9L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x131bbeaad34109a9L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateFont()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setInputType(I)V
    .registers 6

    const-wide v2, 0x158c5a5470eea28fL    # 7.064959825826254E-205

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x158c5a5470eea28fL    # 7.064959825826254E-205

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setShadowColor(I)V
    .registers 6

    const-wide v2, -0x321b5f28cc75430L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x321b5f28cc75430L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowColor:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setShadowDx(F)V
    .registers 8

    const-wide v4, 0x6bd2d869fa9ca71L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0x6bd2d869fa9ca71L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDx:F

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setShadowDy(F)V
    .registers 8

    const-wide v4, 0xac81d6fecc83cf4L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0xac81d6fecc83cf4L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDy:F

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setShadowRadius(F)V
    .registers 8

    const-wide v4, 0xfffc17886e94bbbL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0xfffc17886e94bbbL

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowRadius:F

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setTextAppearance(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x395e0e37678534bbL    # 2.3153940325493956E-32

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x395e0e37678534bbL    # 2.3153940325493956E-32

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v0, "?android:attr/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Landroid/R$attr;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "@android:style/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/R$style;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public setTextStyle(I)V
    .registers 6

    const-wide v2, -0x2332a398b4a64c45L    # -1.0926426253021655E139

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2332a398b4a64c45L    # -1.0926426253021655E139

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateFont()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setTypeface(I)V
    .registers 6

    const-wide v2, 0x1f5806211188b080L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f5806211188b080L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->typeface:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateFont()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
