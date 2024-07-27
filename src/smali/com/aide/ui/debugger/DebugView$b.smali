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
        "Lcom/aide/common/x",
        "<",
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
    .registers 4

    const-wide v2, 0x9beec57c26d10e1L

    const-class v0, Lcom/aide/ui/debugger/DebugView$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/debugger/DebugView;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x3947f185d4fc735L
    .end annotation

    const-wide v4, 0x160d7451e59bf060L    # 1.878895963367315E-202

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x160d7451e59bf060L    # 1.878895963367315E-202

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-direct {p0}, Lcom/aide/common/x;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/DebugView$b;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/debugger/DebugView;Lcom/aide/ui/debugger/b;)V
    .registers 10

    const-wide v2, 0xd4ad24a31faf163L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd4ad24a31faf163L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/debugger/DebugView$b;-><init>(Lcom/aide/ui/debugger/DebugView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->v5:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x19851ad73ad2b6f9L
    .end annotation

    const-wide v8, 0x5ebf5959e6ca3d4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x5ebf5959e6ca3d4L

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aide/common/x;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/debugger/DebugView$a;

    const v1, 0x7f08003b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080039

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    iget-object v4, v3, Lcom/aide/ui/debugger/Debugger$c;->FH:Ljava/lang/String;

    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    iget-object v3, v3, Lcom/aide/ui/debugger/Debugger$c;->Hw:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    iget-object v6, v6, Lcom/aide/ui/debugger/Debugger$c;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v6, " "

    const-string v7, "\u00a0"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v1, v4, v3, v6}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    iget-object v1, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v1}, Lcom/aide/ui/debugger/Debugger$c;->FH()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f070010

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_2
    return-object v5

    :cond_2
    move-object v5, p2

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v1}, Lcom/aide/ui/debugger/Debugger$c;->Hw()Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f0700ee

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/debugger/DebugView$b;->v5:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->FH:Lcom/aide/ui/debugger/Debugger$c;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$c;->DW()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f07000c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    const v0, 0x7f07000b

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_8
    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    iget-object v3, v3, Lcom/aide/ui/debugger/Debugger$b;->Hw:Ljava/lang/String;

    const-string v4, " "

    const-string v6, "\u00a0"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v1, v4, v3, v6}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->v5:Lcom/aide/ui/debugger/Debugger$b;

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger$b;->j6()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f07000f

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_9
    const v0, 0x7f07000d

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    iget-object v3, v3, Lcom/aide/ui/debugger/Debugger$a;->Hw:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->Hw:Lcom/aide/ui/debugger/Debugger$a;

    iget v0, v0, Lcom/aide/ui/debugger/Debugger$a;->v5:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    const-string v6, "\u00a0"

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f050008

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v1, v3, v0, v4}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    const v0, 0x7f070033

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/aide/ui/debugger/DebugView$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, p0, Lcom/aide/ui/debugger/DebugView$b;->Zo:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f050008

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v1, v3, v0, v4}, Lcom/aide/ui/debugger/DebugView;->j6(Landroid/widget/TextView;III)V

    const v0, 0x7f070033

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
