.class Lcom/aide/ui/activities/GotoBrowserActivity$a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/activities/GotoBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/engine/SourceEntity;",
        ">;"
    }
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
.field final FH:Lcom/aide/ui/activities/GotoBrowserActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/activities/GotoBrowserActivity$a;

    const-wide v1, -0x24d385a1ad5c824bL  # -1.579201848127731E131

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/activities/GotoBrowserActivity;Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xfd46c11a7c93371L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x508ae1acbd73431L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/ui/activities/GotoBrowserActivity$a;->FH:Lcom/aide/ui/activities/GotoBrowserActivity;

    const v0, 0x7f0a0021

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity$a;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x508ae1acbd73431L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x3f23854e25e1a99L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/GotoBrowserActivity$a;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x12d0188d420e1515L  # -8.798594571842928E217

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    if-nez p2, :cond_27

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, p2

    :goto_28
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SourceEntity;

    const v3, 0x7f0800c7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/aide/ui/activities/z;->j6:[I

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_87

    const/4 v5, 0x2

    if-eq v4, v5, :cond_73

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6c

    const/4 v5, 0x4

    if-eq v4, v5, :cond_60

    const/4 v5, 0x5

    if-eq v4, v5, :cond_59

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_59
    const v4, 0x7f0700f0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_60
    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_6c
    const v4, 0x7f0700ee

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_73
    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->XL()Z

    move-result v4

    if-eqz v4, :cond_80

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_80
    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_87
    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->XL()Z

    move-result v4

    if-eqz v4, :cond_94

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    :cond_94
    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9a
    const v3, 0x7f0800c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aide/ui/activities/GotoBrowserActivity$a;->FH:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-static {v4, v2}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;Lcom/aide/engine/SourceEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0800c6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aide/ui/activities/GotoBrowserActivity$a;->FH:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-static {v4, v2}, Lcom/aide/ui/activities/GotoBrowserActivity;->DW(Lcom/aide/ui/activities/GotoBrowserActivity;Lcom/aide/engine/SourceEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0800c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->VH()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_cc

    goto :goto_ce

    :cond_cc
    const/16 v0, 0x8

    :goto_ce
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_db

    new-instance v0, Lcom/aide/ui/activities/A;

    invoke-direct {v0, p0, v2}, Lcom/aide/ui/activities/A;-><init>(Lcom/aide/ui/activities/GotoBrowserActivity$a;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_db
    .catchall {:try_start_0 .. :try_end_db} :catchall_dc

    :cond_db
    return-object v1

    :catchall_dc
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/GotoBrowserActivity$a;->DW:Z

    if-eqz v1, :cond_f2

    const-wide v2, -0x12d0188d420e1515L  # -8.798594571842928E217

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f2
    throw v0
.end method
