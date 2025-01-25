.class public Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;
    }
.end annotation


# static fields
.field private static _globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;


# instance fields
.field private _adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

.field private _autoCompletePanel:Landroid/widget/ListPopupWindow;

.field private _backgroundColor:I

.field private _constraint:Ljava/lang/CharSequence;

.field private _context:Landroid/content/Context;

.field private _filter:Landroid/widget/Filter;

.field private _height:I

.field private _horizontal:I

.field private _textColor:I

.field private _textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

.field private _verticalOffset:I

.field private gd:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->getInstance()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->initAutoCompletePanel()V

    return-void
.end method

.method static synthetic access$1000015(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setHeight(I)V

    return-void
.end method

.method static synthetic access$1000016(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setHorizontalOffset(I)V

    return-void
.end method

.method static synthetic access$1000017(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setVerticalOffset(I)V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-object v0
.end method

.method static synthetic access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;
    .registers 1

    sget-object v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_constraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$L1000012(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textColor:I

    return v0
.end method

.method static synthetic access$S1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/myopicmobile/textwarrior/common/Language;)V
    .registers 1

    sput-object p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_constraint:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$S1000012(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V
    .registers 2

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textColor:I

    return-void
.end method

.method public static getLanguage()Lcom/myopicmobile/textwarrior/common/Language;
    .registers 2

    const-class v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    const-class v1, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    const-class v1, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    monitor-exit v1

    throw v0
.end method

.method private initAutoCompletePanel()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v4, 0xff00ff

    const/4 v3, 0x1

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_context:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;-><init>(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_filter:Landroid/widget/Filter;

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setHeight(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_7e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setTextColor(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;

    invoke-direct {v1, p0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$100000000;-><init>(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_7e
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private setHeight(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_height:I

    if-eq v0, p1, :cond_b

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_height:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_b
    return-void
.end method

.method private setHorizontalOffset(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_horizontal:I

    if-eq v1, v0, :cond_17

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_horizontal:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_17
    return-void
.end method

.method public static setLanguage(Lcom/myopicmobile/textwarrior/common/Language;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/Language;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    const-class v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v0

    const-class v1, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    monitor-exit v1

    throw v0
.end method

.method private setVerticalOffset(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    if-le p1, v0, :cond_13

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->scrollBy(II)V

    move p1, v0

    :cond_13
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_verticalOffset:I

    if-eq v0, p1, :cond_1e

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_verticalOffset:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_d
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_backgroundColor:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_textColor:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWidth(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    return-void
.end method

.method public show()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_d
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_autoCompletePanel:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    return-void
.end method

.method public update(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_adapter:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->restart()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->_filter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
