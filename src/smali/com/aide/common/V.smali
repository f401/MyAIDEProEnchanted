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
.method static constructor <clinit>()V
    .registers 5

    .line 48
    :try_start_0
    const-string v0, "com.aide.common.v"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v1, -0x247275568c9183f8L  # -1.04843817529002E133

    const-wide v3, -0x1beff7064960f0e3L  # -9.91489476867622E173

    invoke-static {v0, v1, v2, v3, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/aide/common/KeyStrokeDetector;Landroid/view/View;ZLcom/aide/common/KeyStrokeDetector$a;Landroid/view/View;)V
    .registers 6

    .line 55
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 200
    const/4 p2, 0x0

    iput p2, p0, Lcom/aide/common/v;->test:I

    .line 56
    iput-object p1, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    .line 57
    iput-object p4, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    .line 58
    iput-object p5, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    return-void
.end method

.method private j6(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x3fa3b662fcf539fdL
    .end annotation

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 67
    :cond_11
    const-wide v3, 0x3b5cbdc4113b98a3L  # 9.509689522214997E-23

    :try_start_16
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1d

    .line 68
    invoke-static {v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_1d
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v16, v5, 0x6

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_4a

    return-object v0

    :catchall_4a
    move-exception v0

    .line 72
    sget-boolean v5, Lcom/aide/common/v;->DW:Z

    if-eqz v5, :cond_52

    .line 73
    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    :cond_52
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private j6(Ljava/lang/CharSequence;ZLandroid/view/View;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x2b2ccc8f15c166efL
    .end annotation

    .line 81
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 84
    :cond_17
    :try_start_17
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_2b

    .line 85
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v3, -0x3acea26b5a1e7b93L  # -2.099366108745897E25

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :cond_2b
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->v5(Lcom/aide/common/KeyStrokeDetector;)Landroid/view/KeyCharacterMap;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 88
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;

    :cond_3c
    const/4 v0, 0x0

    .line 90
    :goto_3d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_82

    .line 91
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-nez p2, :cond_63

    .line 93
    iget-object v4, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v4}, Lcom/aide/common/KeyStrokeDetector;->FH(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v4

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v4}, Lcom/aide/common/KeyStrokeDetector;->Hw(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_5f

    :cond_5a
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    goto :goto_63

    :cond_5f
    :goto_5f
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 95
    :cond_63
    :goto_63
    iget-object v4, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v4}, Lcom/aide/common/KeyStrokeDetector;->v5(Lcom/aide/common/KeyStrokeDetector;)Landroid/view/KeyCharacterMap;

    move-result-object v4

    new-array v5, v1, [C

    aput-char v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    if-eqz v3, :cond_7f

    .line 97
    array-length v4, v3
    :try_end_74
    .catchall {:try_start_17 .. :try_end_74} :catchall_83

    const/4 v5, 0x0

    :goto_75
    if-ge v5, v4, :cond_7f

    aget-object v6, v3, v5

    .line 98
    :try_start_79
    invoke-virtual {p0, v6}, Lcom/aide/common/v;->sendKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_83

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_82
    return-void

    :catchall_83
    move-exception v0

    .line 103
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_99

    .line 104
    const-wide v2, -0x3acea26b5a1e7b93L  # -2.099366108745897E25

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_99
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a0

    :goto_9f
    throw p1

    :goto_a0
    goto :goto_9f
.end method

.method private j6(Ljava/lang/CharSequence;ZLcom/aide/common/KeyStrokeDetector$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4cd9fdd34c08f98L
    .end annotation

    .line 112
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p3, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 115
    :cond_17
    :try_start_17
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_2b

    .line 116
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x603cf789e23671e0L

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_2b
    :goto_2b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v1, v0, :cond_5f

    .line 119
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-nez p2, :cond_51

    .line 121
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->FH(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2}, Lcom/aide/common/KeyStrokeDetector;->Hw(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_4d

    :cond_48
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_51

    :cond_4d
    :goto_4d
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :cond_51
    :goto_51
    if-eqz p3, :cond_5c

    .line 124
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v2, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;C)Lcom/aide/common/u;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z
    :try_end_5c
    .catchall {:try_start_17 .. :try_end_5c} :catchall_60

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_5f
    return-void

    :catchall_60
    move-exception v0

    .line 128
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_76

    .line 129
    const-wide v2, -0x603cf789e23671e0L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :cond_76
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7d

    :goto_7c
    throw p1

    :goto_7d
    goto :goto_7c
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x321e4957d953ae6fL
    .end annotation

    .line 138
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const-string v1, "beginBatchEdit"

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 141
    :cond_f
    const-wide v2, 0x64d57fe5cb4ac321L  # 5.445124845184828E177

    :try_start_14
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1b

    .line 142
    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 144
    :cond_1b
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_25

    return v0

    :catchall_25
    move-exception v0

    .line 147
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2d

    .line 148
    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 150
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearMetaKeyStates(I)Z
    .registers 5

    .line 156
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 158
    :cond_11
    iget-object p1, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {p1}, Lcom/aide/common/KeyStrokeDetector;->cl(Lcom/aide/common/KeyStrokeDetector;)V

    return v1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x28c95c83f042e17L
    .end annotation

    .line 165
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 168
    :cond_d
    const-wide v0, 0x10ff4c94d0e42e3dL  # 8.257636521895588E-227

    :try_start_12
    sget-boolean v2, Lcom/aide/common/v;->j6:Z

    if-eqz v2, :cond_19

    .line 169
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_19
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v3, "commitCompletion"

    invoke-static {v2, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_25

    return p1

    :catchall_25
    move-exception v2

    .line 174
    sget-boolean v3, Lcom/aide/common/v;->DW:Z

    if-eqz v3, :cond_2d

    .line 175
    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5121b2b7acec2cc0L
    .end annotation

    .line 184
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 187
    :cond_d
    const-wide v0, 0x4804c8374ad856e4L  # 8.839725039926821E38

    :try_start_12
    sget-boolean v2, Lcom/aide/common/v;->j6:Z

    if-eqz v2, :cond_19

    .line 188
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :cond_19
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    const-string v3, "commitCorrection"

    invoke-static {v2, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_25

    return p1

    :catchall_25
    move-exception v2

    .line 193
    sget-boolean v3, Lcom/aide/common/v;->DW:Z

    if-eqz v3, :cond_2d

    .line 194
    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1299d66a2fe222c0L
    .end annotation

    .line 205
    const-string v0, "\n"

    .line 0
    nop

    .line 205
    sget-boolean v1, Lcom/aide/common/v;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 209
    :cond_17
    :try_start_17
    sget-boolean v1, Lcom/aide/common/v;->j6:Z

    if-eqz v1, :cond_28

    .line 210
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x24adbb9124300c80L  # -8.103877606840889E131

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    :cond_28
    iget-object v1, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "commitText \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 214
    :goto_50
    iget-object v4, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v4}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;)I

    move-result v4

    if-ge v1, v4, :cond_67

    .line 215
    iget-object v4, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    new-instance v5, Lcom/aide/common/u;

    const/16 v6, 0x43

    invoke-direct {v5, v6, v3, v3, v3}, Lcom/aide/common/u;-><init>(IZZZ)V

    invoke-interface {v4, v5}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 221
    :cond_67
    iget-object v1, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v1, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 224
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->DW(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v0

    iget-object v1, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/aide/common/v;->j6(Ljava/lang/CharSequence;ZLandroid/view/View;)V

    goto :goto_d3

    .line 225
    :cond_82
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c8

    .line 226
    iget-object v0, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    const/4 v4, 0x0

    .line 228
    :goto_8d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_a0

    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_9d

    add-int/lit8 v4, v4, 0x1

    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 233
    :cond_a0
    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getCaretLine()I

    move-result v3
    :try_end_a4
    .catchall {:try_start_17 .. :try_end_a4} :catchall_d4

    .line 236
    :try_start_a4
    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v5

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getCaretColumn()I

    move-result v6

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getCaretLine()I

    move-result v7

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->tp()Z

    move-result v8

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getTabSize()I

    move-result v9

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v11, p0

    invoke-virtual/range {v5 .. v11}, Lcom/aide/ui/views/editor/g;->j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c1} :catch_c2
    .catchall {:try_start_a4 .. :try_end_c1} :catchall_d4

    goto :goto_c3

    .line 248
    :catch_c2
    move-exception v1

    .line 239
    :goto_c3
    add-int/2addr v4, v3

    :try_start_c4
    invoke-virtual {v0, v3, v4}, Lcom/aide/ui/views/editor/OEditor;->gn(II)V

    goto :goto_d3

    .line 241
    :cond_c8
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->DW(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v0

    iget-object v1, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/aide/common/v;->j6(Ljava/lang/CharSequence;ZLcom/aide/common/KeyStrokeDetector$a;)V
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_d4

    :goto_d3
    return v2

    :catchall_d4
    move-exception v0

    .line 245
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_e9

    .line 246
    const-wide v2, -0x24adbb9124300c80L  # -8.103877606840889E131

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    :cond_e9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_f0

    :goto_ef
    throw p1

    :goto_f0
    goto :goto_ef
.end method

.method public deleteSurroundingText(II)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2d276ab119bc7b08L
    .end annotation

    .line 255
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :cond_18
    if-ne p1, v1, :cond_23

    if-nez p2, :cond_23

    .line 258
    iget v0, p0, Lcom/aide/common/v;->test:I

    if-eqz v0, :cond_23

    .line 260
    iput v2, p0, Lcom/aide/common/v;->test:I

    move p1, v0

    .line 263
    :cond_23
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "deleteSurroundingText "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    const/4 v0, 0x0

    :goto_61
    if-ge v0, p1, :cond_72

    .line 266
    iget-object v1, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    new-instance v3, Lcom/aide/common/u;

    const/16 v4, 0x43

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/aide/common/u;-><init>(IZZZ)V

    invoke-interface {v1, v3}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 268
    :cond_72
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public endBatchEdit()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x100c531b7ff8b391L
    .end annotation

    .line 275
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const-string v1, "endBatchEdit"

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 278
    :cond_f
    const-wide v2, 0x5c31f1fc647fc5adL  # 1.3043308035790226E136

    :try_start_14
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1b

    .line 279
    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 281
    :cond_1b
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_25

    return v0

    :catchall_25
    move-exception v0

    .line 284
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2d

    .line 285
    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 287
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finishComposingText()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7200294d99bd0c9L
    .end annotation

    .line 294
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const-string v1, "finishComposingText"

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 297
    :cond_f
    const-wide v2, -0x2d643c2261dd000dL  # -8.837266927544959E89

    :try_start_14
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_1b

    .line 298
    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    .line 300
    :cond_1b
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 301
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_25

    return v0

    :catchall_25
    move-exception v0

    .line 303
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_2d

    .line 304
    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    .line 306
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 5

    .line 312
    sget-boolean p2, Lcom/aide/common/v;->DEBUG:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_d

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 315
    :cond_d
    new-instance p1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 316
    iput v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 317
    const-string p2, "Test"

    iput-object p2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 318
    iput v0, p1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 319
    iget-object p2, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, p2, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_29

    .line 320
    check-cast p2, Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {p2}, Lcom/aide/ui/views/editor/OEditor;->J2()Z

    move-result p2

    if-eqz p2, :cond_29

    const/4 v1, 0x2

    .line 324
    :cond_29
    iput v1, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 325
    iput v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1c429c5efc6b9ba0L
    .end annotation

    .line 332
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 335
    :cond_18
    :try_start_18
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_2e

    .line 336
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v3, -0x4574bd738b4af40L

    invoke-static {v3, v4, p0, v0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    :cond_2e
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->Zo(Lcom/aide/common/KeyStrokeDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 339
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 341
    :cond_3f
    const/16 v0, 0x400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4a
    if-ge v1, v0, :cond_54

    .line 344
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_51
    .catchall {:try_start_18 .. :try_end_51} :catchall_55

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_54
    return-object v2

    :catchall_55
    move-exception v0

    .line 348
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_6e

    .line 349
    const-wide v2, -0x4574bd738b4af40L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    :cond_6e
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_75

    :goto_74
    throw p1

    :goto_75
    goto :goto_74
.end method

.method public performContextMenuAction(I)Z
    .registers 11

    .line 357
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    .line 360
    :try_start_6
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception v0

    const/4 v0, 0x0

    .line 362
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :cond_30
    const v0, 0x1020031

    if-eq p1, v0, :cond_77

    packed-switch p1, :pswitch_data_84

    goto :goto_82

    .line 383
    :pswitch_39  #0x1020021
    iget-object p1, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, p1, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_82

    .line 384
    check-cast p1, Lcom/aide/ui/views/editor/OEditor;

    .line 385
    invoke-virtual {p1}, Lcom/aide/ui/views/editor/OEditor;->j3()V

    .line 386
    invoke-virtual {p1, v1}, Lcom/aide/ui/views/editor/OEditor;->setSelectionVisibility(Z)V

    goto :goto_82

    .line 377
    :pswitch_48  #0x1020020
    iget-object p1, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, p1, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_82

    .line 378
    check-cast p1, Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/OEditor;->Mr()V

    goto :goto_82

    .line 368
    :pswitch_54  #0x102001f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 370
    invoke-virtual {p1}, Lcom/aide/ui/MainActivity;->cb()V

    .line 371
    invoke-virtual {p1}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object p1

    .line 372
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v3

    iget-object v4, p1, Labcd/Tl;->FH:Ljava/lang/String;

    iget v5, p1, Labcd/Tl;->Hw:I

    iget v6, p1, Labcd/Tl;->v5:I

    iget v7, p1, Labcd/Tl;->Zo:I

    iget v8, p1, Labcd/Tl;->VH:I

    invoke-virtual/range {v3 .. v8}, Labcd/Xj;->FH(Ljava/lang/String;IIII)V

    goto :goto_82

    .line 393
    :cond_77
    :pswitch_77  #0x1020022
    iget-object p1, p0, Lcom/aide/common/v;->Hw:Landroid/view/View;

    instance-of v0, p1, Lcom/aide/ui/views/editor/OEditor;

    if-eqz v0, :cond_82

    .line 394
    check-cast p1, Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/OEditor;->yS()V

    :cond_82
    :goto_82
    return v2

    nop

    :pswitch_data_84
    .packed-switch 0x102001f
        :pswitch_54  #0102001f
        :pswitch_48  #01020020
        :pswitch_39  #01020021
        :pswitch_77  #01020022
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x681c7aa90ac5e1a5L
    .end annotation

    .line 406
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 409
    :try_start_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    const/4 v0, 0x0

    .line 411
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 414
    :cond_30
    const-wide v0, 0x1edeb975196b41bL

    :try_start_35
    sget-boolean v2, Lcom/aide/common/v;->j6:Z

    if-eqz v2, :cond_3c

    .line 415
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    .line 417
    :cond_3c
    iget-object v2, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "performEditorAction"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 418
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result p1
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_55

    return p1

    :catchall_55
    move-exception v2

    .line 420
    sget-boolean v3, Lcom/aide/common/v;->DW:Z

    if-eqz v3, :cond_62

    .line 421
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 423
    :cond_62
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x269cf7b71894178cL
    .end annotation

    .line 430
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 433
    :cond_d
    const-wide v2, 0xc9c667817033790L

    :try_start_12
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_19

    .line 434
    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 436
    :cond_19
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "sendKeyEvent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    .line 438
    invoke-direct {p0, p1}, Lcom/aide/common/v;->j6(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_3f

    return p1

    :catchall_3f
    move-exception v0

    .line 440
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_47

    .line 441
    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 443
    :cond_47
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x33d95c6d72c84b8L
    .end annotation

    .line 450
    sget-boolean v0, Lcom/aide/common/v;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 453
    :cond_14
    :try_start_14
    sget-boolean v0, Lcom/aide/common/v;->j6:Z

    if-eqz v0, :cond_25

    .line 454
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v3, 0x5f0d746e38192b5cL  # 7.532584997729864E149

    invoke-static {v3, v4, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    :cond_25
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "setComposingText \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 457
    :goto_4d
    iget-object v3, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;)I

    move-result v3

    if-ge v0, v3, :cond_64

    .line 458
    iget-object v3, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    new-instance v4, Lcom/aide/common/u;

    const/16 v5, 0x43

    invoke-direct {v4, v5, v2, v2, v2}, Lcom/aide/common/u;-><init>(IZZZ)V

    invoke-interface {v3, v4}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 460
    :cond_64
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/KeyStrokeDetector;I)I

    .line 461
    iget-object v0, p0, Lcom/aide/common/v;->v5:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0}, Lcom/aide/common/KeyStrokeDetector;->DW(Lcom/aide/common/KeyStrokeDetector;)Z

    move-result v0

    iget-object v2, p0, Lcom/aide/common/v;->FH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0, p1, v0, v2}, Lcom/aide/common/v;->j6(Ljava/lang/CharSequence;ZLcom/aide/common/KeyStrokeDetector$a;)V
    :try_end_78
    .catchall {:try_start_14 .. :try_end_78} :catchall_79

    return v1

    :catchall_79
    move-exception v0

    .line 464
    sget-boolean v1, Lcom/aide/common/v;->DW:Z

    if-eqz v1, :cond_8e

    .line 465
    const-wide v2, 0x5f0d746e38192b5cL  # 7.532584997729864E149

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    :cond_8e
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_95

    :goto_94
    throw p1

    :goto_95
    goto :goto_94
.end method
