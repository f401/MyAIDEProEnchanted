.class public Lcom/androlua/LuaEditor;
.super Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# instance fields
.field private _index:I

.field private _inputingDoc:Lcom/myopicmobile/textwarrior/common/Document;

.field private _isWordWrap:Z

.field private _lastSelectedFile:Ljava/lang/String;

.field private finder:Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

.field private idx:I

.field private mContext:Landroid/content/Context;

.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    const v4, 0xff00ff

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTextSize(I)V

    invoke-virtual {p0, v2}, Lcom/androlua/LuaEditor;->setShowLineNumbers(Z)V

    invoke-virtual {p0, v2}, Lcom/androlua/LuaEditor;->setHighlightCurrentRow(Z)V

    invoke-virtual {p0, v5}, Lcom/androlua/LuaEditor;->setWordWrap(Z)V

    invoke-virtual {p0, v3}, Lcom/androlua/LuaEditor;->setAutoIndentWidth(I)V

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LanguageLua;->getInstance()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v0

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/Lexer;->setLanguage(Lcom/myopicmobile/textwarrior/common/Language;)V

    new-instance v0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setNavigationMethod(Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;)V

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setTextColor(I)V

    invoke-virtual {p0, v2}, Lcom/androlua/LuaEditor;->setTextHighligtColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x1010099
    .end array-data
.end method

.method static synthetic access$L1000002(Lcom/androlua/LuaEditor;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$Lcom$myopicmobile$textwarrior$android$FreeScrollingTextField$17()I
    .registers 1

    sget v0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    return v0
.end method

.method static synthetic access$Lcom$myopicmobile$textwarrior$android$FreeScrollingTextField$18(Lcom/androlua/LuaEditor;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    return-object v0
.end method

.method static synthetic access$Lcom$myopicmobile$textwarrior$android$FreeScrollingTextField$3(Lcom/androlua/LuaEditor;)Lcom/myopicmobile/textwarrior/common/DocumentProvider;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    return-object v0
.end method

.method static synthetic access$S1000002(Lcom/androlua/LuaEditor;Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$Scom$myopicmobile$textwarrior$android$FreeScrollingTextField$17(I)V
    .registers 1

    sput p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    return-void
.end method

.method static synthetic access$Scom$myopicmobile$textwarrior$android$FreeScrollingTextField$18(Lcom/androlua/LuaEditor;Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    return-void
.end method

.method static synthetic access$Scom$myopicmobile$textwarrior$android$FreeScrollingTextField$3(Lcom/androlua/LuaEditor;Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    return-void
.end method


# virtual methods
.method public addNames([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/LanguageLua;->getNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/common/LanguageLua;->setNames([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/Lexer;->setLanguage(Lcom/myopicmobile/textwarrior/common/Language;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    return-void
.end method

.method public findNext(Ljava/lang/String;)Z
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    iput v5, p0, Lcom/androlua/LuaEditor;->idx:I

    :cond_0
    new-instance v0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor;->finder:Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

    iget-object v2, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/androlua/LuaEditor;->selectText(Z)V

    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaEditor;->finder:Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v1

    iget v3, p0, Lcom/androlua/LuaEditor;->idx:I

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->length()I

    move-result v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor;->idx:I

    iget v0, p0, Lcom/androlua/LuaEditor;->idx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/androlua/LuaEditor;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    const-string v1, "\u672a\u627e\u5230"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v5, p0, Lcom/androlua/LuaEditor;->idx:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/androlua/LuaEditor;->idx:I

    iget-object v1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaEditor;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor;->idx:I

    iget-object v1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor;->idx:I

    iget v0, p0, Lcom/androlua/LuaEditor;->idx:I

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getSelectedText()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getSelectionStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/myopicmobile/textwarrior/common/DocumentProvider;
    .registers 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->createDocumentProvider()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    return-object v0
.end method

.method public gotoLine()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startGotoMode()V

    return-void
.end method

.method public gotoLine(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getLineOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setSelection(I)V

    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    invoke-virtual {p0, p2}, Lcom/androlua/LuaEditor;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0x7001

    invoke-static {v1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->selectAll()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->cut()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->copy()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->paste()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->onLayout(ZIIII)V

    iget v0, p0, Lcom/androlua/LuaEditor;->_index:I

    if-eqz v0, :cond_0

    if-lez p4, :cond_0

    iget v0, p0, Lcom/androlua/LuaEditor;->_index:I

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaEditor;->_index:I

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaEditor;->_lastSelectedFile:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Document;

    invoke-direct {v1, p0}, Lcom/myopicmobile/textwarrior/common/Document;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iput-object v1, p0, Lcom/androlua/LuaEditor;->_inputingDoc:Lcom/myopicmobile/textwarrior/common/Document;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->_inputingDoc:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->isWordWrap()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/common/Document;->setWordWrap(Z)V

    new-instance v1, Lcom/myopicmobile/textwarrior/common/ReadTask;

    invoke-direct {v1, p0, v0}, Lcom/myopicmobile/textwarrior/common/ReadTask;-><init>(Lcom/androlua/LuaEditor;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/ReadTask;->start()V

    return-void
.end method

.method public redo()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->createDocumentProvider()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->redo()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    :cond_0
    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public search()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startFindMode()V

    return-void
.end method

.method public setBackgoudColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setBasewordColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NAME:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setCommentColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->COMMENT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setDark(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorSchemeDark;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/ColorSchemeDark;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setColorScheme(Lcom/myopicmobile/textwarrior/common/ColorScheme;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setColorScheme(Lcom/myopicmobile/textwarrior/common/ColorScheme;)V

    goto :goto_0
.end method

.method public setKeywordColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->KEYWORD:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setPanelBackgroundColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setBackgroundColor(I)V

    return-void
.end method

.method public setPanelTextColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->setTextColor(I)V

    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/androlua/LuaEditor;->_index:I

    goto :goto_0
.end method

.method public setStringColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->STRING:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Document;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/common/Document;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iget-boolean v1, p0, Lcom/androlua/LuaEditor;->_isWordWrap:Z

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Document;->setWordWrap(Z)V

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {v1, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;-><init>(Lcom/myopicmobile/textwarrior/common/Document;)V

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setDocumentProvider(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/androlua/LuaEditor;->replaceText(IILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setTextHighligtColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setUserwordColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LITERAL:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method

.method public setWordWrap(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iput-boolean p1, p0, Lcom/androlua/LuaEditor;->_isWordWrap:Z

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setWordWrap(Z)V

    return-void
.end method

.method public startFindMode()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaEditor$100000005;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$100000005;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startGotoMode()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaEditor$100000002;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$100000002;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public undo()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->createDocumentProvider()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->undo()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    :cond_0
    return-void
.end method
