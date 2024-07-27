.class Lcom/aide/common/v;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "v.java"


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field static DEBUG:Z

.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/common/KeyStrokeDetector$a;

.field final Hw:Landroid/view/View;

.field test:I

.field final v5:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    .line 48
    :try_start_0
    const-string v0, "com.aide.common.v"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v2, -0x247275568c9183f8L    # -1.04843817529002E133

    const-wide v4, -0x1beff7064960f0e3L    # -9.91489476867622E173

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/aide/common/KeyStrokeDetector;Landroid/view/View;ZLcom/aide/common/KeyStrokeDetector$a;Landroid/view/View;)V
    .registers 7

    .line 55
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/v;->test:I

    .line 56
    iput-object p1, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    .line 57
    iput-object p4, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    .line 58
    iput-object p5, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    return-void
.end method

.method private j6(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x3fa3b662fcf539fdL
    .end annotation

    .line 64
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 67
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 68
    const-wide v0, 0x3b5cbdc4113b98a3L    # 9.509689522214997E-23

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v12, v0, 0x2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 72
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 73
    const-wide v2, 0x3b5cbdc4113b98a3L    # 9.509689522214997E-23

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Ljava/lang/CharSequence;ZLandroid/view/View;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2b2ccc8f15c166efL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-wide v8, -0x3acea26b5a1e7b93L    # -2.099366108745897E25

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 81
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 84
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 85
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x3acea26b5a1e7b93L    # -2.099366108745897E25

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->v5(Lcom/aide/common/KeyStrokeDetector;)Landroid/view/KeyCharacterMap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;

    :cond_2
    move v1, v6

    .line 90
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 106
    return-void

    .line 91
    :cond_3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 92
    if-nez p2, :cond_5

    .line 93
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->FH(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->Hw(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 95
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->v5(Lcom/aide/common/KeyStrokeDetector;)Landroid/view/KeyCharacterMap;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v4, 0x0

    aput-char v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_6

    move v0, v6

    .line 98
    :goto_2
    array-length v3, v2

    if-lt v0, v3, :cond_8

    .line 90
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_7
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 97
    :cond_8
    aget-object v3, v2, v0

    .line 98
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/aide/common/v;->sendKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 90
    :catch_0
    move-exception v1

    .line 103
    sget-boolean v0, Lcom/aide/common/v;->DW:Z

    if-eqz v0, :cond_9

    .line 104
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private j6(Ljava/lang/CharSequence;ZLcom/aide/common/KeyStrokeDetector$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x4cd9fdd34c08f98L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z",
            "Lcom/aide/common/KeyStrokeDetector$a;",
            ")V"
        }
    .end annotation

    const-wide v8, -0x603cf789e23671e0L

    const/4 v6, 0x0

    .line 112
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 115
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 116
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x603cf789e23671e0L

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move v1, v6

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 131
    return-void

    .line 119
    :cond_2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 120
    if-nez p2, :cond_4

    .line 121
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->FH(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->Hw(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 123
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 124
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;C)Lcom/aide/common/u;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    .line 118
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v1

    .line 128
    sget-boolean v0, Lcom/aide/common/v;->DW:Z

    if-eqz v0, :cond_7

    .line 129
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x321e4957d953ae6fL
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v4, 0x64d57fe5cb4ac321L    # 5.445124845184828E177

    .line 138
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "beginBatchEdit"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 141
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 142
    const-wide v0, 0x64d57fe5cb4ac321L    # 5.445124845184828E177

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v1, "beginBatchEdit"

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 147
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 148
    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 150
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearMetaKeyStates(I)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    .line 156
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->cl(Lcom/aide/common/KeyStrokeDetector;)V

    .line 159
    return v3
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x28c95c83f042e17L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v2, 0x10ff4c94d0e42e3dL    # 8.257636521895588E-227

    .line 165
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 168
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 169
    const-wide v0, 0x10ff4c94d0e42e3dL    # 8.257636521895588E-227

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 174
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 175
    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5121b2b7acec2cc0L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v2, 0x4804c8374ad856e4L    # 8.839725039926821E38

    .line 184
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 187
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 188
    const-wide v0, 0x4804c8374ad856e4L    # 8.839725039926821E38

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v1, "commitCorrection"

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 193
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 194
    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1299d66a2fe222c0L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 205
    sget-boolean v2, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 209
    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/aide/common/v;->j6:Z

    if-eqz v2, :cond_1

    .line 210
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x24adbb9124300c80L    # -8.103877606840889E131

    invoke-static {v4, v5, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "commitText \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 213
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4

    .line 214
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;)I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    const-string v2, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->DW(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    iget-object v3, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    invoke-direct {p0, p1, v2, v3}, Lcom/aide/common/v;->j6(Ljava/lang/CharSequence;ZLandroid/view/View;)V

    .line 243
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    new-instance v4, Lcom/aide/common/u;

    const/16 v5, 0x43

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/aide/common/u;-><init>(IZZZ)V

    invoke-interface {v3, v4}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 218
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v3

    .line 245
    sget-boolean v2, Lcom/aide/common/v;->DW:Z

    if-eqz v2, :cond_5

    .line 246
    const-wide v4, -0x24adbb9124300c80L    # -8.103877606840889E131

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 225
    :cond_6
    :try_start_1
    const-string v2, "\n"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 226
    iget-object v2, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    move-object v0, v2

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    move-object v9, v0

    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v3, v2, :cond_7

    .line 233
    invoke-virtual {v9}, Lcom/aide/ui/views/editor/OEditor;->getCaretLine()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 234
    :try_start_2
    invoke-virtual {v9}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v9}, Lcom/aide/ui/views/editor/OEditor;->getCaretColumn()I

    move-result v3

    invoke-virtual {v9}, Lcom/aide/ui/views/editor/OEditor;->getCaretLine()I

    move-result v4

    invoke-virtual {v9}, Lcom/aide/ui/views/editor/OEditor;->tp()Z

    move-result v5

    invoke-virtual {v9}, Lcom/aide/ui/views/editor/OEditor;->getTabSize()I

    move-result v6

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/aide/ui/views/editor/g;->j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :goto_3
    add-int v2, v10, v11

    :try_start_3
    invoke-virtual {v9, v11, v2}, Lcom/aide/ui/views/editor/OEditor;->gn(II)V

    goto/16 :goto_1

    .line 229
    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_9

    .line 230
    add-int/lit8 v2, v10, 0x1

    .line 228
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v10, v2

    goto :goto_2

    .line 241
    :cond_8
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->DW(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    iget-object v3, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0, p1, v2, v3}, Lcom/aide/common/v;->j6(Ljava/lang/CharSequence;ZLcom/aide/common/KeyStrokeDetector$a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 236
    :catch_1
    move-exception v2

    goto :goto_3

    :cond_9
    move v2, v10

    goto :goto_4
.end method

.method public deleteSurroundingText(II)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2d276ab119bc7b08L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 255
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 258
    :cond_0
    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    iget v0, p0, Lcom/aide/common/v;->test:I

    if-eqz v0, :cond_1

    .line 259
    iget p1, p0, Lcom/aide/common/v;->test:I

    .line 260
    iput v1, p0, Lcom/aide/common/v;->test:I

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "deleteSurroundingText "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    move v0, v1

    .line 265
    :goto_0
    if-lt v0, p1, :cond_2

    .line 268
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x43

    invoke-direct {v3, v4, v1, v1, v1}, Lcom/aide/common/u;-><init>(IZZZ)V

    invoke-interface {v2, v3}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x100c531b7ff8b391L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v4, 0x5c31f1fc647fc5adL    # 1.3043308035790226E136

    .line 275
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "endBatchEdit"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 278
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 279
    const-wide v0, 0x5c31f1fc647fc5adL    # 1.3043308035790226E136

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v1, "endBatchEdit"

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 284
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 285
    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 287
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finishComposingText()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x7200294d99bd0c9L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v4, -0x2d643c2261dd000dL    # -8.837266927544959E89

    .line 294
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "finishComposingText"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 297
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 298
    const-wide v0, -0x2d643c2261dd000dL    # -8.837266927544959E89

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 301
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 303
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 304
    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 306
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 312
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 314
    :cond_0
    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 316
    iput v1, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 317
    const-string v0, "Test"

    iput-object v0, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 318
    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 319
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, v0, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->J2()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 324
    :goto_0
    iput v0, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 325
    iput v0, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 326
    return-object v2

    :cond_1
    move v0, v1

    .line 320
    goto :goto_0

    :cond_2
    move v0, v1

    .line 322
    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1c429c5efc6b9ba0L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v2, -0x4574bd738b4af40L

    const/4 v1, 0x0

    .line 332
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v1

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 335
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x4574bd738b4af40L

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->Zo(Lcom/aide/common/KeyStrokeDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 346
    :cond_2
    return-object v0

    .line 341
    :cond_3
    const/16 v0, 0x400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    :goto_0
    if-ge v1, v4, :cond_2

    .line 344
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 348
    sget-boolean v0, Lcom/aide/common/v;->DW:Z

    if-eqz v0, :cond_4

    .line 349
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public performContextMenuAction(I)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 360
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 362
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 366
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 399
    :cond_1
    :goto_1
    return v6

    .line 368
    :sswitch_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->cb()V

    .line 371
    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v5

    .line 372
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    iget-object v1, v5, Labcd/Tl;->FH:Ljava/lang/String;

    iget v2, v5, Labcd/Tl;->Hw:I

    iget v3, v5, Labcd/Tl;->v5:I

    iget v4, v5, Labcd/Tl;->Zo:I

    iget v5, v5, Labcd/Tl;->VH:I

    invoke-virtual/range {v0 .. v5}, Labcd/Xj;->FH(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 377
    :sswitch_1
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, v0, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->Mr()V

    goto :goto_1

    .line 383
    :sswitch_2
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, v0, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    .line 385
    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->j3()V

    .line 386
    invoke-virtual {v0, v5}, Lcom/aide/ui/views/editor/OEditor;->setSelectionVisibility(Z)V

    goto :goto_1

    .line 393
    :sswitch_3
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, v0, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->yS()V

    goto :goto_1

    .line 360
    :catch_0
    move-exception v1

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_1
        0x1020021 -> :sswitch_2
        0x1020022 -> :sswitch_3
        0x1020031 -> :sswitch_3
    .end sparse-switch
.end method

.method public performEditorAction(I)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x681c7aa90ac5e1a5L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v6, 0x1edeb975196b41bL

    .line 406
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 409
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 411
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 414
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 415
    const-wide v0, 0x1edeb975196b41bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "performEditorAction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 418
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 420
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 421
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 423
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 409
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x269cf7b71894178cL
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v4, 0xc9c667817033790L

    const/4 v1, 0x0

    .line 430
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 433
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1

    .line 434
    const-wide v0, 0xc9c667817033790L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "sendKeyEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    .line 438
    invoke-direct {p0, p1}, Lcom/aide/common/v;->j6(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 440
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2

    .line 441
    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 443
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x33d95c6d72c84b8L
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-wide v4, 0x5f0d746e38192b5cL    # 7.532584997729864E149

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 450
    sget-boolean v2, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v2, v11

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 453
    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/aide/common/v;->j6:Z

    if-eqz v2, :cond_1

    .line 454
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x5f0d746e38192b5cL    # 7.532584997729864E149

    invoke-static {v6, v7, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    :cond_1
    iget-object v6, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "setComposingText \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    move v2, v3

    .line 457
    :goto_0
    iget-object v3, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 460
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    .line 461
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->DW(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    iget-object v3, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0, p1, v2, v3}, Lcom/aide/common/v;->j6(Ljava/lang/CharSequence;ZLcom/aide/common/KeyStrokeDetector$a;)V

    .line 462
    return v11

    .line 458
    :cond_2
    iget-object v3, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    new-instance v6, Lcom/aide/common/u;

    const/16 v7, 0x43

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/aide/common/u;-><init>(IZZZ)V

    invoke-interface {v3, v6}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v3

    .line 464
    sget-boolean v2, Lcom/aide/common/v;->DW:Z

    if-eqz v2, :cond_3

    .line 465
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
