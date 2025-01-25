.class Lcom/aide/common/TextToSpeechHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/common/TextToSpeechHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Landroid/speech/tts/TextToSpeech;
    .annotation runtime Labcd/ru;
        field = -0x1e3928a631bf180cL
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1e62466280c695b5L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2278ce26b4db6dd4L
    .end annotation
.end field

.field private Zo:Ljava/util/Locale;
    .annotation runtime Labcd/ru;
        field = 0x11efc143d85b9e50L
    .end annotation
.end field

.field final gn:Lcom/aide/common/TextToSpeechHelper;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x11f79b9392d31375L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/TextToSpeechHelper$a;

    const-wide v1, -0x28dd0586a89168d0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/common/TextToSpeechHelper;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x8214b98be4becb9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x27523bee53fbd689L  # -1.5012300358840074E119

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/common/TextToSpeechHelper$a;->gn:Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/common/TextToSpeechHelper$a;->VH:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_45

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    :try_start_1e
    iget-object v4, p0, Lcom/aide/common/TextToSpeechHelper$a;->VH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iput-object v3, p0, Lcom/aide/common/TextToSpeechHelper$a;->Zo:Ljava/util/Locale;

    goto :goto_30

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Zo:Ljava/util/Locale;

    if-eqz v0, :cond_44

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Lcom/aide/common/TextToSpeechHelper;->j6(Lcom/aide/common/TextToSpeechHelper;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/aide/common/Ya;

    invoke-direct {v2, p0, p1}, Lcom/aide/common/Ya;-><init>(Lcom/aide/common/TextToSpeechHelper$a;Lcom/aide/common/TextToSpeechHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_45

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x27523bee53fbd689L  # -1.5012300358840074E119

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xad535a6c82dbf8L
    .end annotation

    const-string v0, " "

    const-string v1, ""

    const-wide v2, 0xdf8235193f78827L

    :try_start_9
    sget-boolean v4, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const-string v4, "&lt;"

    const-string v5, "<"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&gt;"

    const-string v6, ">"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&quot;"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/common/TextToSpeechHelper$a;->gn:Lcom/aide/common/TextToSpeechHelper;

    invoke-static {v5}, Lcom/aide/common/TextToSpeechHelper;->DW(Lcom/aide/common/TextToSpeechHelper;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/common/TextToSpeechHelper$a;->VH:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_e2

    const-string v6, "</b>"

    const-string v7, "<b>"

    if-eqz v5, :cond_93

    :try_start_3a
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_42

    :cond_93
    const-string v0, "<b>a</b>"

    const-string v5, "A"

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<b>b</b>"

    const-string v5, "B"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<b>c</b>"

    const-string v5, "C"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<b>i</b>"

    const-string v5, "I"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<b>j</b>"

    const-string v5, "J"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<b>k</b>"

    const-string v5, "K"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<b>android:"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<i>"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "</i>"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/TextToSpeechHelper$a;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e1
    .catchall {:try_start_3a .. :try_end_e1} :catchall_e2

    return-object p1

    :catchall_e2
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v1, :cond_ea

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ea
    goto :goto_ec

    :goto_eb
    throw v0

    :goto_ec
    goto :goto_eb
.end method

.method static synthetic DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Zo:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Hw:Ljava/lang/String;

    return-object p0
.end method

.method private FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x545314ce2d643397L
    .end annotation

    const-wide v0, -0x69f5a80afb19c80L  # -4.610715091237429E276

    :try_start_5
    sget-boolean v2, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_12
    array-length v5, v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_3d

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_37

    aget-char v5, v2, v4

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_34

    add-int/lit8 v5, v4, -0x1

    :try_start_1e
    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_34

    add-int/lit8 v5, v4, 0x1

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3d

    if-eqz v5, :cond_34

    const/16 v5, 0x20

    aput-char v5, v2, v4

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_37
    :try_start_37
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    return-object v3

    :catchall_3d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v2

    :goto_47
    goto :goto_46
.end method

.method static synthetic j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/common/TextToSpeechHelper$a;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .registers 2

    iput-object p1, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/common/TextToSpeechHelper$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/common/TextToSpeechHelper$a;->Hw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/common/TextToSpeechHelper$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/common/TextToSpeechHelper$a;->v5:Z

    return p1
.end method


# virtual methods
.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1768103bd3728684L
    .end annotation

    const-wide v0, 0x12db23b6be1216bL

    :try_start_5
    sget-boolean v2, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xdf2ba61ba04b24L
    .end annotation

    const-wide v0, 0xb885b3e7e5aba99L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/common/TextToSpeechHelper$a;->v5:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_20

    :cond_1e
    iput-object v2, p0, Lcom/aide/common/TextToSpeechHelper$a;->Hw:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :goto_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method
