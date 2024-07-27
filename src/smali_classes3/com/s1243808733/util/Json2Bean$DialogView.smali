.class Lcom/s1243808733/util/Json2Bean$DialogView;
.super Ljava/lang/Object;
.source "Json2Bean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/Json2Bean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogView"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public input_className:Landroid/widget/EditText;

.field public input_json:Landroid/widget/EditText;

.field public input_package:Landroid/widget/EditText;

.field private view:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/16 v2, 0x18

    const/4 v3, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->context:Landroid/content/Context;

    .line 357
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->view:Landroid/widget/ScrollView;

    .line 358
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 359
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    int-to-float v0, v2

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v0, v6, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    .line 363
    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5305\u540d\uff08\u53ef\u7a7a\uff09"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    .line 366
    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u7c7b\u540d\uff08\u53ef\u7a7a\uff09"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 368
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    .line 369
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    const-string v2, "json"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 372
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 373
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 378
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-static {v2}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v3

    const-string/jumbo v0, "\u83b7\u53d6\u4e13\u4e1a\u7248\u672c"

    const-string v4, "Get the professional version"

    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->setUnderline()Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->setBoldItalic()Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/blankj/utilcode/util/SpanUtils;->setForegroundColor(I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/util/Json2Bean$DialogView$100000015;

    invoke-direct {v3, p0}, Lcom/s1243808733/util/Json2Bean$DialogView$100000015;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;)V

    invoke-virtual {v0, v3}, Lcom/blankj/utilcode/util/SpanUtils;->setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    .line 394
    const/4 v0, 0x5

    int-to-float v0, v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 395
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->view:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    return-void

    .line 363
    :cond_0
    const-string v0, "Package name (can be empty)"

    goto :goto_0

    .line 366
    :cond_1
    const-string v0, "Class name (can be empty)"

    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->view:Landroid/widget/ScrollView;

    return-object v0
.end method
