.class final Lcom/termux/app/TermuxPreferences;
.super Ljava/lang/Object;
.source "TermuxPreferences.java"


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

.field private mFontSize:I

.field private mFullScreen:Z

.field mShowExtraKeys:Z

.field final shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/TermuxPreferences$KeyboardShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 50
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxPreferences;->reloadFromProperties(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x40800000  # 4.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 56
    iput v2, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    .line 58
    const-string v2, "fullscreen"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mFullScreen:Z

    .line 59
    const-string v2, "show_extra_keys"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    .line 62
    const/high16 v2, 0x41400000  # 12.0f

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 64
    rem-int/lit8 v2, p1, 0x2

    if-ne v2, v0, :cond_48

    add-int/lit8 p1, p1, -0x1

    .line 67
    :cond_48
    :try_start_48
    const-string v0, "fontsize"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_58} :catch_5b
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_58} :catch_59

    goto :goto_5e

    .line 69
    :catch_59
    move-exception v0

    goto :goto_5c

    :catch_5b
    move-exception v0

    :goto_5c
    iput p1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 71
    :goto_5e
    iget p1, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    iget v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    return-void
.end method

.method static getCurrentSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;
    .registers 6

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_session"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_31

    .line 112
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v3}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/terminal/TerminalSession;

    .line 113
    iget-object v4, v3, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseAction(Ljava/lang/String;ILjava/util/Properties;)V
    .registers 12

    .line 175
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 177
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v0, "\\+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 178
    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    aget-object v0, p3, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 179
    :goto_22
    array-length v3, p3

    const-string v4, "termux"

    const-string v5, "\' is not Ctrl+<something>"

    const-string v6, "Keyboard shortcut \'"

    if-ne v3, v2, :cond_89

    const/4 v3, 0x0

    aget-object p3, p3, v3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v7, "ctrl"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v2, :cond_47

    goto :goto_89

    .line 184
    :cond_47
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 186
    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_6b

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_6b

    .line 191
    :cond_62
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    goto :goto_7e

    .line 188
    :cond_6b
    :goto_6b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    new-instance v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    invoke-direct {v0, p3, p2}, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 180
    :cond_89
    :goto_89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "current_session"

    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method changeFontSize(Landroid/content/Context;Z)V
    .registers 5

    .line 98
    iget v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, -0x1

    :goto_7
    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 99
    iget p2, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 101
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "fontsize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
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
    .registers 9

    .line 120
    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/termux/app/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    const-string v3, ".termux/termux.properties"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 122
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/termux/app/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    const-string v3, ".config/termux/termux.properties"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    :cond_19
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 126
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_a5

    .line 127
    :try_start_2f
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    .line 128
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_a5

    goto :goto_40

    :catchall_36
    move-exception v1

    .line 126
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v2

    :try_start_3c
    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3f
    throw v1

    .line 131
    :cond_40
    :goto_40
    const-string v1, "bell-character"

    const-string v3, "vibrate"

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x46f4022e

    if-eq v3, v4, :cond_61

    const v4, 0x2e142e

    if-eq v3, v4, :cond_57

    :cond_56
    goto :goto_6b

    :cond_57
    const-string v3, "beep"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    goto :goto_6c

    :cond_61
    const-string v3, "ignore"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    goto :goto_6c

    :goto_6b
    const/4 v1, -0x1

    :goto_6c
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_78

    if-eq v1, v0, :cond_75

    .line 139
    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    goto :goto_7a

    .line 136
    :cond_75
    iput v3, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    goto :goto_7a

    .line 133
    :cond_78
    iput v4, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    .line 143
    :goto_7a
    const-string v1, "escape"

    const-string v5, "back-key"

    const-string v6, "back"

    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    .line 145
    iget-object v1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    const-string v1, "shortcut.create-session"

    invoke-direct {p0, v1, v0, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 147
    const-string v1, "shortcut.next-session"

    invoke-direct {p0, v1, v4, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 148
    const-string v1, "shortcut.previous-session"

    invoke-direct {p0, v1, v3, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 149
    const-string v1, "shortcut.rename-session"

    const/4 v3, 0x4

    invoke-direct {p0, v1, v3, v2}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_a4} :catch_a5

    goto :goto_c6

    :catch_a5
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading properties: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 152
    const-string p1, "termux"

    const-string v0, "Error loading props"

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c6
    return-void
.end method

.method setFullScreen(Landroid/content/Context;Z)V
    .registers 4

    .line 79
    iput-boolean p2, p0, Lcom/termux/app/TermuxPreferences;->mFullScreen:Z

    .line 80
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fullscreen"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method toggleShowExtraKeys(Landroid/content/Context;)Z
    .registers 4

    .line 88
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "show_extra_keys"

    iget-boolean v1, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-boolean p1, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    return p1
.end method
