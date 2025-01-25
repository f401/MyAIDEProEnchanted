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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/ProxyTextView;

    const-wide v1, -0x4a9b4f3e2a0c1b75L  # -1.728147661661855E-51

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const-wide v0, 0x41863839cbcfe811L  # 4.659794547651685E7

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    iput v3, p0, Lcom/aide/uidesigner/ProxyTextView;->typeface:I

    iput-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method private updateFont()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x203b6635ddc6b428L
    .end annotation

    const-wide v0, 0x26ed4ee87b7a2080L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget v3, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v3, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_1e
    const/4 v2, 0x0

    :cond_1f
    iget v3, p0, Lcom/aide/uidesigner/ProxyTextView;->typeface:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    goto :goto_33

    :cond_2b
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_33

    :cond_2e
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_33

    :cond_31
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_33
    iget-object v3, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    iget v4, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method private updateShadow()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x27d093a830ecf33fL
    .end annotation

    const-wide v0, 0x16aab0a7da85c84dL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    iget v3, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowRadius:F

    iget v4, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDx:F

    iget v5, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDy:F

    iget v6, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowColor:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method


# virtual methods
.method public setFontFamily(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x131bbeaad34109a9L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/uidesigner/ProxyTextView;->fontFamily:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateFont()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setInputType(I)V
    .registers 6

    const-wide v0, 0x158c5a5470eea28fL  # 7.064959825826254E-205

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setInputType(I)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setShadowColor(I)V
    .registers 6

    const-wide v0, -0x321b5f28cc75430L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowColor:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setShadowDx(F)V
    .registers 6

    const-wide v0, 0x6bd2d869fa9ca71L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDx:F

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public setShadowDy(F)V
    .registers 6

    const-wide v0, 0xac81d6fecc83cf4L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowDy:F

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public setShadowRadius(F)V
    .registers 6

    const-wide v0, 0xfffc17886e94bbbL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->shadowRadius:F

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateShadow()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public setTextAppearance(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x395e0e37678534bbL  # 2.3153940325493956E-32

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_7f

    :cond_c
    :try_start_c
    const-string v0, "?android:attr/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    const-class v0, Landroid/R$attr;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_7e

    :cond_4d
    const-string v0, "@android:style/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-class v0, Landroid/R$style;

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_7c
    .catchall {:try_start_c .. :try_end_7c} :catchall_7d

    goto :goto_7e

    :catchall_7d
    move-exception p1

    :cond_7e
    :goto_7e
    return-void

    :catchall_7f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_87

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    throw v2
.end method

.method public setTextStyle(I)V
    .registers 6

    const-wide v0, -0x2332a398b4a64c45L  # -1.0926426253021655E139

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->textStyle:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateFont()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setTypeface(I)V
    .registers 6

    const-wide v0, 0x1f5806211188b080L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyTextView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyTextView;->typeface:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyTextView;->updateFont()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyTextView;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
