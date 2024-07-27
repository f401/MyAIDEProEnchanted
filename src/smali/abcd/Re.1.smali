.class Labcd/Re;
.super Landroid/text/method/CharacterPickerDialog;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Se;->j6(Landroid/view/View;)V
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
.field final FH:Labcd/Se;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Re;

    const-wide v2, -0xc37c6527ab94865L    # -5.42020431743778E249

    const-wide v4, 0x2d3649e17f877414L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Se;Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .registers 13

    iput-object p1, p0, Labcd/Re;->FH:Labcd/Se;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    return-void
.end method

.method private j6(Landroid/view/View;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2979d99ef670270bL
    .end annotation

    const-wide v8, -0x568157bf3e8a5c9L

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Re;->j6:Z

    if-eqz v2, :cond_0

    const-wide v6, -0x568157bf3e8a5c9L

    invoke-static {v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_3

    iget-object v5, p0, Labcd/Re;->FH:Labcd/Se;

    invoke-static {v5}, Labcd/Se;->j6(Labcd/Se;)Landroid/view/KeyCharacterMap;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Labcd/Re;->FH:Labcd/Se;

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    invoke-static {v5, v6}, Labcd/Se;->j6(Labcd/Se;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;

    :cond_1
    iget-object v5, p0, Labcd/Re;->FH:Labcd/Se;

    invoke-static {v5}, Labcd/Se;->j6(Labcd/Se;)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4

    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    :goto_1
    return v2

    :cond_3
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Re;->DW:Z

    if-eqz v3, :cond_4

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2e7c5b516e04969L
    .end annotation

    const-wide v2, -0x27454128370cf92dL    # -2.697793467652968E119

    :try_start_0
    sget-boolean v0, Labcd/Re;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27454128370cf92dL    # -2.697793467652968E119

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Re;->j6(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Re;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x424dd3bb989d2010L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Re;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v0, 0x839edf3964d1c10L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Labcd/Re;->j6(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/text/method/CharacterPickerDialog;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Re;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x839edf3964d1c10L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
