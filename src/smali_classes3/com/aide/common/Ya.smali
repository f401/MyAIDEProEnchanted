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
    .registers 5

    const-wide v0, -0x28dd0586a89168d0L

    const-wide v2, -0x119368bfbb8a5d49L  # -8.267866846906529E223

    const-class v4, Lcom/aide/common/Ya;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x1c3a004b271f0be0L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Ya;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Z)Z

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-nez v2, :cond_1b

    return-void

    :cond_1b
    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v3}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v4}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " TTS available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5b

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    :goto_57
    invoke-static {v2, v4}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    goto :goto_9f

    :cond_5b
    const/4 v3, -0x2

    if-ne v2, v3, :cond_6a

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    goto :goto_57

    :cond_6a
    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v3}, Lcom/aide/common/TextToSpeechHelper$a;->DW(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->FH(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v3}, Lcom/aide/common/TextToSpeechHelper$a;->FH(Lcom/aide/common/TextToSpeechHelper$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v2, p0, Lcom/aide/common/Ya;->Hw:Lcom/aide/common/TextToSpeechHelper$a;

    invoke-static {v2, v4}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Lcom/aide/common/TextToSpeechHelper$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_5 .. :try_end_9f} :catchall_a0

    :cond_9f
    :goto_9f
    return-void

    :catchall_a0
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Ya;->DW:Z

    if-eqz v3, :cond_ad

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ad
    goto :goto_af

    :goto_ae
    throw v2

    :goto_af
    goto :goto_ae
.end method
