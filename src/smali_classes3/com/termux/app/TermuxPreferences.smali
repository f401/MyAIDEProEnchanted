.class final Lcom/termux/app/TermuxPreferences;
.super Ljava/lang/Object;
.source "TermuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxPreferences$AsciiBellBehaviour;,
        Lcom/termux/app/TermuxPreferences$KeyboardShortcut;
    }
.end annotation


# static fields
.field static final BELL_BEEP:I = 0x2

.field static final BELL_IGNORE:I = 0x3

.field static final BELL_VIBRATE:I = 0x1

.field private static final CURRENT_SESSION_KEY:Ljava/lang/String; = "current_session"

.field private static final FONTSIZE_KEY:Ljava/lang/String; = "fontsize"

.field private static final FULLSCREEN_KEY:Ljava/lang/String; = "fullscreen"

.field private static final MAX_FONTSIZE:I = 0x100

.field public static final SHORTCUT_ACTION_CREATE_SESSION:I = 0x1

.field public static final SHORTCUT_ACTION_NEXT_SESSION:I = 0x2

.field public static final SHORTCUT_ACTION_PREVIOUS_SESSION:I = 0x3

.field public static final SHORTCUT_ACTION_RENAME_SESSION:I = 0x4

.field private static final SHOW_EXTRA_KEYS_KEY:Ljava/lang/String; = "show_extra_keys"


# instance fields
.field private final MIN_FONTSIZE:I

.field mBackIsEscape:Z

.field mBellBehaviour:I
    .annotation runtime Lcom/termux/app/TermuxPreferences$AsciiBellBehaviour;
    .end annotation
.end field

.field private mFontSize:I

.field private mFullScreen:Z

.field mShowExtraKeys:Z

.field final shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/termux/app/TermuxPreferences$KeyboardShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 50
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxPreferences;->reloadFromProperties(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    int-to-float v0, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 56
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    .line 58
    const-string v2, "fullscreen"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mFullScreen:Z

    .line 59
    const-string v2, "show_extra_keys"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    .line 62
    const/16 v2, 0xc

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 64
    rem-int/lit8 v2, v0, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 67
    :cond_0
    :try_start_0
    const-string v2, "fontsize"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :goto_0
    iget v0, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    iget v1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 69
    :goto_1
    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static getCurrentSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;
    .registers 6

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_session"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 115
    const/4 v0, 0x0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    :cond_0
    return-object v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    .line 113
    iget-object v4, v0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private parseAction(Ljava/lang/String;ILjava/util/Properties;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 175
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    array-length v0, v1

    if-ne v0, v3, :cond_2

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_1
    array-length v2, v1

    if-ne v2, v3, :cond_1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 180
    :cond_1
    const-string v0, "termux"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Keyboard shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' is not Ctrl+<something>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    :cond_4
    const-string v0, "termux"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Keyboard shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' is not Ctrl+<something>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 194
    :goto_2
    iget-object v1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    new-instance v2, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    invoke-direct {v2, v0, p2}, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method static storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_session"

    iget-object v2, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method changeFontSize(Landroid/content/Context;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .line 98
    iget v1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 99
    iget v0, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    iget v1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 101
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fontsize"

    iget v2, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 98
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getFontSize()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    return v0
.end method

.method isFullScreen()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mFullScreen:Z

    return v0
.end method

.method isShowExtraKeys()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    return v0
.end method

.method public reloadFromProperties(Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    .line 120
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    const-string v2, ".termux/termux.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    const-string v2, ".config/termux/termux.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 126
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_1
    :try_start_3
    const-string v0, "bell-character"

    const-string v1, "vibrate"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_5

    .line 133
    const/4 v0, 0x2

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    .line 143
    :goto_0
    const-string v0, "escape"

    const-string v1, "back-key"

    const-string v3, "back"

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    .line 145
    iget-object v0, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    const-string v0, "shortcut.create-session"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 147
    const-string v0, "shortcut.next-session"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 148
    const-string v0, "shortcut.previous-session"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 149
    const-string v0, "shortcut.rename-session"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 152
    :goto_1
    return-void

    .line 127
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_3

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error loading properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    const-string v1, "termux"

    const-string v2, "Error loading props"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    :cond_3
    if-eq v1, v0, :cond_4

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 134
    :cond_5
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_6

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    goto :goto_0

    .line 139
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method

.method setFullScreen(Landroid/content/Context;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .line 79
    iput-boolean p2, p0, Lcom/termux/app/TermuxPreferences;->mFullScreen:Z

    .line 80
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method toggleShowExtraKeys(Landroid/content/Context;)Z
    .registers 5

    .line 88
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_extra_keys"

    iget-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
