.class public Labcd/Yh;
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
.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2493d9cd1645c418L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x209d8fc2071e00b8L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1c4e99037d104e03L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Yh;

    const-wide v1, 0x3eb3a5bfd2959f55L  # 1.1710797685696493E-6

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const-wide v1, 0x352147385a907617L  # 9.019643153012E-53

    :try_start_6
    sget-boolean v3, Labcd/Yh;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ExportAPKDialog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/AppProjects"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "DefaultAPKDir"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/gj;->Mr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Labcd/Yh;->u7:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/AppProjects/publish.keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DefaultKeyStore"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Labcd/Yh;->gn:Ljava/lang/String;

    iput-object p1, p0, Labcd/Yh;->tp:Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_6 .. :try_end_77} :catchall_78

    return-void

    :catchall_78
    move-exception v3

    sget-boolean v4, Labcd/Yh;->VH:Z

    if-eqz v4, :cond_80

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2c9e4073e8e26b81L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Yh;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x301a19aaca2d2e3bL  # 5.635156612751355E-77

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p2, p0, Labcd/Yh;->u7:Ljava/lang/String;

    iput-object p3, p0, Labcd/Yh;->gn:Ljava/lang/String;

    iput-object p1, p0, Labcd/Yh;->tp:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Yh;->VH:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x301a19aaca2d2e3bL  # 5.635156612751355E-77

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Rh;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Yh;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x4d10a6e2ef4febccL  # -2.3813440389817833E-63

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0, p1, p2, p3}, Labcd/Yh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Yh;->VH:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x4d10a6e2ef4febccL  # -2.3813440389817833E-63

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method static synthetic DW(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Yh;->FH(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1850d5581191d70L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Yh;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x652c646f0e5910c0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Labcd/rh;

    new-instance v1, Labcd/Xh;

    invoke-direct {v1, p0, p1, p2}, Labcd/Xh;-><init>(Labcd/Yh;Landroid/app/Activity;Ljava/lang/String;)V

    const-string v2, "appkey"

    const-string v3, ""

    invoke-direct {v0, p3, v2, v3, v1}, Labcd/rh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/rh$a;)V

    invoke-static {p1, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Labcd/Yh;->VH:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x652c646f0e5910c0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method private DW(Landroid/app/AlertDialog;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x5151f74f40d9bae0L
    .end annotation

    const-wide v0, 0x1d8a9e8c45b03fd0L

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Labcd/Yh;->Hw(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, p1}, Labcd/Yh;->Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method static synthetic FH(Labcd/Yh;Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Yh;->v5(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private FH(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1d5438d3d973b54cL
    .end annotation

    const-wide v0, 0xb007e3fe01f2760L

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Yh;->Hw(Landroid/app/AlertDialog;)Landroid/widget/EditText;

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

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private Hw(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x228245ac7b6d93bfL
    .end annotation

    const-wide v0, -0x18710aa10889347dL  # -6.896788481445959E190

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800a4

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5d5a165419c33610L
    .end annotation

    const-wide v0, 0x3e13a390247855ccL  # 1.1431354906765E-9

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800a5

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method static synthetic j6(Labcd/Yh;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/Yh;->tp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j6(Labcd/Yh;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/Yh;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Labcd/Yh;Landroid/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Yh;->DW(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic j6(Labcd/Yh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Yh;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6f3d718627cb9b80L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Yh;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x4239393449887ae8L  # 1.083339104084801E11

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ExportAPKDialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DefaultKeyStore"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "DefaultAPKDir"

    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/Yh;->VH:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x4239393449887ae8L  # 1.083339104084801E11

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method private v5(Landroid/app/AlertDialog;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x287969f2ec51eb7dL
    .end annotation

    const-wide v0, 0x232bce4337ff15cdL

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Yh;->Zo(Landroid/app/AlertDialog;)Landroid/widget/EditText;

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

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x4b8a58a1997ac50L
    .end annotation

    const-wide v0, -0x21632da2af376c94L  # -5.75834968124911E147

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a001b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d068f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Labcd/Th;

    invoke-direct {v5, p0}, Labcd/Th;-><init>(Labcd/Yh;)V

    const v6, 0x7f0d068d

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Labcd/Sh;

    invoke-direct {v5, p0, p1}, Labcd/Sh;-><init>(Labcd/Yh;Landroid/app/Activity;)V

    const v6, 0x7f0d0690

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Labcd/Rh;

    invoke-direct {v5, p0}, Labcd/Rh;-><init>(Labcd/Yh;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f0800a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Labcd/Yh;->u7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Labcd/Uh;

    invoke-direct {v5, p0, v3}, Labcd/Uh;-><init>(Labcd/Yh;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f0800a5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v4, p0, Labcd/Yh;->gn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Labcd/Vh;

    invoke-direct {v4, p0, v3}, Labcd/Vh;-><init>(Labcd/Yh;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Labcd/Wh;

    invoke-direct {v2, p0}, Labcd/Wh;-><init>(Labcd/Yh;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_87
    .catchall {:try_start_5 .. :try_end_87} :catchall_88

    return-object v3

    :catchall_88
    move-exception v2

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_90

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_90
    throw v2
.end method

.method protected j6(Landroid/app/AlertDialog;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11abf2155213d41L
    .end annotation

    const-wide v0, 0x2c69197590ffccfL

    :try_start_5
    sget-boolean v2, Labcd/Yh;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-direct {p0, p1}, Labcd/Yh;->v5(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-direct {p0, p1}, Labcd/Yh;->FH(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->U2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/Yh;->VH:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method
