.class public Labcd/Cl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private EQ:Lcom/aide/common/TextToSpeechHelper;
    .annotation runtime Labcd/ru;
        field = -0xd1fdd16d0259ad3L
    .end annotation
.end field

.field private FH:Lcom/aide/ui/trainer/TrainerState;
    .annotation runtime Labcd/ru;
        field = -0xec20e5aff43777L
    .end annotation
.end field

.field private Hw:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x2171d0e346a85bbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Lcom/aide/ui/trainer/g$a;
    .annotation runtime Labcd/ru;
        field = 0x1038fb9e5c797f50L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x2aa952308c847980L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x148400e98d9afae3L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x18434c58036ea480L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x2dd1622d23a2828fL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x3d90592c03c2d40L
    .end annotation
.end field

.field private v5:Landroid/media/SoundPool;
    .annotation runtime Labcd/ru;
        field = -0x200bfeee8a94f643L
    .end annotation
.end field

.field private we:Lcom/aide/ui/trainer/g;
    .annotation runtime Labcd/ru;
        field = 0x317dd6ab740ab873L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x20d2e6e11ba0079cL    # -2.9765480524345248E150

    const-class v0, Labcd/Cl;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x208b412edbe05fb0L    # -6.790772792491104E151

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x208b412edbe05fb0L    # -6.790772792491104E151

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/Cl;)V
    .registers 1

    invoke-direct {p0}, Labcd/Cl;->Sf()V

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x173d8e24782d4c90L
    .end annotation

    const-wide v8, 0x10678d1f49adf81fL

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10678d1f49adf81fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->VH()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/aide/ui/trainer/TrainerState;->retryCurrentExercise(Ljava/lang/String;I)V

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->Zo:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Labcd/Cl;->ef()V

    invoke-direct {p0}, Labcd/Cl;->KD()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Cl;->DW:Z

    if-eqz v0, :cond_3

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method static synthetic FH(Labcd/Cl;)Lcom/aide/common/TextToSpeechHelper;
    .registers 2

    iget-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    return-object v0
.end method

.method static synthetic Hw(Labcd/Cl;)I
    .registers 2

    iget v0, p0, Labcd/Cl;->u7:I

    return v0
.end method

