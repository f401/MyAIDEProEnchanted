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
    .registers 6

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->context:Landroid/content/Context;

    .line 353
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->view:Landroid/widget/ScrollView;

    .line 354
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 355
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 356
    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    .line 359
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "包名（可空）"

    goto :goto_35

    :cond_33
    const-string v2, "Package name (can be empty)"

    :goto_35
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 361
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    .line 362
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "类名（可空）"

    goto :goto_4a

    :cond_48
    const-string v2, "Class name (can be empty)"

    :goto_4a
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    .line 365
    const-string p1, "json"

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 368
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 369
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 395
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->view:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$DialogView;->view:Landroid/widget/ScrollView;

    return-object v0
.end method
