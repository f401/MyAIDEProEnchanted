.class Lcom/aide/ui/debugger/DebugView$b;
.super Lcom/aide/common/x;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/debugger/DebugView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aide/common/x<",
        "Lcom/aide/ui/debugger/DebugView$a;",
        ">;"
    }
.end annotation


# static fields
.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/debugger/DebugView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/debugger/DebugView$b;

    const-wide v1, 0x9beec57c26d10e1L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/debugger/DebugView;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x3947f185d4fc735L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x160d7451e59bf060L  # 1.878895963367315E-202

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/debugger/DebugView$b;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-direct {p0}, Lcom/aide/common/x;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/debugger/DebugView$b;->v5:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/debugger/DebugView;Lcom/aide/ui/debugger/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xd4ad24a31faf163L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/DebugView$b;-><init>(Lcom/aide/ui/debugger/DebugView;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/DebugView$b;->v5:Z

    if-eqz v1, :cond_22

    const-wide v2, 0xd4ad24a31faf163L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x19851ad73ad2b6f9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5ebf5959e6ca3d4L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    if-nez p2, :cond_29

    iget-object v1, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, p2

    :goto_2a
    invoke-virtual {p0, p1}, Lcom/aide/common/x;->j6(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/debugger/DebugView$a;

    const v3, 0x7f08003b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080039

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_170

    const-string v6, "\u00a0"

    const-string v7, " "

    const v8, 0x7f050008

    if-eqz v5, :cond_cb

    :try_start_4d
    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    iget-object v0, v0, Lcom/aide/ui/debugger/Debugger$c;->FH:Ljava/lang/String;

    iget-object v5, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    iget-object v5, v5, Lcom/aide/ui/debugger/Debugger$c;->Hw:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_74

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    iget-object v9, v9, Lcom/aide/ui/debugger/Debugger$c;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_75

    :cond_74
    move-object v5, v0

    :goto_75
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v0, v5, v6}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$c;->FH()Z

    move-result v0

    if-eqz v0, :cond_a3

    const v0, 0x7f070010

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16f

    :cond_a3
    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$c;->Hw()Z

    move-result v0

    if-eqz v0, :cond_b3

    const v0, 0x7f0700ee

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16f

    :cond_b3
    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$c;->DW()Z

    move-result v0

    if-eqz v0, :cond_c3

    const v0, 0x7f07000c

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16f

    :cond_c3
    const v0, 0x7f07000b

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16f

    :cond_cb
    iget-object v5, v2, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    if-eqz v5, :cond_10b

    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    iget-object v0, v0, Lcom/aide/ui/debugger/Debugger$b;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v6, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v5, v0, v6}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$b;->j6()Z

    move-result v0

    if-eqz v0, :cond_104

    const v0, 0x7f07000f

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16f

    :cond_104
    const v0, 0x7f07000d

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16f

    :cond_10b
    iget-object v5, v2, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    const v9, 0x7f070033

    if-eqz v5, :cond_150

    iget-object v0, v2, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    iget-object v0, v0, Lcom/aide/ui/debugger/Debugger$a;->Hw:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    iget v2, v2, Lcom/aide/ui/debugger/Debugger$a;->v5:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v3, v0, v2, v5}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    :goto_14c
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16f

    :cond_150
    iget-object v5, v2, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;

    if-eqz v5, :cond_16f

    iget-object v5, v2, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v2, v2, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v3, v0, v2, v5}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V
    :try_end_16e
    .catchall {:try_start_4d .. :try_end_16e} :catchall_170

    goto :goto_14c

    :cond_16f
    :goto_16f
    return-object v1

    :catchall_170
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/DebugView$b;->v5:Z

    if-eqz v1, :cond_186

    const-wide v2, 0x5ebf5959e6ca3d4L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_186
    goto :goto_188

    :goto_187
    throw v0

    :goto_188
    goto :goto_187
.end method
