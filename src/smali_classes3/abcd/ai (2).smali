.class Labcd/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/di;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1535d7c35d1504b4L
    .end annotation
.end field

.field final Hw:Landroid/app/AlertDialog;

.field final Zo:Labcd/di;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x41623341de9b130L

    const-wide v2, -0x2408959730409c71L  # -1.0637131093070444E135

    const-class v4, Labcd/ai;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/di;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Labcd/ai;->Zo:Labcd/di;

    iput-object p2, p0, Labcd/ai;->Hw:Landroid/app/AlertDialog;

    iput-object p3, p0, Labcd/ai;->v5:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x12b3585f9bea38L
    .end annotation

    const-string v0, ""

    const-wide v1, 0x280cb1381b0a21L

    :try_start_7
    sget-boolean v3, Labcd/ai;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_4c

    :cond_e
    :try_start_e
    new-instance v3, Labcd/HJ;

    invoke-direct {v3, p1}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    return-object v0

    :cond_1a
    const-string v4, "/.git"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    :cond_2e
    const-string v4, ".git"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_40
    :goto_40
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_49
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_49} :catch_4a
    .catchall {:try_start_e .. :try_end_49} :catchall_4c

    return-object p1

    :catch_4a
    move-exception p1

    return-object v0

    :catchall_4c
    move-exception v0

    sget-boolean v3, Labcd/ai;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x4d3be2e6bc16fb54L
    .end annotation

    const-wide v0, -0x5cba4111fc775593L  # -9.130357495704434E-139

    :try_start_5
    sget-boolean v2, Labcd/ai;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ai;->Zo:Labcd/di;

    iget-object v3, p0, Labcd/ai;->Hw:Landroid/app/AlertDialog;

    invoke-static {v2, v3}, Labcd/di;->DW(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Labcd/ai;->Zo:Labcd/di;

    iget-object v3, p0, Labcd/ai;->Hw:Landroid/app/AlertDialog;

    invoke-static {v2, v3}, Labcd/di;->DW(Labcd/di;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/ai;->FH:Ljava/lang/String;

    invoke-direct {p0, v3}, Labcd/ai;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/ai;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v3

    iget-object v4, p0, Labcd/ai;->Zo:Labcd/di;

    invoke-static {v4}, Labcd/di;->j6(Labcd/di;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_78

    const/4 v3, 0x2

    :goto_4b
    const/16 v4, 0x14

    if-gt v3, v4, :cond_78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v5

    iget-object v6, p0, Labcd/ai;->Zo:Labcd/di;

    invoke-static {v6}, Labcd/di;->j6(Labcd/di;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    move-object v2, v4

    goto :goto_78

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_78
    :goto_78
    iget-object v3, p0, Labcd/ai;->v5:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7d
    iget-object v2, p0, Labcd/ai;->Zo:Labcd/di;

    iget-object v3, p0, Labcd/ai;->Hw:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Labcd/di;->j6(Landroid/app/AlertDialog;)V
    :try_end_84
    .catchall {:try_start_5 .. :try_end_84} :catchall_85

    return-void

    :catchall_85
    move-exception v2

    sget-boolean v3, Labcd/ai;->DW:Z

    if-eqz v3, :cond_8d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v2

    :goto_8f
    goto :goto_8e
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3b1d8969dedd114bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ai;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x75aa621a52e370L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/ai;->FH:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/ai;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x75aa621a52e370L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xfe32c5ed7722b37L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ai;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x20fc2b1e3a450f20L  # -5.071599611013833E149

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/ai;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x20fc2b1e3a450f20L  # -5.071599611013833E149

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method