.method private KD()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2b5630cdb4f580c0L
    .end annotation

    const-wide v4, 0x1aafa69b3563f3a9L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1aafa69b3563f3a9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->showSkipLesson(Lcom/aide/ui/trainer/g$g;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Skip Lesson Dialog Shown"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const v1, 0x7f0d0622

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0624

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/yl;

    invoke-direct {v3, p0}, Labcd/yl;-><init>(Labcd/Cl;)V

    invoke-static {v0, v1, v2, v3}, Lcom/aide/common/Wa;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Mz()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x63723ebfdb6a394L
    .end annotation

    const-wide v8, 0xf054ebdf7d217L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Cl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xf054ebdf7d217L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->tp()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$d;->DW(I)Lcom/aide/ui/trainer/g$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$f;->DW()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$f;->j6()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$package_name$"

    invoke-direct {p0}, Labcd/Cl;->cn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$project_name$"

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$h;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v4

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "$code_hint$"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "$code_hint_1$"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "$code_hint_2$"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "$code_hint_3$"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "$code_hint_4$"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "$code_hint_5$"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "$code_hint_6$"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "$code_hint_7$"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "$code_hint_8$"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "$code_hint_9$"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "$code_hint_10$"

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v3, v5}, Lcom/aide/ui/AIDEEditorPager;->j6(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Labcd/Zk;->j6(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private SI()Z
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x23fd06489e25020cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x458e2df378191349L    # 1.1675127133743131E27

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v0

    invoke-interface {v0}, Labcd/Nk$a;->VH()Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const-string v7, "\t"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\t"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x458e2df378191349L    # 1.1675127133743131E27

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->Hw()I

    move-result v0

    if-ge v3, v0, :cond_d

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/aide/ui/trainer/g$d;->j6(I)Lcom/aide/ui/trainer/g$e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$e;->j6()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$e;->Hw()I

    move-result v10

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$e;->v5()I

    move-result v11

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$e;->DW()I

    move-result v12

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v4, v0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    if-lt v4, v11, :cond_e

    if-gt v4, v12, :cond_e

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    :cond_3
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v5, v4

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    move-object v0, v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    const/4 v0, -0x1

    if-ne v10, v0, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    if-ltz v10, :cond_c

    if-eq v1, v10, :cond_c

    :cond_b
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$e;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    move v0, v1

    goto :goto_3
.end method

.method private Sf()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1c594fb3fa6c040L
    .end annotation

    const-wide v8, 0x2a02bcf1609ce5bL

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a02bcf1609ce5bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Mz()V

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v6

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Cl;->Zo(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    iget-object v0, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$a;->FH(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v7, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v0

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Labcd/Cl;->cn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Labcd/Sk;->j6(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$a;->FH(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v7, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v0

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Labcd/Cl;->cn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Labcd/Sk;->j6(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Labcd/Zk;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    :cond_3
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const-string v2, "Lesson error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    return-void

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method static synthetic VH(Labcd/Cl;)V
    .registers 1

    invoke-direct {p0}, Labcd/Cl;->ef()V

    return-void
.end method

.method private VH(Lcom/aide/ui/trainer/g$i;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x21e968765dc07f90L
    .end annotation

    const-wide v12, -0xe4c667320e653d3L    # -5.105147961376001E239

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe4c667320e653d3L    # -5.105147961376001E239

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->VH()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v5

    const v0, 0x7f0d062e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x4

    const-string v6, ""

    const v9, 0x7f0d062d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v12, v13, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Zo(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12273a29a0778840L
    .end annotation

    const-wide v2, 0x105fd4f37389496fL    # 8.201344623319308E-230

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x105fd4f37389496fL    # 8.201344623319308E-230

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getInternalFilesDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Lessons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Zo(Labcd/Cl;)V
    .registers 1

    invoke-direct {p0}, Labcd/Cl;->Mz()V

    return-void
.end method

.method private cb()Lcom/aide/ui/trainer/g$i;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x10224f1e0c75c644L
    .end annotation

    const-wide v6, 0x3430f0c8f684dd7dL    # 2.698787938387083E-57

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x3430f0c8f684dd7dL    # 2.698787938387083E-57

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {p0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v4, v2}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    iget-object v5, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v5, v0}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v0}, Labcd/Cl;->Hw(Lcom/aide/ui/trainer/g$i;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v4, v0}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3, v2}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {v4, v0}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3, v2}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {v4, v1}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2, v0}, Lcom/aide/ui/trainer/TrainerState;->isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_9

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9
    throw v0
.end method

.method private cn()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7196e504aa48159L
    .end annotation

    const-wide v2, -0x167e8af029250440L    # -1.6703348251292238E200

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x167e8af029250440L    # -1.6703348251292238E200

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.aide.trainer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$h;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private dx()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2530ab24ef2e62f0L
    .end annotation

    const-wide v4, 0x147d6d62b22c0d8bL    # 5.594396757420192E-210

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Cl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x147d6d62b22c0d8bL    # 5.594396757420192E-210

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v2

    if-ge v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$i;->J0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->u7()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private ef()V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x201bcde5c0b9d8a8L
    .end annotation

    const-wide v12, 0x43b64994beec20bfL    # 1.60597828986055859E18

    const/4 v0, 0x0

    const/4 v7, 0x1

    :try_start_0
    sget-boolean v1, Labcd/Cl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x43b64994beec20bfL    # 1.60597828986055859E18

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    :try_start_1
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->showHintForCurrentExercise()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {p0}, Labcd/Cl;->QX()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->showErrorForCurrentExercise()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExerciseErrorText()Ljava/lang/String;

    move-result-object v9

    :cond_3
    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Cl;->u7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->DW()I

    move-result v10

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->Ws()Z

    move-result v3

    if-nez v3, :cond_4

    move v11, v7

    :goto_0
    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v4}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {p0, v4}, Labcd/Cl;->Hw(Lcom/aide/ui/trainer/g$i;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v7

    :goto_1
    iget-object v8, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v8}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v8

    if-nez v8, :cond_6

    if-gez v10, :cond_6

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v8

    if-le v8, v7, :cond_6

    :goto_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    const-string v8, "\ud83d\ude1e"

    invoke-virtual/range {v0 .. v11}, Lcom/aide/ui/AIDEEditorPager;->j6(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_4
    move v11, v0

    goto :goto_0

    :cond_5
    move v4, v0

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v12, v13, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7
    throw v0
.end method

.method private g3()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4e0c209aaa90fd59L
    .end annotation

    const-wide v4, 0x5f49043106581d40L    # 1.0236045076790872E151

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5f49043106581d40L    # 1.0236045076790872E151

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    new-instance v1, Labcd/xl;

    invoke-direct {v1, p0}, Labcd/xl;-><init>(Labcd/Cl;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic gn(Labcd/Cl;)Lcom/aide/ui/trainer/g$i;
    .registers 2

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/Cl;)Lcom/aide/ui/trainer/g;
    .registers 2

    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    return-object v0
.end method

.method private j6(F)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x29ddda4838c20df4L
    .end annotation

    const-wide v4, 0x28cddb7e2f1e0407L    # 3.879748086102067E-112

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v2, 0x28cddb7e2f1e0407L    # 3.879748086102067E-112

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    double-to-int v1, v0

    const-string v0, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2605"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2606"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-object v0
.end method

.method static synthetic j6(Labcd/Cl;Lcom/aide/ui/trainer/g$i;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Cl;->VH(Lcom/aide/ui/trainer/g$i;)V

    return-void
.end method

.method private ro()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x41d95f6f2657180L
    .end annotation

    const-wide v2, -0xb1824be272ee587L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb1824be272ee587L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1, v0}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private sG()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a5d96180889a57bL
    .end annotation

    const-wide v2, 0x1d2c8a4dfe026bd0L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d2c8a4dfe026bd0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g;->Hw(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;

    move-result-object v0

    iput-object v0, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    new-instance v0, Lcom/aide/common/TextToSpeechHelper;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private sh()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x453218146958f905L
    .end annotation

    const-wide v4, 0x2558ea11de76d760L    # 8.985684523527488E-129

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2558ea11de76d760L    # 8.985684523527488E-129

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/trainer/TrainerState;->calculateLessonAverageFailures(Lcom/aide/ui/trainer/g$g;)F

    move-result v1

    invoke-direct {p0, v1}, Labcd/Cl;->j6(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic v5(Labcd/Cl;)Landroid/media/SoundPool;
    .registers 2

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    return-object v0
.end method

.method private v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5990494fbf46ea0L
    .end annotation

    const-wide v2, -0x9d8419c45167371L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9d8419c45167371L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private vJ()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x30dea3ad8c4070d0L
    .end annotation

    const-wide v4, 0x3977f25444cbc24fL    # 7.379115329117214E-32

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3977f25444cbc24fL    # 7.379115329117214E-32

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Labcd/wl;

    invoke-direct {v1, p0}, Labcd/wl;-><init>(Labcd/Cl;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public BT()V
    .registers 7

    const-wide v4, 0x21f1f700dc5b3539L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21f1f700dc5b3539L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->runCurrentExercise()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Zk;->j6(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x28e773b2ce8d275L    # -1.791773160600502E296

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x28e773b2ce8d275L    # -1.791773160600502E296

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g;->Hw()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x5f144c7ba9d3100L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5f144c7ba9d3100L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    iget-object v1, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v2, 0x461e236a3845d934L    # 5.96951315662389E29

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x461e236a3845d934L    # 5.96951315662389E29

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0, p1}, Lcom/aide/ui/trainer/TrainerState;->isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x13b2fb98345f48c4L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13b2fb98345f48c4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "\ud83d\ude1e"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x17b4eae562999835L    # -2.471240244735734E194

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17b4eae562999835L    # -2.471240244735734E194

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x29d4fbb1163cf11L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29d4fbb1163cf11L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    iget-object v1, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v1, p1}, Lcom/aide/ui/trainer/g;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Cl;->ro()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v2, 0x34cfb4e95926dd00L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34cfb4e95926dd00L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0, p1}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 7

    const-wide v4, 0x441d790269967e50L    # 1.3591880651530122E20

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x441d790269967e50L    # 1.3591880651530122E20

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d063d

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u21a9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Lcom/aide/ui/trainer/g$i;)Z
    .registers 8

    const-wide v4, -0x1ba2afef0d9e772cL    # -2.8999745399078635E175

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Cl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1ba2afef0d9e772cL    # -2.8999745399078635E175

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1, p1}, Lcom/aide/ui/trainer/TrainerState;->isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->u7()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide v4, 0x134fd9000L

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0x2770192906bdaa1dL    # 9.974732437011556E-119

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2770192906bdaa1dL    # 9.974732437011556E-119

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x4106a037b50ced71L    # 185350.9634035635

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4106a037b50ced71L    # 185350.9634035635

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "\ud83d\ude03"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x50a4ed4d7996e00L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x50a4ed4d7996e00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Mr()V
    .registers 5

    const-wide v2, -0x221f123e14e8dae8L    # -1.6514771939188126E144

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x221f123e14e8dae8L    # -1.6514771939188126E144

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/trainer/g;

    invoke-direct {v0}, Lcom/aide/ui/trainer/g;-><init>()V

    iput-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    new-instance v0, Lcom/aide/ui/trainer/TrainerState;

    invoke-direct {v0}, Lcom/aide/ui/trainer/TrainerState;-><init>()V

    iput-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-direct {p0}, Labcd/Cl;->ro()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public P8()V
    .registers 7

    const-wide v4, -0x1a7d7c5728291a71L    # -9.603169466179146E180

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a7d7c5728291a71L    # -9.603169466179146E180

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0633

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x286e8c2d6c474bbL

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x286e8c2d6c474bbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Labcd/Cl;->sh()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public U2()Z
    .registers 5

    const-wide v2, 0xb5ff1b9aa3956dfL

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb5ff1b9aa3956dfL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->XL()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH()Lcom/aide/ui/trainer/g$d;
    .registers 5

    const-wide v2, -0x397214ef396480dfL    # -7.585171106981649E31

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x397214ef396480dfL    # -7.585171106981649E31

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$g;->j6(I)Lcom/aide/ui/trainer/g$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x48bcadf8b36b70bbL    # -1.7327155396886634E-42

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48bcadf8b36b70bbL    # -1.7327155396886634E-42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d0626

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u226b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d062b

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u226b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d062a

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u226b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public XL()Lcom/aide/ui/trainer/g$g;
    .registers 5

    const-wide v2, -0x5ed30bcd4d2fcc3L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5ed30bcd4d2fcc3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v0

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$a;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$g;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Lcom/aide/ui/trainer/g$a;
    .registers 5

    const-wide v2, 0x1eee30983c90da4cL

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1eee30983c90da4cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public a8()Z
    .registers 7

    const-wide v4, -0x6f33fd34d9b1cdc8L    # -9.23762961450361E-228

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6f33fd34d9b1cdc8L    # -9.23762961450361E-228

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->XL()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public aM()Lcom/aide/ui/trainer/g$c;
    .registers 5

    const-wide v2, 0x1e73d876337a508L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e73d876337a508L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public ei()V
    .registers 11

    const-wide v8, -0x1f816f233182e830L    # -6.557140863980315E156

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f816f233182e830L    # -6.557140863980315E156

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Labcd/Cl;->Zo:I

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0004

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Labcd/Cl;->VH:I

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0003

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Labcd/Cl;->gn:I

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0005

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Labcd/Cl;->u7:I

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Labcd/Cl;->tp:I

    invoke-direct {p0}, Labcd/Cl;->vJ()V

    invoke-direct {p0}, Labcd/Cl;->sG()V

    invoke-direct {p0}, Labcd/Cl;->Sf()V

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/Cl;->Mz()V

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->u7:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Cl;->VH(Lcom/aide/ui/trainer/g$i;)V

    invoke-direct {p0}, Labcd/Cl;->ef()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method public er()V
    .registers 11

    const-wide v8, -0xfe21eb892bc467dL    # -1.1597308650024769E232

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xfe21eb892bc467dL    # -1.1597308650024769E232

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->VH:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public gW()V
    .registers 11

    const-wide v8, -0x253e6c34e2404d8bL    # -1.523003033797798E129

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x253e6c34e2404d8bL    # -1.523003033797798E129

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->VH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->retryCurrentExercise(I)V

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->u7:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    invoke-direct {p0}, Labcd/Cl;->ef()V

    invoke-direct {p0}, Labcd/Cl;->KD()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x192ad9c4f82136abL

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x192ad9c4f82136abL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Cl;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Cl;->v5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j3()Z
    .registers 5

    const-wide v2, -0x469e1eefb6685c38L    # -2.7547199652395265E-32

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x469e1eefb6685c38L    # -2.7547199652395265E-32

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->J8()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;
    .registers 6

    const-wide v2, -0x10b3e7e77753f707L    # -1.331074107419941E228

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10b3e7e77753f707L    # -1.331074107419941E228

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v0, p1}, Lcom/aide/ui/trainer/g;->DW(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;
    .registers 6

    const-wide v2, 0x1fcb502fefba2c58L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1fcb502fefba2c58L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0, p1}, Lcom/aide/ui/trainer/TrainerState;->getLessonAverageFailures(Lcom/aide/ui/trainer/g$i;)F

    move-result v0

    invoke-direct {p0, v0}, Labcd/Cl;->j6(F)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 9

    const-wide v6, 0x26610284a2c9bc57L    # 8.041034518135926E-124

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Cl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x26610284a2c9bc57L    # 8.041034518135926E-124

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Cl;->U2()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Labcd/Nk;->j6(Z)V

    invoke-direct {p0}, Labcd/Cl;->SI()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->Ws()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/AIDEEditorPager;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d062f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Labcd/Cl;->U2()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exercise was run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->runCurrentExercise()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Zk;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    invoke-direct {p0}, Labcd/Cl;->dx()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueToNextLessonInCourse:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const v3, 0x7f0d060f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v1

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$i;->J0()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->exerciseHasRun()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const v1, 0x7f0d062b

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d062c

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/zl;

    invoke-direct {v3, p0}, Labcd/zl;-><init>(Labcd/Cl;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v1

    if-lt v0, v1, :cond_8

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$g;->J8()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const v1, 0x7f0d063f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d063e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/Al;

    invoke-direct {v3, p0}, Labcd/Al;-><init>(Labcd/Cl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/ui/MainActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v1

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$g;->Ws()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    invoke-virtual {p0}, Labcd/Cl;->nw()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public j6(Lcom/aide/ui/trainer/g$i;Z)V
    .registers 10

    const-wide v2, -0x1c5439ebb293e511L    # -1.3416586069871417E172

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x1c5439ebb293e511L    # -1.3416586069871417E172

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0, p1}, Lcom/aide/ui/trainer/TrainerState;->restartLesson(Lcom/aide/ui/trainer/g$i;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Labcd/Cl;->Zo(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v0

    iget-object v1, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Cl;->sG()V

    :goto_1
    invoke-direct {p0}, Labcd/Cl;->g3()V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Cl;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p1}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x6014a9aa0408418L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6014a9aa0408418L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->QX()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/Cl;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/ui/trainer/e;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Cl;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public lg()Z
    .registers 7

    const-wide v4, 0x261753922ad59763L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Labcd/Cl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x261753922ad59763L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public nw()V
    .registers 11

    const-wide v8, 0x2f50b7aaf1afdf33L    # 8.811934483488228E-81

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x2f50b7aaf1afdf33L    # 8.811934483488228E-81

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Cl;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    const/4 v0, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v3

    if-lt v2, v3, :cond_4

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Cl;->g3()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->XL()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->Ws()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    :goto_1
    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->startNextExercise()V

    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/trainer/TrainerState;->setLessonFinished(Lcom/aide/ui/trainer/g$g;)V

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Labcd/Cl;->VH(Lcom/aide/ui/trainer/g$i;)V

    :cond_6
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->gn:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_8
    :goto_2
    invoke-direct {p0}, Labcd/Cl;->Mz()V

    invoke-direct {p0}, Labcd/Cl;->ef()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->u7:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_2

    :cond_b
    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->VH:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public rN()V
    .registers 11

    const-wide v8, -0x4cb397d04c140c01L    # -1.3810707608613138E-61

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4cb397d04c140c01L    # -1.3810707608613138E-61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v1, p0, Labcd/Cl;->tp:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public tp()Ljava/lang/String;
    .registers 7

    const-wide v4, 0x909f0006b33e398L    # 4.0219998470985435E-265

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x909f0006b33e398L    # 4.0219998470985435E-265

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u226a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0d0652

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x3fdc1b5d98a75b03L    # -9.946551541872845

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3fdc1b5d98a75b03L    # -9.946551541872845

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d062b

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u226b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->U2()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d0645

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->EQ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Ctrl+E)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u25ba"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d0626

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u226b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, 0xd0ee54802c89805L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd0ee54802c89805L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g;->j6()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Lcom/aide/ui/trainer/g$i;)V
    .registers 6

    const-wide v2, 0x6690ef2686dc8f0L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6690ef2686dc8f0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public vy()V
    .registers 7

    const-wide v4, -0x17aba520f02aefd8L    # -3.7147329739873635E194

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17aba520f02aefd8L    # -3.7147329739873635E194

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0630

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x2b0070eb7bc3471L

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b0070eb7bc3471L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->XL()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0d0645

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0d0626

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public yS()V
    .registers 5

    const-wide v2, -0x1734cb3d5ea8d39fL    # -6.355261033549204E196

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1734cb3d5ea8d39fL    # -6.355261033549204E196

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->restartLesson(Lcom/aide/ui/trainer/g$i;)V

    invoke-direct {p0}, Labcd/Cl;->g3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
