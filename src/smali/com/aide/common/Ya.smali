.class Lcom/aide/common/Ya;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/TextToSpeechHelper$a;-><init>(Lcom/aide/common/TextToSpeechHelper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/common/TextToSpeechHelper;

.field final Hw:Lcom/aide/common/TextToSpeechHelper$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/Ya;

    const-wide v2, -0x28dd0586a89168d0L

    const-wide v4, -0x119368bfbb8a5d49L    # -8.267866846906529E223

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/TextToSpeechHelper$a;Lcom/aide/common/TextToSpeechHelper;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    iput-object p2, p0, Lcom/aide/common/Ya;->FH:Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xb9b610f885244L
    .end annotation

    const-wide v4, 0x1c3a004b271f0be0L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Ya;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c3a004b271f0be0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Z)Z

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v1}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TTS available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Ya;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v1}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->FH(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v0}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v1}, Lcom/aide/common/TextToSpeechHelper$a;->FH(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
