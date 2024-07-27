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
    .registers 4

    const-wide v2, -0x28dd0586a89168d0L

    const-class v0, Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/common/TextToSpeechHelper;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x8214b98be4becb9L
    .end annotation

    const-wide v2, -0x27523bee53fbd689L    # -1.5012300358840074E119

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27523bee53fbd689L    # -1.5012300358840074E119

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/common/TextToSpeechHelper$a;->gn:Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/common/TextToSpeechHelper$a;->VH:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    array-length v5, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v1, v0

    :try_start_1
    iget-object v7, p0, Lcom/aide/common/TextToSpeechHelper$a;->VH:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iput-object v6, p0, Lcom/aide/common/TextToSpeechHelper$a;->Zo:Ljava/util/Locale;

    :cond_1
    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Zo:Ljava/util/Locale;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Lcom/aide/common/TextToSpeechHelper;->j6(Lcom/aide/common/TextToSpeechHelper;)Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lcom/aide/common/Ya;

    invoke-direct {v5, p0, p1}, Lcom/aide/common/Ya;-><init>(Lcom/aide/common/TextToSpeechHelper$a;Lcom/aide/common/TextToSpeechHelper;)V

    invoke-direct {v0, v1, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v0, :cond_4

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xad535a6c82dbf8L
    .end annotation

    const-wide v6, 0xdf8235193f78827L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xdf8235193f78827L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->gn:Lcom/aide/common/TextToSpeechHelper;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper;->DW(Lcom/aide/common/TextToSpeechHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/common/TextToSpeechHelper$a;->VH:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    const-string v0, "<b>a</b>"

    const-string v1, "A"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>b</b>"

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>c</b>"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>i</b>"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>j</b>"

    const-string v2, "J"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>k</b>"

    const-string v2, "K"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>android:"

    const-string v2, "<b>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<i>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "</i>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "</b>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/TextToSpeechHelper$a;->FH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Zo:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method private FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x545314ce2d643397L
    .end annotation

    const-wide v4, -0x69f5a80afb19c80L    # -4.610715091237429E276

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x69f5a80afb19c80L    # -4.610715091237429E276

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    aget-char v2, v1, v0

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    :try_start_1
    aget-char v2, v1, v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    aput-char v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    return-object v0
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

    const-wide v2, 0x12db23b6be1216bL

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12db23b6be1216bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xdf2ba61ba04b24L
    .end annotation

    const-wide v4, 0xb885b3e7e5aba99L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb885b3e7e5aba99L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aide/common/TextToSpeechHelper$a;->v5:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/common/TextToSpeechHelper$a;->FH:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/aide/common/TextToSpeechHelper$a;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
