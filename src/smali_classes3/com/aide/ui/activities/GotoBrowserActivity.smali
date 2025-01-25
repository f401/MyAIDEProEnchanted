.class public Lcom/aide/ui/activities/GotoBrowserActivity;
.super Lcom/aide/ui/ThemedGotoActivity;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/activities/GotoBrowserActivity$a;
    }
.end annotation


# static fields
.field private static FH:I
    .annotation runtime Labcd/ru;
        field = 0x29292c3e5b11c8d3L
    .end annotation
.end field

.field private static Hw:Ljava/lang/CharSequence;
    .annotation runtime Labcd/ru;
        field = 0x2900213b53bf7ecdL
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private VH:Lcom/aide/common/sa;
    .annotation runtime Labcd/ru;
        field = 0x1ea57c88637b16a3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x16ea1ed60c4a910L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2b43b0b3adc72760L  # -1.5480134850298684E100

    :try_start_6
    const-class v3, Lcom/aide/ui/activities/GotoBrowserActivity;

    const-wide v4, -0x94440bad118f03dL  # -8.737246563262376E263

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x32

    sput v3, Lcom/aide/ui/activities/GotoBrowserActivity;->FH:I
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v4, :cond_24

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v3
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0xec9ae3a3cf133bcL  # -2.270908209493251E237

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/ThemedGotoActivity;-><init>()V

    new-instance v3, Lcom/aide/common/sa;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f0d069a

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/aide/common/sa;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aide/ui/activities/GotoBrowserActivity;->VH:Lcom/aide/common/sa;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method private DW(Lcom/aide/engine/SourceEntity;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x23f587654d7a0d00L
    .end annotation

    const-wide v0, 0x18c93f8bb6f52d1fL  # 2.833372005105397E-189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v3

    sget-object v4, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    if-ne v3, v4, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    :cond_3a
    return-object v2

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method static synthetic DW(Lcom/aide/ui/activities/GotoBrowserActivity;Lcom/aide/engine/SourceEntity;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/engine/SourceEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3108d07582c69d3L
    .end annotation

    const-wide v0, 0x2650fb1534d02becL  # 4.013652288482637E-124

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800cd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const v3, 0x7f0800cc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    sget v4, Lcom/aide/ui/activities/GotoBrowserActivity;->FH:I

    invoke-virtual {v2, v3, v4}, Labcd/Xj;->FH(Ljava/lang/String;I)V

    goto :goto_45

    :cond_3c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    sget v4, Lcom/aide/ui/activities/GotoBrowserActivity;->FH:I

    invoke-virtual {v2, v3, v4}, Labcd/Xj;->DW(Ljava/lang/String;I)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    :goto_45
    return-void

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    throw v2
.end method

.method static synthetic DW(Lcom/aide/ui/activities/GotoBrowserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6()V

    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/activities/GotoBrowserActivity;)Lcom/aide/common/sa;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/GotoBrowserActivity;->VH:Lcom/aide/common/sa;

    return-object p0
.end method

.method private j6(Lcom/aide/engine/SourceEntity;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x62aee6d206d75845L
    .end annotation

    const-wide v0, 0x5a73dbd370d4a000L  # 5.377109571515653E127

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v2

    sget-object v3, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    if-ne v2, v3, :cond_19

    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->J0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->Zo()Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-object p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/activities/GotoBrowserActivity;Lcom/aide/engine/SourceEntity;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/activities/GotoBrowserActivity;->DW(Lcom/aide/engine/SourceEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1f5442869d9926b1L
    .end annotation

    const-wide v0, 0x224cd953a9798a60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(ZLjava/util/List;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public static j6(Landroid/app/Activity;ZI)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x266499fb9a3e0827L  # 9.738914125774699E-124

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_SYMBOLS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x266499fb9a3e0827L  # 9.738914125774699E-124

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public static j6(Landroid/content/Intent;)V
    .registers 11

    const/4 v0, 0x0

    const-wide v1, 0x2e4f6d3ee7d32a8cL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Labcd/Tl;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "FILEPATH"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "STARTLINE_EXTRA"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "STARTCOLUMN_EXTRA"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "ENDLINE_EXTRA"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "ENDCOLUMN_EXTRA"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v4, :cond_55

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/activities/GotoBrowserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/GotoBrowserActivity;->DW()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/GotoBrowserActivity;Ljava/lang/String;IIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/GotoBrowserActivity;ZLjava/util/List;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(ZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x7852fcdf50dff24L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5d87f052eb81c7f7L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/activities/GotoBrowserActivity;->VH:Lcom/aide/common/sa;

    invoke-virtual {v0}, Lcom/aide/common/sa;->j6()V

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "STARTLINE_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "STARTCOLUMN_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ENDLINE_EXTRA"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ENDCOLUMN_EXTRA"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_65
    .catchall {:try_start_0 .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v1, :cond_8a

    const-wide v2, -0x5d87f052eb81c7f7L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    throw v0
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x20795cbc29d6392dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1f2604fd6a1937a8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/ui/activities/y;

    invoke-direct {v0, p0, p2}, Lcom/aide/ui/activities/y;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x1f2604fd6a1937a8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private j6(ZLjava/util/List;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2d429fd6b1faa873L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1263ec7359976e30L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const v0, 0x7f0800cb

    const v1, 0x7f0800ce

    const/4 v2, 0x0

    const v3, 0x7f0800ca

    const/16 v4, 0x8

    if-eqz p1, :cond_39

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_cc

    :cond_39
    if-nez p2, :cond_6d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/aide/ui/activities/GotoBrowserActivity;->FH:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const v2, 0x7f0d0692

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cc

    :cond_6d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_96

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0693

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    :cond_96
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2, p3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/aide/ui/activities/GotoBrowserActivity$a;

    invoke-direct {v1, p0, p0, p2}, Lcom/aide/ui/activities/GotoBrowserActivity$a;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/aide/ui/activities/w;

    invoke-direct {v1, p0, v0}, Lcom/aide/ui/activities/w;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/aide/ui/activities/x;

    invoke-direct {v1, p0, v0}, Lcom/aide/ui/activities/x;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    :try_end_cc
    .catchall {:try_start_0 .. :try_end_cc} :catchall_cd

    :goto_cc
    return-void

    :catchall_cd
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v1, :cond_e3

    const-wide v2, 0x1263ec7359976e30L

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e3
    goto :goto_e5

    :goto_e4
    throw v0

    :goto_e5
    goto :goto_e4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x8221e091366e50cL
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, 0x2b97d48deb44f2bL

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedGotoActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/activities/s;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/s;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;)V

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/service/r;)V

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/aide/ui/activities/t;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/t;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v1, Lcom/aide/ui/activities/GotoBrowserActivity;->Hw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4a
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_SYMBOLS"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Lcom/aide/ui/activities/u;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/u;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/activities/v;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/v;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6()V

    invoke-direct {p0}, Lcom/aide/ui/activities/GotoBrowserActivity;->DW()V
    :try_end_86
    .catchall {:try_start_a .. :try_end_86} :catchall_87

    return-void

    :catchall_87
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v1, :cond_8f

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8f
    throw v0
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x41b21e9693b028L
    .end annotation

    const-wide v0, -0x2bad5159b4281a67L  # -1.5961996143433475E98

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "Goto Browser"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2063c4bf2b6efa00L
    .end annotation

    const-wide v0, -0x23eddb66c37510b7L  # -3.2967520574169E135

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/GotoBrowserActivity;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800cc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sput-object v2, Lcom/aide/ui/activities/GotoBrowserActivity;->Hw:Ljava/lang/CharSequence;

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Goto Browser"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/GotoBrowserActivity;->Zo:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method
