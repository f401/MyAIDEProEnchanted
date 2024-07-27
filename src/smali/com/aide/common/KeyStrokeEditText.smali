.class public Lcom/aide/common/KeyStrokeEditText;
.super Landroid/widget/EditText;


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
.field private FH:Lcom/aide/common/u;
    .annotation runtime Labcd/ru;
        field = -0x2c68545c9e728413L
    .end annotation
.end field

.field private Hw:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/ru;
        field = 0x596c2431de333f94L
    .end annotation
.end field

.field private v5:Lcom/aide/common/KeyStrokeDetector$a;
    .annotation runtime Labcd/ru;
        field = 0x56525b855c4e820L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x2510a776da237c6bL    # -1.0863958515119614E130

    const-class v0, Lcom/aide/common/KeyStrokeEditText;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x152ca69a93a363a0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x152ca69a93a363a0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/aide/common/w;

    invoke-direct {v0, p0}, Lcom/aide/common/w;-><init>(Lcom/aide/common/KeyStrokeEditText;)V

    iput-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/common/KeyStrokeEditText;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, 0x72b435d0fbec8363L    # 3.4499082055217364E244

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x72b435d0fbec8363L    # 3.4499082055217364E244

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/aide/common/w;

    invoke-direct {v0, p0}, Lcom/aide/common/w;-><init>(Lcom/aide/common/KeyStrokeEditText;)V

    iput-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/common/KeyStrokeEditText;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, -0x94fb1f098a57ac0L    # -5.13422573186741E263

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x94fb1f098a57ac0L    # -5.13422573186741E263

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/aide/common/w;

    invoke-direct {v0, p0}, Lcom/aide/common/w;-><init>(Lcom/aide/common/KeyStrokeEditText;)V

    iput-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-direct {p0}, Lcom/aide/common/KeyStrokeEditText;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x129db3213feb71bcL
    .end annotation

    const-wide v2, 0x138a36bcaefdc633L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x138a36bcaefdc633L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->Hw:Lcom/aide/common/KeyStrokeDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public getKeyStroke()Lcom/aide/common/u;
    .registers 5

    const-wide v2, -0x39e9c7a7b69692e4L    # -4.401143670033651E29

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39e9c7a7b69692e4L    # -4.401143670033651E29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->FH:Lcom/aide/common/u;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 5

    const-wide v2, 0x567016eec84eddd0L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x567016eec84eddd0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    const-wide v2, 0x12739814bb0348bbL    # 8.672968073596799E-220

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12739814bb0348bbL    # 8.672968073596799E-220

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x40000001    # 2.0000002f

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v0, 0x20091

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_0
    iget-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->Hw:Lcom/aide/common/KeyStrokeDetector;

    iget-object v1, p0, Lcom/aide/common/KeyStrokeEditText;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/view/View;Lcom/aide/common/KeyStrokeDetector$a;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x40000001    # 2.0000002f

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    const-wide v2, 0x4f26db18185105dL

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x4f26db18185105dL

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->Hw:Lcom/aide/common/KeyStrokeDetector;

    iget-object v1, p0, Lcom/aide/common/KeyStrokeEditText;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    const-wide v2, -0x114a90be1d299500L    # -1.98349969931411E225

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x114a90be1d299500L    # -1.98349969931411E225

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/KeyStrokeEditText;->Hw:Lcom/aide/common/KeyStrokeDetector;

    iget-object v1, p0, Lcom/aide/common/KeyStrokeEditText;->v5:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public setKeyStroke(Lcom/aide/common/u;)V
    .registers 6

    const-wide v2, 0x12bb5e0e49b68e00L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeEditText;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12bb5e0e49b68e00L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/common/KeyStrokeEditText;->FH:Lcom/aide/common/u;

    invoke-virtual {p1}, Lcom/aide/common/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeEditText;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
