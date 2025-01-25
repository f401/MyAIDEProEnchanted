.class public Labcd/rh;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2afbdd4e5c6f9630L
    .end annotation
.end field

.field private gn:Labcd/rh$a;
    .annotation runtime Labcd/ru;
        field = 0x16daf6530abe5830L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x338d819598f26411L
    .end annotation
.end field

.field private u7:Ljava/lang/CharSequence;
    .annotation runtime Labcd/ru;
        field = 0x17158f5abd79a8fdL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/rh;

    const-wide v1, 0x7ec73c7e3cf488bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/rh$a;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/rh;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v1, -0xce6c84a747599dL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Labcd/rh;->u7:Ljava/lang/CharSequence;

    iput-object p2, p0, Labcd/rh;->EQ:Ljava/lang/String;

    iput-object p3, p0, Labcd/rh;->tp:Ljava/lang/String;

    iput-object p4, p0, Labcd/rh;->gn:Labcd/rh$a;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/rh;->VH:Z

    if-eqz v1, :cond_30

    const-wide v2, -0xce6c84a747599dL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method static synthetic DW(Labcd/rh;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/rh;->FH(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private DW(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5f9cb9e5d594bb60L
    .end annotation

    const-wide v0, -0x288ae227b81a8500L  # -2.0313370910672665E113

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Labcd/rh;->U2(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->j3(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->aM(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->er(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->EQ(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->Ws(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->J0(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->u7(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->lg(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/rh;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_92
    .catchall {:try_start_5 .. :try_end_92} :catchall_93

    return-void

    :catchall_93
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_9b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_9b
    throw v2
.end method

.method private EQ(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x211cbc5ee45c6cf9L
    .end annotation

    const-wide v0, -0xd3f487b7d0a1b11L  # -5.70717705558431E244

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08002b

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private FH(Landroid/app/AlertDialog;)V
    .registers 20
    .annotation runtime Labcd/su;
        method = -0x13cec8f67e7d84fbL
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-wide v12, 0x126b08837ce86e9dL

    :try_start_9
    sget-boolean v0, Labcd/rh;->Zo:Z

    if-eqz v0, :cond_10

    invoke-static {v12, v13, v15, v14}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct/range {p0 .. p1}, Labcd/rh;->Mr(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {p0 .. p1}, Labcd/rh;->Hw(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Labcd/rh;->QX(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Labcd/rh;->QX(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Labcd/rh;->tp(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v10

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct/range {p0 .. p1}, Labcd/rh;->rN(Landroid/app/AlertDialog;)I

    move-result v2

    int-to-long v12, v2

    const-wide v16, 0x757b12c00L

    mul-long v12, v12, v16

    add-long/2addr v0, v12

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {p0 .. p1}, Labcd/rh;->we(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p1}, Labcd/rh;->J8(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p1}, Labcd/rh;->gn(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {p0 .. p1}, Labcd/rh;->a8(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Labcd/rh;->Zo(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Labcd/qh;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v14, v0

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Labcd/qh;-><init>(Labcd/rh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception v0

    sget-boolean v1, Labcd/rh;->VH:Z

    if-eqz v1, :cond_77

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, 0x126b08837ce86e9dL

    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_79

    :cond_77
    move-object/from16 v1, p0

    :goto_79
    throw v0
.end method

.method private Hw(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe99011369643cafL
    .end annotation

    const-wide v0, 0x8bd0a2eb4dcff9L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private J0(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x293a86be47d408e5L
    .end annotation

    const-wide v0, -0x2c0b65780131dfedL  # -2.7505689286175173E96

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08002c

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private J8(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x8e65ca21b63003L
    .end annotation

    const-wide v0, -0x15edcd3402544a35L  # -8.915196126783478E202

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->Ws(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private Mr(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x373e8c496792c4L
    .end annotation

    const-wide v0, -0x4716f257364d914cL  # -1.5078440615507201E-34

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->U2(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private QX(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x972675a9e0d7280L
    .end annotation

    const-wide v0, 0xb4a41c3227a1240L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->j3(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private U2(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x203578657c93f74fL
    .end annotation

    const-wide v0, -0xccdea570db6feffL  # -7.902883672518978E246

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080030

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17875dcc0b3ca280L
    .end annotation

    const-wide v0, 0x10b9516a7606ed70L  # 4.174776381410844E-228

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080029

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private Ws(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x266d9bf18375b1f8L
    .end annotation

    const-wide v0, -0xaaa94e2680942e0L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08002d

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private XL(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2eb864386c83b0d8L
    .end annotation

    const-wide v0, -0x8faa0bcc2b28b10L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->aM(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private Zo(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x730ebd63f85d211L
    .end annotation

    const-wide v0, -0x83e879fb4af1d77L  # -7.210485415099948E268

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->VH(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private a8(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb69b73ecadee41cL
    .end annotation

    const-wide v0, 0x18f8007300fd384L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->lg(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private aM(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x30577746803ecc89L
    .end annotation

    const-wide v0, 0x210c0970fd148407L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08002f

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private er(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x199f6063b1ebd918L
    .end annotation

    const-wide v0, -0x598f9716a6b4fc0L  # -4.179623547677861E281

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080032

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private gn(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1239ce584f209b6cL
    .end annotation

    const-wide v0, 0xfeee4c35d16b4ecL

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->u7(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private j3(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4cdb87cf8497159dL
    .end annotation

    const-wide v0, -0x311d4482a960d043L  # -1.0342891515167734E72

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08002e

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Labcd/rh;)Labcd/rh$a;
    .registers 1

    iget-object p0, p0, Labcd/rh;->gn:Labcd/rh$a;

    return-object p0
.end method

.method static synthetic j6(Labcd/rh;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/rh;->DW(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private lg(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1f46c994e819c467L
    .end annotation

    const-wide v0, 0x76814acb34e81b1L  # 5.5642179684093E-273

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080031

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private rN(Landroid/app/AlertDialog;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2632652039e6ca37L
    .end annotation

    const-wide v0, -0x1798420348cbcad1L  # -8.665767356231232E194

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_24

    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Labcd/rh;->er(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_20} :catch_21
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    return p1

    :catch_21
    move-exception p1

    const/4 p1, 0x0

    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method private tp(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x82bfcb528dfba60L
    .end annotation

    const-wide v0, 0x111a33daee967be8L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->EQ(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private u7(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x280f3d6e3ce7de4dL
    .end annotation

    const-wide v0, 0x2b1ce3b6c6a6922dL

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f08002a

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private v5(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xa4a8eaa5e96154L
    .end annotation

    const-wide v0, 0x1a9ae3bcf3f33874L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f080028

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private we(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2abf3301704c8e10L
    .end annotation

    const-wide v0, -0x12455836357a7978L  # -3.763764308464894E220

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/rh;->J0(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2699f0f6b1e5c450L
    .end annotation

    const-wide v0, 0x1b78ff9db9a1ca58L

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0690

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Labcd/mh;

    invoke-direct {v5, p0}, Labcd/mh;-><init>(Labcd/rh;)V

    const v6, 0x7f0d068e

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Labcd/lh;

    invoke-direct {v5, p0}, Labcd/lh;-><init>(Labcd/rh;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v4, Labcd/nh;

    invoke-direct {v4, p0, v3}, Labcd/nh;-><init>(Labcd/rh;Landroid/app/AlertDialog;)V

    const v5, 0x7f080030

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v6, 0x7f080028

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v7, 0x7f08002e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v8, 0x7f08002f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f080032

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f08002b

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f08002d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f08002c

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f080031

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f08002a

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f080029

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Labcd/rh;->u7:Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Labcd/rh;->EQ:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Labcd/rh;->tp:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Labcd/rh;->tp:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Labcd/oh;

    invoke-direct {v2, p0}, Labcd/oh;-><init>(Labcd/rh;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_ec
    .catchall {:try_start_5 .. :try_end_ec} :catchall_ed

    return-object v3

    :catchall_ed
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_f5

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f5
    throw v2
.end method

.method protected j6(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x55be2ccf70245f1L
    .end annotation

    const-wide v0, 0x24a0807a4f42a119L  # 2.90606267298827E-132

    :try_start_5
    sget-boolean v2, Labcd/rh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-direct {p0, p1}, Labcd/rh;->Mr(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->U2(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-direct {p0, p1}, Labcd/rh;->tp(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5a

    invoke-direct {p0, p1}, Labcd/rh;->rN(Landroid/app/AlertDialog;)I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_5a

    invoke-direct {p0, p1}, Labcd/rh;->Hw(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5a

    invoke-direct {p0, p1}, Labcd/rh;->QX(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5a

    invoke-direct {p0, p1}, Labcd/rh;->QX(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Labcd/rh;->XL(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_5f

    :cond_5e
    return-void

    :catchall_5f
    move-exception v2

    sget-boolean v3, Labcd/rh;->VH:Z

    if-eqz v3, :cond_67

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    throw v2
.end method
