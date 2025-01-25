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
    .registers 5

    const-wide v0, -0xc37c6527ab94865L  # -5.42020431743778E249

    const-wide v2, 0x2d3649e17f877414L

    const-class v4, Labcd/Re;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2979d99ef670270bL
    .end annotation

    const-wide v0, -0x568157bf3e8a5c9L

    :try_start_5
    sget-boolean v2, Labcd/Re;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Labcd/Re;->FH:Labcd/Se;

    invoke-static {v3}, Labcd/Se;->j6(Labcd/Se;)Landroid/view/KeyCharacterMap;

    move-result-object v3

    if-nez v3, :cond_30

    iget-object v3, p0, Labcd/Re;->FH:Labcd/Se;

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    invoke-static {v3, v6}, Labcd/Se;->j6(Labcd/Se;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;

    :cond_30
    iget-object v3, p0, Labcd/Re;->FH:Labcd/Se;

    invoke-static {v3}, Labcd/Se;->j6(Labcd/Se;)Landroid/view/KeyCharacterMap;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_4f

    array-length v3, v2
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_54

    :goto_41
    if-ge v5, v3, :cond_4f

    aget-object v6, v2, v5

    :try_start_45
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_4f
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_54

    return v4

    :cond_53
    return v5

    :catchall_54
    move-exception v2

    sget-boolean v3, Labcd/Re;->DW:Z

    if-eqz v3, :cond_5c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v2

    :goto_5e
    goto :goto_5d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2e7c5b516e04969L
    .end annotation

    const-wide v0, -0x27454128370cf92dL  # -2.697793467652968E119

    :try_start_5
    sget-boolean v2, Labcd/Re;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Re;->j6(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onClick(Landroid/view/View;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Re;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x424dd3bb989d2010L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Re;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x839edf3964d1c10L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-direct {p0, p2}, Labcd/Re;->j6(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-super/range {p0 .. p5}, Landroid/text/method/CharacterPickerDialog;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Labcd/Re;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x839edf3964d1c10L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method
