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
            "Ljava/util/Map<",
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
    .registers 3

    const-class v0, Labcd/Cl;

    const-wide v1, -0x20d2e6e11ba0079cL  # -2.9765480524345248E150

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x208b412edbe05fb0L  # -6.790772792491104E151

    :try_start_6
    sget-boolean v3, Labcd/Cl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Cl;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Labcd/Cl;)V
    .registers 1

    invoke-direct {p0}, Labcd/Cl;->Sf()V

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x173d8e24782d4c90L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x10678d1f49adf81fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->VH()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/aide/ui/trainer/TrainerState;->retryCurrentExercise(Ljava/lang/String;I)V

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v2, p0, Labcd/Cl;->Zo:I

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2e
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    invoke-direct {p0}, Labcd/Cl;->ef()V

    invoke-direct {p0}, Labcd/Cl;->KD()V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x10678d1f49adf81fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method static synthetic FH(Labcd/Cl;)Lcom/aide/common/TextToSpeechHelper;
    .registers 1

    iget-object p0, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    return-object p0
.end method

.method static synthetic Hw(Labcd/Cl;)I
    .registers 1

    iget p0, p0, Labcd/Cl;->u7:I

    return p0
.end method

.method private KD()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2b5630cdb4f580c0L
    .end annotation

    const-wide v0, 0x1aafa69b3563f3a9L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState;->showSkipLesson(Lcom/aide/ui/trainer/g$g;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->u7()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    if-eqz v2, :cond_4c

    const-string v2, "Skip Lesson Dialog Shown"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0d0622

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f0d0624

    invoke-static {v5, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Labcd/yl;

    invoke-direct {v5, p0}, Labcd/yl;-><init>(Labcd/Cl;)V

    invoke-static {v2, v4, v3, v5}, Lcom/aide/common/Wa;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    :cond_4c
    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    throw v2
.end method

.method private Mz()V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x63723ebfdb6a394L
    .end annotation

    const-wide v0, 0xf054ebdf7d217L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$d;->tp()I

    move-result v5

    if-ge v4, v5, :cond_ad

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/aide/ui/trainer/g$d;->DW(I)Lcom/aide/ui/trainer/g$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$f;->DW()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-object v7, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_3e

    :cond_3a
    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v6

    :goto_3e
    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$f;->j6()Ljava/lang/String;

    move-result-object v5

    const-string v7, "$package_name$"

    invoke-direct {p0}, Labcd/Cl;->cn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "$project_name$"

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$h;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v7

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "$code_hint$"

    aput-object v9, v8, v3

    const-string v9, "$code_hint_1$"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, "$code_hint_2$"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string v9, "$code_hint_3$"

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const-string v9, "$code_hint_4$"

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const-string v9, "$code_hint_5$"

    const/4 v10, 0x5

    aput-object v9, v8, v10

    const-string v9, "$code_hint_6$"

    const/4 v10, 0x6

    aput-object v9, v8, v10

    const-string v9, "$code_hint_7$"

    const/4 v10, 0x7

    aput-object v9, v8, v10

    const-string v9, "$code_hint_8$"

    const/16 v10, 0x8

    aput-object v9, v8, v10

    const-string v9, "$code_hint_9$"

    const/16 v10, 0x9

    aput-object v9, v8, v10

    const-string v9, "$code_hint_10$"

    const/16 v10, 0xa

    aput-object v9, v8, v10

    invoke-virtual {v7, v6, v5, v8}, Lcom/aide/ui/AIDEEditorPager;->j6(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_ad
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_ba

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Labcd/Zk;->j6(Ljava/util/List;Z)V
    :try_end_ba
    .catchall {:try_start_5 .. :try_end_ba} :catchall_bb

    :cond_ba
    return-void

    :catchall_bb
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_c3

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_c3
    goto :goto_c5

    :goto_c4
    throw v2

    :goto_c5
    goto :goto_c4
.end method

.method private SI()Z
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x23fd06489e25020cL
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, 0x458e2df378191349L  # 1.1675127133743131E27

    :try_start_7
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    invoke-virtual {v4, v0}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v0

    invoke-interface {v0}, Labcd/Nk$a;->VH()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_113

    const-string v6, " "

    const-string v7, "\t"

    const-string v8, ""

    if-eqz v5, :cond_45

    :try_start_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_45
    const/4 v5, 0x0

    :goto_46
    invoke-virtual/range {p0 .. p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aide/ui/trainer/g$d;->Hw()I

    move-result v9

    if-ge v5, v9, :cond_111

    invoke-virtual/range {p0 .. p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/aide/ui/trainer/g$d;->j6(I)Lcom/aide/ui/trainer/g$e;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aide/ui/trainer/g$e;->j6()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/aide/ui/trainer/g$e;->Hw()I

    move-result v12

    invoke-virtual {v9}, Lcom/aide/ui/trainer/g$e;->v5()I

    move-result v13

    invoke-virtual {v9}, Lcom/aide/ui/trainer/g$e;->DW()I

    move-result v14

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_76
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_e2

    if-lt v3, v13, :cond_e2

    if-gt v3, v14, :cond_e2

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_97

    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    :cond_97
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move v0, v3

    move-object/from16 v17, v6

    :goto_a8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_dc

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_bb

    goto :goto_d9

    :cond_bb
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c2

    goto :goto_d6

    :cond_c2
    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_dc

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_d8

    :goto_d6
    const/4 v0, 0x1

    goto :goto_dd

    :cond_d8
    move-object v10, v6

    :goto_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    :cond_dc
    const/4 v0, 0x0

    :goto_dd
    if-eqz v0, :cond_e4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    :cond_e2
    :goto_e2
    move-object/from16 v17, v6

    :cond_e4
    :goto_e4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v17

    goto :goto_76

    :cond_e9
    move-object/from16 v17, v6

    const/4 v0, -0x1

    if-ne v12, v0, :cond_f0

    if-eqz v2, :cond_f4

    :cond_f0
    if-ltz v12, :cond_105

    if-eq v2, v12, :cond_105

    :cond_f4
    invoke-virtual/range {p0 .. p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/aide/ui/trainer/g$e;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_33 .. :try_end_103} :catchall_113

    const/4 v0, 0x0

    return v0

    :cond_105
    const/4 v0, 0x0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v17

    const-wide v2, 0x458e2df378191349L  # 1.1675127133743131E27

    goto/16 :goto_46

    :cond_111
    const/4 v0, 0x1

    return v0

    :catchall_113
    move-exception v0

    sget-boolean v2, Labcd/Cl;->DW:Z

    if-eqz v2, :cond_120

    const-wide v2, 0x458e2df378191349L  # 1.1675127133743131E27

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_120
    goto :goto_122

    :goto_121
    throw v0

    :goto_122
    goto :goto_121
.end method

.method private Sf()V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1c594fb3fa6c040L
    .end annotation

    const-string v0, ".zip"

    const-wide v1, 0x2a02bcf1609ce5bL

    :try_start_7
    sget-boolean v3, Labcd/Cl;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10c

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->Mz()V

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v3

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/Cl;->Zo(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    iget-object v5, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->Zo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aide/ui/trainer/g$a;->FH(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    iget-object v12, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v5

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Labcd/Cl;->cn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v10

    move-object v6, v11

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Labcd/Sk;->j6(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->DW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a4

    iget-object v5, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->DW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/aide/ui/trainer/g$a;->FH(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v11, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v5

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Labcd/Cl;->cn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v10

    move-object v6, v0

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Labcd/Sk;->j6(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a4
    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_c6
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Labcd/Zk;->j6(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    iget-object v6, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f1} :catch_f2
    .catchall {:try_start_e .. :try_end_f1} :catchall_10c

    goto :goto_d6

    :catch_f2
    move-exception v0

    :try_start_f3
    iget-object v3, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    if-nez v3, :cond_fe

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    :cond_fe
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Lesson error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_f3 .. :try_end_10b} :catchall_10c

    :cond_10b
    return-void

    :catchall_10c
    move-exception v0

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_114

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_114
    goto :goto_116

    :goto_115
    throw v0

    :goto_116
    goto :goto_115
.end method

.method static synthetic VH(Labcd/Cl;)V
    .registers 1

    invoke-direct {p0}, Labcd/Cl;->ef()V

    return-void
.end method

.method private VH(Lcom/aide/ui/trainer/g$i;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x21e968765dc07f90L
    .end annotation

    const-wide v0, -0xe4c667320e653d3L  # -5.105147961376001E239

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->u7()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->VH()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v7

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0d062e

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v10, 0x5265c00

    const/4 v8, 0x4

    const-string v12, ""

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    const v5, 0x7f0d062d

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-wide v4, v10

    move v6, v8

    move-object v8, v12

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_86

    :cond_85
    return-void

    :catchall_86
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_8e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8e
    throw v2
.end method

.method private Zo(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12273a29a0778840L
    .end annotation

    const-wide v0, 0x105fd4f37389496fL  # 8.201344623319308E-230

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getInternalFilesDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Lessons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    return-object p1

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
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

    const-wide v0, 0x3430f0c8f684dd7dL  # 2.698787938387083E-57

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v6

    if-ge v5, v6, :cond_32

    invoke-virtual {v3, v5}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v6

    iget-object v7, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v7, v6}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {p0, v6}, Labcd/Cl;->Hw(Lcom/aide/ui/trainer/g$i;)Z

    move-result v7

    if-eqz v7, :cond_2f

    return-object v6

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_32
    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->gn()I

    move-result v2

    :cond_36
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v5

    if-ge v2, v5, :cond_4b

    invoke-virtual {v3, v2}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v5

    iget-object v6, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v6, v5}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result v6

    if-nez v6, :cond_36

    return-object v5

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v5

    if-ge v2, v5, :cond_62

    invoke-virtual {v3, v2}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v5

    iget-object v6, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v6, v5}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result v6

    if-nez v6, :cond_5f

    return-object v5

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_62
    :goto_62
    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v2

    if-ge v4, v2, :cond_78

    invoke-virtual {v3, v4}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    iget-object v5, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v5, v2}, Lcom/aide/ui/trainer/TrainerState;->isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z

    move-result v5
    :try_end_72
    .catchall {:try_start_5 .. :try_end_72} :catchall_7a

    if-nez v5, :cond_75

    return-object v2

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_78
    const/4 v0, 0x0

    return-object v0

    :catchall_7a
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_82

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_82
    goto :goto_84

    :goto_83
    throw v2

    :goto_84
    goto :goto_83
.end method

.method private cn()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7196e504aa48159L
    .end annotation

    const-wide v0, -0x167e8af029250440L  # -1.6703348251292238E200

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.aide.trainer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$h;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-object v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method private dx()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2530ab24ef2e62f0L
    .end annotation

    const-wide v0, 0x147d6d62b22c0d8bL  # 5.594396757420192E-210

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v4

    const/4 v5, 0x0

    if-ge v2, v4, :cond_20

    return v5

    :cond_20
    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->J0()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->u7()Z

    move-result v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    if-nez v0, :cond_37

    return v3

    :cond_37
    return v5

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method private ef()V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x201bcde5c0b9d8a8L
    .end annotation

    const-wide v0, 0x43b64994beec20bfL  # 1.60597828986055859E18

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_f6

    const-string v3, " "

    const-string v4, ""

    if-nez v2, :cond_39

    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$i;->FH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v4}, Lcom/aide/ui/trainer/TrainerState;->showHintForCurrentExercise()Z

    move-result v4

    if-eqz v4, :cond_72

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_72
    move-object v8, v2

    invoke-virtual {p0}, Labcd/Cl;->QX()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->showErrorForCurrentExercise()Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExerciseErrorText()Ljava/lang/String;

    move-result-object v2

    goto :goto_87

    :cond_86
    const/4 v2, 0x0

    :goto_87
    move-object v12, v2

    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Labcd/Cl;->u7()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->DW()I

    move-result v13

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->Ws()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v14, v2, 0x1

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v6, v2, v6

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_cf

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/Cl;->Hw(Lcom/aide/ui/trainer/g$i;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const/4 v2, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v2, 0x0

    :goto_d0
    iget-object v10, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v10}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v10

    if-nez v10, :cond_e6

    if-gez v13, :cond_e6

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v10

    if-le v10, v3, :cond_e6

    const/4 v10, 0x1

    goto :goto_e7

    :cond_e6
    const/4 v10, 0x0

    :goto_e7
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    const-string v11, "\ud83d\ude1e"

    move v7, v2

    invoke-virtual/range {v3 .. v14}, Lcom/aide/ui/AIDEEditorPager;->j6(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_f5
    .catchall {:try_start_1f .. :try_end_f5} :catchall_f6

    return-void

    :catchall_f6
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_fe

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_fe
    throw v2
.end method

.method private g3()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4e0c209aaa90fd59L
    .end annotation

    const-wide v0, 0x5f49043106581d40L  # 1.0236045076790872E151

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    new-instance v3, Labcd/xl;

    invoke-direct {v3, p0}, Labcd/xl;-><init>(Labcd/Cl;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method static synthetic gn(Labcd/Cl;)Lcom/aide/ui/trainer/g$i;
    .registers 1

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Cl;)Lcom/aide/ui/trainer/g;
    .registers 1

    iget-object p0, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    return-object p0
.end method

.method private j6(F)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x29ddda4838c20df4L
    .end annotation

    const-wide v0, 0x28cddb7e2f1e0407L  # 3.879748086102067E-112

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/high16 v2, 0x3fc00000  # 1.5f

    mul-float v2, v2, p1

    const/high16 v3, 0x40400000  # 3.0f

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_54

    double-to-int v2, v2

    const-string v3, ""

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_3c

    :try_start_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "★"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_3c
    :goto_3c
    const/4 v4, 0x3

    if-ge v2, v4, :cond_53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "☆"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_54

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_53
    return-object v3

    :catchall_54
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_61

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    goto :goto_63

    :goto_62
    throw v2

    :goto_63
    goto :goto_62
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

    const-wide v0, -0xb1824be272ee587L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/g;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3, v2}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method private sG()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a5d96180889a57bL
    .end annotation

    const-wide v0, 0x1d2c8a4dfe026bd0L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/g;->Hw(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;

    move-result-object v2

    iput-object v2, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    new-instance v2, Lcom/aide/common/TextToSpeechHelper;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private sh()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x453218146958f905L
    .end annotation

    const-wide v0, 0x2558ea11de76d760L  # 8.985684523527488E-129

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aide/ui/trainer/TrainerState;->calculateLessonAverageFailures(Lcom/aide/ui/trainer/g$g;)F

    move-result v3

    invoke-direct {p0, v3}, Labcd/Cl;->j6(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-object v0

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method static synthetic v5(Labcd/Cl;)Landroid/media/SoundPool;
    .registers 1

    iget-object p0, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    return-object p0
.end method

.method private v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5990494fbf46ea0L
    .end annotation

    const-wide v0, -0x9d8419c45167371L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Labcd/Cl;->Hw:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_20

    return-object v2

    :cond_1d
    const-string p1, ""

    return-object p1

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private vJ()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x30dea3ad8c4070d0L
    .end annotation

    const-wide v0, 0x3977f25444cbc24fL  # 7.379115329117214E-32

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Labcd/wl;

    invoke-direct {v3, p0}, Labcd/wl;-><init>(Labcd/Cl;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method


# virtual methods
.method public BT()V
    .registers 5

    const-wide v0, 0x21f1f700dc5b3539L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->runCurrentExercise()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/Zk;->j6(Z)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0}, Labcd/Cl;->j6()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :goto_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public DW()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x28e773b2ce8d275L  # -1.791773160600502E296

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g;->Hw()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x5f144c7ba9d3100L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    :cond_1b
    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public DW(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v0, 0x461e236a3845d934L  # 5.96951315662389E29

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState;->isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x13b2fb98345f48c4L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "\ud83d\ude1e"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-wide v1, -0x17b4eae562999835L  # -2.471240244735734E194

    :try_start_7
    sget-boolean v3, Labcd/Cl;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_32

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2d

    :cond_2c
    move-object v3, v0

    :goto_2d
    check-cast v3, Ljava/lang/String;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_2f} :catch_30
    .catchall {:try_start_e .. :try_end_2f} :catchall_32

    return-object v3

    :catch_30
    move-exception v1

    return-object v0

    :catchall_32
    move-exception v0

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x29d4fbb1163cf11L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    iget-object v3, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v3, p1}, Lcom/aide/ui/trainer/g;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Cl;->ro()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public FH(Lcom/aide/ui/trainer/g$i;)Z
    .registers 6

    const-wide v0, 0x34cfb4e95926dd00L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState;->isLessonInProgress(Lcom/aide/ui/trainer/g$i;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 6

    const-wide v0, 0x441d790269967e50L  # 1.3591880651530122E20

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d063d

    invoke-static {v4, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ↩"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-object v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public Hw(Lcom/aide/ui/trainer/g$i;)Z
    .registers 8

    const-wide v0, -0x1ba2afef0d9e772cL  # -2.8999745399078635E175

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState;->isLessonFinished(Lcom/aide/ui/trainer/g$i;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    return v3

    :cond_16
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->u7()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1d

    return v3

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_31

    sub-long/2addr v4, v0

    const-wide v0, 0x134fd9000L

    cmp-long p1, v4, v0

    if-gez p1, :cond_30

    const/4 v3, 0x1

    :cond_30
    return v3

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x2770192906bdaa1dL  # 9.974732437011556E-119

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x4106a037b50ced71L  # 185350.9634035635

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "\ud83d\ude03"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public J8()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x50a4ed4d7996e00L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return-object v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public Mr()V
    .registers 5

    const-wide v0, -0x221f123e14e8dae8L  # -1.6514771939188126E144

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g;

    invoke-direct {v2}, Lcom/aide/ui/trainer/g;-><init>()V

    iput-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    new-instance v2, Lcom/aide/ui/trainer/TrainerState;

    invoke-direct {v2}, Lcom/aide/ui/trainer/TrainerState;-><init>()V

    iput-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-direct {p0}, Labcd/Cl;->ro()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public P8()V
    .registers 6

    const-wide v0, -0x1a7d7c5728291a71L  # -9.603169466179146E180

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d0633

    invoke-static {v4, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x286e8c2d6c474bbL

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_22

    invoke-direct {p0}, Labcd/Cl;->sh()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-object v0

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public U2()Z
    .registers 5

    const-wide v0, 0xb5ff1b9aa3956dfL

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->XL()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public VH()Lcom/aide/ui/trainer/g$d;
    .registers 5

    const-wide v0, -0x397214ef396480dfL  # -7.585171106981649E31

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/g$g;->j6(I)Lcom/aide/ui/trainer/g$d;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public Ws()Ljava/lang/String;
    .registers 7

    const-wide v0, -0x48bcadf8b36b70bbL  # -1.7327155396886634E-42

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_66

    const-string v3, " ≫"

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0d0626

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0d062b

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0d062a

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_15 .. :try_end_65} :catchall_66

    return-object v0

    :catchall_66
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_6e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6e
    throw v2
.end method

.method public XL()Lcom/aide/ui/trainer/g$g;
    .registers 5

    const-wide v0, -0x5ed30bcd4d2fcc3L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentLessonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/g$a;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$g;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public Zo()Lcom/aide/ui/trainer/g$a;
    .registers 5

    const-wide v0, 0x1eee30983c90da4cL

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public a8()Z
    .registers 5

    const-wide v0, -0x6f33fd34d9b1cdc8L  # -9.23762961450361E-228

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    if-eqz v2, :cond_23

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt v2, v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public aM()Lcom/aide/ui/trainer/g$c;
    .registers 5

    const-wide v0, 0x1e73d876337a508L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public ei()V
    .registers 11

    const-wide v0, -0x1f816f233182e830L  # -6.557140863980315E156

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Labcd/Cl;->Zo:I

    iget-object v2, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Labcd/Cl;->VH:I

    iget-object v2, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Labcd/Cl;->gn:I

    iget-object v2, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Labcd/Cl;->u7:I

    iget-object v2, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Labcd/Cl;->tp:I

    invoke-direct {p0}, Labcd/Cl;->vJ()V

    invoke-direct {p0}, Labcd/Cl;->sG()V

    invoke-direct {p0}, Labcd/Cl;->Sf()V

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_ba

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    if-nez v2, :cond_80

    invoke-direct {p0}, Labcd/Cl;->Mz()V

    :cond_80
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-eqz v2, :cond_b0

    iget-object v3, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v4, p0, Labcd/Cl;->u7:I

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_b0
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Cl;->VH(Lcom/aide/ui/trainer/g$i;)V

    invoke-direct {p0}, Labcd/Cl;->ef()V
    :try_end_ba
    .catchall {:try_start_5 .. :try_end_ba} :catchall_bb

    :cond_ba
    return-void

    :catchall_bb
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_c3

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_c3
    throw v2
.end method

.method public er()V
    .registers 11

    const-wide v0, -0xfe21eb892bc467dL  # -1.1597308650024769E232

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v3, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v4, p0, Labcd/Cl;->VH:I

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_21
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$d;->we()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    throw v2
.end method

.method public gW()V
    .registers 11

    const-wide v0, -0x253e6c34e2404d8bL  # -1.523003033797798E129

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$d;->VH()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState;->retryCurrentExercise(I)V

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v3, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v4, p0, Labcd/Cl;->u7:I

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2e
    invoke-direct {p0}, Labcd/Cl;->ef()V

    invoke-direct {p0}, Labcd/Cl;->KD()V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x192ad9c4f82136abL

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Cl;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    return-object v2

    :cond_1f
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Labcd/Cl;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-object v0

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public j3()Z
    .registers 5

    const-wide v0, -0x469e1eefb6685c38L  # -2.7547199652395265E-32

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    if-eqz v3, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method public j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;
    .registers 6

    const-wide v0, -0x10b3e7e77753f707L  # -1.331074107419941E228

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/g;->DW(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x1fcb502fefba2c58L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2, p1}, Lcom/aide/ui/trainer/TrainerState;->getLessonAverageFailures(Lcom/aide/ui/trainer/g$i;)F

    move-result v2

    invoke-direct {p0, v2}, Labcd/Cl;->j6(F)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6()V
    .registers 11

    const-wide v0, 0x26610284a2c9bc57L  # 8.041034518135926E-124

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Cl;->U2()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Labcd/Nk;->j6(Z)V

    invoke-direct {p0}, Labcd/Cl;->SI()Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->Ws()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4e

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Cl;->gn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/aide/ui/AIDEEditorPager;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d062f

    invoke-static {v4, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_172

    :cond_4e
    invoke-virtual {p0}, Labcd/Cl;->U2()Z

    move-result v2

    if-eqz v2, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exercise was run: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Cl;->J8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->runCurrentExercise()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, v3}, Labcd/Zk;->j6(Z)V

    goto/16 :goto_172

    :cond_85
    invoke-direct {p0}, Labcd/Cl;->dx()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continueToNextLessonInCourse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xe

    const v7, 0x7f0d060f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V

    goto/16 :goto_172

    :cond_b7
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v4

    if-lt v2, v4, :cond_fd

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->J0()Z

    move-result v2

    if-eqz v2, :cond_fd

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->exerciseHasRun()Z

    move-result v2

    if-nez v2, :cond_fd

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    new-array v2, v3, [Ljava/lang/Object;

    const v5, 0x7f0d062b

    invoke-static {v5, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0d062c

    invoke-static {v3, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Labcd/zl;

    invoke-direct {v7, p0}, Labcd/zl;-><init>(Labcd/Cl;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_172

    :cond_fd
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v4

    if-lt v2, v4, :cond_148

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->J8()Z

    move-result v2

    if-eqz v2, :cond_148

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v2

    if-nez v2, :cond_148

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_148

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0d063f

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f0d063e

    invoke-static {v5, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Labcd/Al;

    invoke-direct {v5, p0}, Labcd/Al;-><init>(Labcd/Cl;)V

    invoke-virtual {v2, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_172

    :cond_148
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v3

    if-lt v2, v3, :cond_16f

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->Ws()Z

    move-result v2

    if-eqz v2, :cond_16f

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_16f

    goto :goto_172

    :cond_16f
    invoke-virtual {p0}, Labcd/Cl;->nw()V
    :try_end_172
    .catchall {:try_start_5 .. :try_end_172} :catchall_173

    :cond_172
    :goto_172
    return-void

    :catchall_173
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_17b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17b
    throw v2
.end method

.method public j6(Lcom/aide/ui/trainer/g$i;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1c5439ebb293e511L  # -1.3416586069871417E172

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-eqz p2, :cond_21

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v0, p1}, Lcom/aide/ui/trainer/TrainerState;->restartLesson(Lcom/aide/ui/trainer/g$i;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_57

    :try_start_18
    invoke-direct {p0, p1}, Labcd/Cl;->Zo(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_20
    .catchall {:try_start_18 .. :try_end_1f} :catchall_57

    goto :goto_21

    :catch_20
    move-exception v0

    :cond_21
    :goto_21
    :try_start_21
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v0

    iget-object v1, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/g$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Cl;->sG()V

    goto :goto_49

    :cond_40
    iget-object v0, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    :goto_49
    invoke-direct {p0}, Labcd/Cl;->g3()V

    goto :goto_56

    :cond_4d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V
    :try_end_56
    .catchall {:try_start_21 .. :try_end_56} :catchall_57

    :goto_56
    return-void

    :catchall_57
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_6c

    const-wide v2, -0x1c5439ebb293e511L  # -1.3416586069871417E172

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Cl;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x6014a9aa0408418L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
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
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Labcd/Cl;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0x6014a9aa0408418L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public lg()Z
    .registers 5

    const-wide v0, 0x261753922ad59763L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$g;->aM()Lcom/aide/ui/trainer/g$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$h;->j6()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public nw()V
    .registers 12

    const-wide v0, 0x2f50b7aaf1afdf33L  # 8.811934483488228E-81

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Cl;->dx()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    return-void

    :cond_1a
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$g;->XL()I

    move-result v4

    if-lt v2, v4, :cond_49

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    if-nez v2, :cond_3b

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_d0

    :cond_3b
    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Cl;->g3()V

    goto/16 :goto_d0

    :cond_49
    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->XL()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->Ws()Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x0

    :cond_5f
    :goto_5f
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/TrainerState;->startNextExercise()V

    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/aide/ui/trainer/TrainerState;->setLessonFinished(Lcom/aide/ui/trainer/g$g;)V

    invoke-direct {p0}, Labcd/Cl;->cb()Lcom/aide/ui/trainer/g$i;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-direct {p0, v2}, Labcd/Cl;->VH(Lcom/aide/ui/trainer/g$i;)V

    :cond_7c
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Labcd/Cl;->EQ:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/trainer/g$d;->J0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v4, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v5, p0, Labcd/Cl;->gn:I

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_ca

    :cond_b3
    if-eqz v3, :cond_c5

    iget-object v3, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v4, p0, Labcd/Cl;->u7:I

    :goto_b9
    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_ca

    :cond_c5
    iget-object v3, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v4, p0, Labcd/Cl;->VH:I

    goto :goto_b9

    :cond_ca
    :goto_ca
    invoke-direct {p0}, Labcd/Cl;->Mz()V

    invoke-direct {p0}, Labcd/Cl;->ef()V
    :try_end_d0
    .catchall {:try_start_5 .. :try_end_d0} :catchall_d1

    :goto_d0
    return-void

    :catchall_d1
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_d9

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_d9
    goto :goto_db

    :goto_da
    throw v2

    :goto_db
    goto :goto_da
.end method

.method public rN()V
    .registers 11

    const-wide v0, -0x4cb397d04c140c01L  # -1.3810707608613138E-61

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v3, p0, Labcd/Cl;->v5:Landroid/media/SoundPool;

    iget v4, p0, Labcd/Cl;->tp:I

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public tp()Ljava/lang/String;
    .registers 6

    const-wide v0, 0x909f0006b33e398L  # 4.0219998470985435E-265

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "≪ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d0652

    invoke-static {v4, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-object v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public u7()Ljava/lang/String;
    .registers 7

    const-wide v0, -0x3fdc1b5d98a75b03L  # -9.946551541872845

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_8b

    const-string v3, " ≫"

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0d062b

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    invoke-virtual {p0}, Labcd/Cl;->U2()Z

    move-result v2

    if-eqz v2, :cond_72

    new-array v2, v4, [Ljava/lang/Object;

    const v3, 0x7f0d0645

    invoke-static {v3, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/TrainerState;->getCurrentExercise()I

    move-result v3

    if-nez v3, :cond_60

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/g;->EQ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Ctrl+E)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ►"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0d0626

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8a
    .catchall {:try_start_15 .. :try_end_8a} :catchall_8b

    return-object v0

    :catchall_8b
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_93

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_93
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, 0xd0ee54802c89805L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->we:Lcom/aide/ui/trainer/g;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g;->j6()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5(Lcom/aide/ui/trainer/g$i;)V
    .registers 6

    const-wide v0, 0x6690ef2686dc8f0L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState;->startLesson(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public vy()V
    .registers 6

    const-wide v0, -0x17aba520f02aefd8L  # -3.7147329739873635E194

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d0630

    invoke-static {v4, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Labcd/Cl;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public we()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x2b0070eb7bc3471L

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->J0:Lcom/aide/ui/trainer/g$a;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    invoke-virtual {p0}, Labcd/Cl;->a8()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    invoke-virtual {p0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->XL()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_2e

    :cond_24
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0d0626

    invoke-static {v3, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    :goto_2e
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0d0645

    invoke-static {v3, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return-object v0

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public yS()V
    .registers 5

    const-wide v0, -0x1734cb3d5ea8d39fL  # -6.355261033549204E196

    :try_start_5
    sget-boolean v2, Labcd/Cl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cl;->FH:Lcom/aide/ui/trainer/TrainerState;

    invoke-virtual {p0}, Labcd/Cl;->XL()Lcom/aide/ui/trainer/g$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/TrainerState;->restartLesson(Lcom/aide/ui/trainer/g$i;)V

    invoke-direct {p0}, Labcd/Cl;->g3()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Cl;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
