.class public Lcom/aide/common/u;
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
.field private FH:C
    .annotation runtime Labcd/ru;
        field = 0x15c978eaf20d92c4L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x373e5d52e17663bL
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x17647d60d9c00d68L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0xd20aecb345db800L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x1c7d3e8ee7e1c81dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/u;

    const-wide v1, -0x9380d254a254410L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ICZZZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/common/u;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p2}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x2299d4aa74f46afL  # -1.464010085899195E298

    const/4 v3, 0x0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p2, p0, Lcom/aide/common/u;->FH:C

    iput p1, p0, Lcom/aide/common/u;->Hw:I

    iput-boolean p3, p0, Lcom/aide/common/u;->v5:Z

    iput-boolean p4, p0, Lcom/aide/common/u;->Zo:Z

    iput-boolean p5, p0, Lcom/aide/common/u;->VH:Z
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/common/u;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x2299d4aa74f46afL  # -1.464010085899195E298

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p2}, Ljava/lang/Character;-><init>(C)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    throw v0
.end method

.method public constructor <init>(IZZZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/common/u;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x71d83c5b88e8268L

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput-char v0, p0, Lcom/aide/common/u;->FH:C

    iput p1, p0, Lcom/aide/common/u;->Hw:I

    iput-boolean p2, p0, Lcom/aide/common/u;->v5:Z

    iput-boolean p3, p0, Lcom/aide/common/u;->Zo:Z

    iput-boolean p4, p0, Lcom/aide/common/u;->VH:Z
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/common/u;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x71d83c5b88e8268L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/common/u;
    .registers 13

    const-wide v0, -0x2337054a28f6ad97L  # -9.295846171475375E138

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/common/u;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_18

    return-object v2

    :cond_18
    new-instance v4, Lcom/aide/common/u;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v8, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const/4 v5, 0x4

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/aide/common/u;-><init>(ICZZZ)V
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_43

    return-object v4

    :catchall_43
    move-exception v3

    sget-boolean v4, Lcom/aide/common/u;->DW:Z

    if-eqz v4, :cond_4b

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v3
.end method

.method private v5()Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x47bd4fef48c328c0L
    .end annotation

    const-wide v0, 0x26bf70902939dcd3L  # 4.755981521568162E-122

    :try_start_5
    sget-boolean v2, Lcom/aide/common/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/common/u;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e8

    const/4 v3, -0x1

    const-string v4, ""

    if-eq v2, v3, :cond_d2

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_cf

    const/16 v3, 0x18

    if-eq v2, v3, :cond_cc

    const/16 v3, 0x19

    if-eq v2, v3, :cond_c9

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_c6

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_c3

    const/16 v3, 0x42

    if-eq v2, v3, :cond_c0

    const/16 v3, 0x43

    if-eq v2, v3, :cond_bd

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_ba

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_b7

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_b4

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_b1

    packed-switch v2, :pswitch_data_f2

    :try_start_42
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_e8

    goto :goto_51

    :pswitch_45  #0x16
    const-string v0, "Right"

    return-object v0

    :pswitch_48  #0x15
    const-string v0, "Left"

    return-object v0

    :pswitch_4b  #0x14
    const-string v0, "Down"

    return-object v0

    :pswitch_4e  #0x13
    const-string v0, "Up"

    return-object v0

    :goto_51
    :try_start_51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    iget v6, p0, Lcom/aide/common/u;->Hw:I

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_74

    return-object v2

    :cond_74
    iget v2, p0, Lcom/aide/common/u;->Hw:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "keycode_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_8c
    const-string v4, "_"

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b0
    .catchall {:try_start_51 .. :try_end_b0} :catchall_e8

    return-object v0

    :cond_b1
    const-string v0, "End"

    return-object v0

    :cond_b4
    const-string v0, "Home"

    return-object v0

    :cond_b7
    const-string v0, "PgDown"

    return-object v0

    :cond_ba
    const-string v0, "PgUp"

    return-object v0

    :cond_bd
    const-string v0, "Backspace"

    return-object v0

    :cond_c0
    const-string v0, "Enter"

    return-object v0

    :cond_c3
    const-string v0, "Space"

    return-object v0

    :cond_c6
    const-string v0, "Tab"

    return-object v0

    :cond_c9
    const-string v0, "VolDown"

    return-object v0

    :cond_cc
    const-string v0, "VolUp"

    return-object v0

    :cond_cf
    const-string v0, "VolMute"

    return-object v0

    :cond_d2
    :try_start_d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v3, p0, Lcom/aide/common/u;->FH:C

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e7
    .catchall {:try_start_d2 .. :try_end_e7} :catchall_e8

    return-object v0

    :catchall_e8
    move-exception v2

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_f0

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_f0
    throw v2

    nop

    :pswitch_data_f2
    .packed-switch 0x13
        :pswitch_4e  #00000013
        :pswitch_4b  #00000014
        :pswitch_48  #00000015
        :pswitch_45  #00000016
    .end packed-switch
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x2543e78aa5f62a2fL  # 3.589403273887483E-129

    :try_start_5
    sget-boolean v2, Lcom/aide/common/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/common/u;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x1b2b4020116dc5f3L  # 8.405951429920376E-178

    :try_start_5
    sget-boolean v2, Lcom/aide/common/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-char v0, p0, Lcom/aide/common/u;->FH:C
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_17

    const v1, 0xffff

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 6

    const-string v0, ","

    const-wide v1, -0xb383efdaed91300L

    :try_start_7
    sget-boolean v3, Lcom/aide/common/u;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/aide/common/u;->Hw:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v4, p0, Lcom/aide/common/u;->FH:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/aide/common/u;->v5:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/aide/common/u;->Zo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/aide/common/u;->VH:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3d

    return-object v0

    :catchall_3d
    move-exception v0

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public j6()C
    .registers 5

    const-wide v0, -0x6fe23f154c06cd9L  # -7.72925717732922E274

    :try_start_5
    sget-boolean v2, Lcom/aide/common/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-char v0, p0, Lcom/aide/common/u;->FH:C
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/common/u;)Z
    .registers 8

    const-wide v0, -0x612cb015974028cL

    :try_start_5
    sget-boolean v2, Lcom/aide/common/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/common/u;->VH:Z

    iget-boolean v3, p1, Lcom/aide/common/u;->VH:Z

    const/4 v4, 0x0

    if-eq v2, v3, :cond_14

    return v4

    :cond_14
    iget-boolean v2, p0, Lcom/aide/common/u;->Zo:Z

    iget-boolean v3, p1, Lcom/aide/common/u;->Zo:Z

    if-eq v2, v3, :cond_1b

    return v4

    :cond_1b
    iget-boolean v2, p0, Lcom/aide/common/u;->v5:Z

    iget-boolean v3, p1, Lcom/aide/common/u;->v5:Z

    if-eq v2, v3, :cond_22

    return v4

    :cond_22
    iget v2, p0, Lcom/aide/common/u;->Hw:I

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2d

    iget v3, p1, Lcom/aide/common/u;->Hw:I

    if-ne v2, v3, :cond_2d

    return v5

    :cond_2d
    iget-char v2, p0, Lcom/aide/common/u;->FH:C

    const v3, 0xffff

    if-eq v2, v3, :cond_39

    iget-char p1, p1, Lcom/aide/common/u;->FH:C
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3a

    if-ne v2, p1, :cond_39

    return v5

    :cond_39
    return v4

    :catchall_3a
    move-exception v2

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2191f46a535f78e9L  # -7.503497899570743E146

    :try_start_5
    sget-boolean v2, Lcom/aide/common/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/common/u;->v5:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_61

    const-string v3, ""

    if-eqz v2, :cond_23

    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Shift+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_23
    iget-boolean v2, p0, Lcom/aide/common/u;->Zo:Z

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ctrl+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_38
    iget-boolean v2, p0, Lcom/aide/common/u;->VH:Z

    if-eqz v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Alt+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aide/common/u;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catchall {:try_start_12 .. :try_end_60} :catchall_61

    return-object v0

    :catchall_61
    move-exception v2

    sget-boolean v3, Lcom/aide/common/u;->DW:Z

    if-eqz v3, :cond_69

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_69
    throw v2
.end method
